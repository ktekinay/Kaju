# README

A Xojo module and Admin app to enable self-update in Xojo apps.

## Specifications

### General Information

Kaju is a pull system where the client gets information from known url. It is designed as a series of Xojo classes in a central module.

The JSON file with update information can be created by the admin app and placed in a folder that indicates the app name and version, or whatever other identification that's appropriate for an update line, and will create a unique URL. For example, the resulting url might be `http://www.example.com/updates/myapp5/index.html` for updates related to version 5, and `http://www.example.com/updates/myapp6/index.html` for the version 6 line. The update information in version 5 can include a link to the version 6 binary and set the "Requires Payment" flag to true so version 5 users can know that there is a new version that they will be asked to pay for. The user can still choose to ignore that and continue updating version 5 instead.

We recommend that the latest version of any line use a static url. That way, if the user chooses to update to new, paid version, they will always get the latest.

The JSON will contain all information about every available version for that line. For example, there might be a release 6.0.1, but a beta 6.1b4 and an alpha 6.2a8. The client will get that information and will determine which versions are appropriate to present to the user.

The client will have the server's public RSA key. The server will use that key to sign the JSON and provide the signature for the binary. Each line should have its own private key.

### JSON Specs

The JSON will contains the following fields for each version.

	AppName                        (string)
	Version                        (string)
	MinimumRequiredVersion         (string)
	RequiresPayment                (bool)
	ReleaseNotes                   (string)
	MacBinary                      (dictionary)
		URL                        (string)
		Signature                  (string)
	WindowsBinary                  (dictionary)
		URL                        (string)
		Hash                       (string)
	LinuxBinary                    (dictionary)
		URL                        (string)
		Hash                       (string)
	ImageURL                       (string)
	UseTransparency                (bool, default = true)

A sample JSON that will be returned by the server:

	[
		{
			"AppName" : "My App" ,
			"Version" : "6.0.2",
			"MinimumRequiredVersion" : "6.0.1" ,
			"ReleaseNotes" : "The release notes" ,
			"MacBinary" :
				{
					"URL" : "http://www.site.com/download_path_Mac" ,
					"Signature" : "ABCDEF"
				} ,
			"WindowsBinary" :
				{
					"URL" : "http://www.site.com/download_path_Windows" ,
					"Signature" : "123456"
				} ,
			"LinuxBinary" :
				{
					"URL" : "http://www.site.com/download_path_Linux" ,
					"Hash" : "ABC123"
				} ,
			"ImageURL" : "http://www.site.com/image.png" ,
			"UseTransparency" : true
		} ,
		{
			"AppName" : "My App" ,
			"Version" : "6.1b4" ,
			"ReleaseNotes" : "The beta release notes" ,
			"MacBinary" : 
				{
					"URL" : "http://www.site.com/other_download_path" ,
					"Hash" :"0123456"
				} 
		}
	] 

The file will be prefixed by the signature of the JSON string in hex format. The entire file would look like this:

	KAJU ABCDEF
	[<the JSON data>]

A missing or blank url means that the update does not apply to that platform. A missing boolean flag is assumed to be false.

It will be up to the implementer to enforce the "MinimumRequiredVersion" property on the client end. This specifies the minimum required version that a client *must* have. For example, if there v.6.0.1 is a critical release and v.6.0 should not be used anymore, that field would contain "6.0.1". Someone using v.6.0 should be forced to quit if they choose not to update, but someone using v.6.0.2 would not be.

## Special Actions

You only need to add one property to your App class, `UpdateInitiater As Kaju.UpdateInitiater`. Kaju expects to find that and will handle it for you.

The only special code you'll need is in the CancelClose event of any window where the clase is actually being cancelled (the event will return `True`). In those cases, you must call `Kaju.CancelUpdate`. (It doesn't matter if there is an update scheduled at the time.) This will prevent an update from happening if the user quits later without choosing Quit & Install again.

## How To Use It

Create a new Kaju.UpdateChecker object and fill in its properties. At the very least, you have to provide a FolderItem for a folder where Kaju can save its preferences, one that is unique to your app, the ServerPublicRSAKey (more on this later), and the URL where it will get its update information.

Call Execute. That's it. Kaju will handle everything else by going to the UpdateURL to see if there are any updates available for that version of the app and ask the user about them. If the user chooses to update, the class will download and verify the binary, then offer the user the opportunity to Quit & Install or Cancel. If they choose to install, Quit will be called.

Since none of this is modal, the user can continue to use your app with the update window waiting in the background. If they do choose to install, the update window will be sent to the back so it will be closed last.

To discover what UpdateChecker found, you can check the Result method after calling Execute. It returns a value from the `Kaju.UpdateChecker.ResultType` enum.  

### Required Updates

If you set up a minimim required version in your update information, Kaju may find that a particular update is "required". For example, if the user is using v.1.0 and you've discovered a bug that necessitates an update to at least v.1.1, you would set that as the minimum required version. In the future, even as you release v.1.2, 1.3, etc, you would leave the minimum required as v.1.1 so Kaju knows to force the users of 1.0 to update.

After calling `Kaju.UpdateChecker.Execute`, The `Result` method will tell you if a required update was found. In that case, you should take special action to make sure that your user cannot use the app until they update. To help, there is the `Kaju.UpdateChecker.QuitOnCancelIfRequired` property that is `True` by default. If the user tries to cancel a required update, the app will quit.

### What Else?

There are other features of `Kaju.UpdateChecker` that may be helpful. One is controlling the interface that class will present to the user through the `AllowedInteraction` property. You can prevent Kaju from showing an error dialog, the update window, or both. Use the constants within Kaju.UpdateChecker to set this value. Values can be added for better control (although, as of this writing, there are just the two values).

You can control the types of updates a user may see by setting `Kaju.UpdateChecker.AllowedStage`. The stage codes are the same as those found in the `App` class, do setting it to `App.Final` means that the user will not see any development, alpha, or beta releases.

### Images

You can set a background image for the window in two places. Within the app, you may set `Kaju.UpdateChecker.DefaultImage` for any updates that do not specify a specific image. In the Admin app, you may specify a URL to an image for a particular version. For example, if the default image is your app's logo, but a beta should have "beta" stamped across it, you can do that.

You can also set `Kaju.UpdateChecker.DefaultUseTransparency` or set "Use Transparency for an image provided through the Admin app. Transparency is set to 50% when this is true.

An image will cover the entire window without cropping or scaling so provide the image accordingly.

## Step By Step

*  Run the included Admin app and save a new document with an appropriate name, something like "MyApp v.1.kaju". You don't have to add any updates at this time.
* Copy the RSA public key with the appropriate button. A key pair is generated every time a new document is created and it is this key that will ensure that your app is getting legitimate, uncorrupted update information. **Do not lose this file after releasing your app!** If you do, users of older versions will no longer be able to update.
* Open you app and add to the App instance the property `UpdateInitiater As Kaju.UpdateInitiater`. You do not need to do anything more with this property.
* In an appropriate place, add code that looks something like this:

		dim updater as new Kaju.UpdateChecker( myAppPrefFolder )
		updater.ServerPublicRSAKey = "12345..." // The key you copied from the Admin app
		updater.UpdateURL = "http://www...." // Where the update info is posted
		
		updater.Execute

At a bare minimum, that's it.

## The Admin App

The included Admin app makes it easy to set up your update file. Start it up and use the "+" at the bottom, left to add a version. Fill in the information for the release. 

When you're done, save the file, then export the data to a file. It is this file that you will post to your web site and the final URL should match the URL you included within your app.

### Some Details

Add an entry for each *current* version of your app. You do not need a history, and you can update entries to the latest. Remember, a user wants to update to the latest, they do not need to see every intermediate update (unless there is a reason that you want that).

The release notes are done in HTML and some simple tools are provided for making that a bit easier. You can see a preview of the release notes as a you type and use the Preview button to see how Kaju will present the update window under variou circumstances. The HTML can be as simple or as complex as you'd like.

### Links In Release Notes

Links in the release notes will be ignored *unless* you include `target="_blank"` as part of the url. For example, `<a href="http://www.example.com" target="_blank">my site</a>` will force the link to open in the user's browser.

### Binaries

Your compiled apps for each platform must be zipped and named appropriately. For the Mac, zip the application. For the other platforms, zip the folder that contains the executable and supporting folders.

For each version, check each platform to which it applies, provide the URL where that binary will be found, then drop each binary onto the appropriate field to calculate its hash.

For Windows and Linux, you must also provide the exact name of the executable. If your app is called "My Great App", the Linux executable name will be "My Great App" and the Windows name will be "My Great App.exe".



## Who Did This?

This project was designed and implemented by Kem Tekinay (ktekinay at mactechnologies.com), Jeremy Cowgar (jeremy at cowgar.com), and Luke Cowgar (lcowgar at advancedpricing.com).


## Other Stuff

### What is this repository for?

* Quick summary
* Version
* [Learn Markdown](https://bitbucket.org/tutorials/markdowndemo)

### How do I get set up?

* Summary of set up
* Configuration
* Dependencies
* Database configuration
* How to run tests
* Deployment instructions

### Contribution guidelines

* Writing tests
* Code review
* Other guidelines

### Who do I talk to?

* Repo owner or admin
* Other community or team contact