# README

A Xojo module and Admin app to enable self-updating Xojo apps.

## General Information

Kaju is a pull system where the client application gets information from a known URL. It is designed as a series of Xojo classes in a central module and a Window. It is meant to be a single, turnkey solution with minimal involvement by you. In other words, set it up, write the code to call it, then forget about it.

## How To Use It

### Installation

Open the included Admin App or Test App, copy the Kaju Classes folder, then paste it into your project.

### Special Actions

You need to add one property to your App class, `UpdateInitiater As Kaju.UpdateInitiater`. Kaju expects to find that and will handle it for you.

The only special code you'll need is in the `CancelClose` event of any window where the close is actually being cancelled, i.e., where you have the event return `True`. In those cases, you must call `Kaju.CancelUpdate`. (It doesn't matter if there is an update scheduled at the time.) This will prevent an update from happening if the user quits later without choosing Quit & Install again. That code should look something like this:

```Xojo
Event CancelClose(appQuitting As Boolean) As Boolean
	// You've determined that you need to cancel the
	// close, so...
	if appQuitting then // This "if" is not strictly necessary
		Kaju.CancelUpdate
	end if
	return true
End Event
```

### Implementation

Create a new `Kaju.UpdateChecker` instance and fill in its properties. In the `Constructor`, you have to provide a FolderItem for a folder where Kaju can save its preferences, one that is unique to your app. At the least, you must also set the `ServerPublicRSAKey` (more on this later) and the `UpdateURL` where it will get its update information. If that URL points to a secure site, set `Secure` to `True`.

Call the `Execute` method of the `Kaju.UpdateChecker`. That's it. Kaju will handle everything else by going to the `UpdateURL` to see if there are any updates available for that version of the app, then ask the user about them. If the user chooses to update, the class will download and verify the binary, then offer the user the opportunity to Quit & Install or Cancel. If they choose to install, Quit will be called.

Since none of this is modal, the user can continue to use your app with the update window waiting in the background. If they do choose to install, the update window will be sent to the back so it will be closed last.

To discover what `UpdateChecker` found, you can check the `Result` method after calling `Execute`. It returns a value from the `Kaju.UpdateChecker.ResultType` enum. 

### Minimum OS

Kaju will work the same way on Mac, Windows, and Linux. All recent versions of MacOS and Linux should be supported. Windows Vista and later are supported.

If Kaju cannot find the tools it needs, the `Result` will be set to `UnsupportedOS` after you call `Execute`.

## What Else?

### Required Updates

If you set up a minimim required version in your update information, Kaju may find that a particular update is "required". For example, if the user is using v.1.0 and you've discovered a bug that necessitates an update to at least v.1.1, you would set that as the minimum required version. In the future, even as you release v.1.2, 1.3, etc, you would leave the minimum required as v.1.1 so Kaju knows to force the users of 1.0 to update.

After calling `Kaju.UpdateChecker.Execute`, The `Result` method will tell you if a required update was found. In that case, it's up to you to take special action to make sure that your cannot be used until it is updated. To help, there is the `Kaju.UpdateChecker.QuitOnCancelIfRequired` property that is `True` by default. If the user tries to cancel a required update, the app will quit.

### Other Features

There are other features of `Kaju.UpdateChecker` that may be helpful. One is controlling the interface that class will present to the user through the `AllowedInteraction` property. You can prevent Kaju from showing an error dialog, the update window, or both. Use the constants within `Kaju.UpdateChecker` to set this value. Values can be added for better control (although, as of this writing, there are just the two values).

You can control the types of updates a user may see by setting `Kaju.UpdateChecker.AllowedStage`. The stage codes are the same as those found in the `App` class, so setting that property to `App.Final` means that the user will not see any development, alpha, or beta releases.

If an update was found, the update window will have opened. You can check through the `UpdateWindowIsOpen` property at any time.

The user can choose to ignore certain versions as long as they are not marked as required. You can set `HonorIgnored` to `False` to bypass that temporarily and present even ignored versions to your user, or you can clear the database of ignored versions entirely with the `ResetIgnored` method.

### One At A Time

You can create several instances of `Kaju.UpdateChecker` if you'd like, but only one update can run at any time. If an update is already in progress, `Execute` won't do anything and will let you know through the `Result`.

### Images

You can set a background image for the window in two places. Within the app, you may set `Kaju.UpdateChecker.DefaultImage` for any updates that do not specify a specific image. In the Admin app, you may specify a URL to an image for a particular version. For example, if the default image is your app's logo, but a beta should have "beta" stamped across it, you can do that.

You can also set `Kaju.UpdateChecker.DefaultUseTransparency` or set "Use Transparency" for an image provided through the Admin app. Transparency is set to 50% when `True`.

An image will cover the entire window without cropping or scaling starting at the upper, left corner. Accordingly, you can provide an entire background image or just an icon.

## Step By Step

* Copy the Kaju Classes folder into your project.
* Add to your App instance the property `UpdateInitiater As Kaju.UpdateInitiater`. You do not need to do anything more with this property.
* Run the Kaju Admin app through the included project and save a new document with an appropriate name, something like "MyApp v.1.kaju". You don't have to add any updates at this time.
* Copy the RSA public key with the appropriate button. A key pair is generated every time a new document is created and it is this key that will ensure that your app is getting legitimate, uncorrupted update information. **Do not lose this file after releasing your app!** If you do, users of older versions will no longer be able to update.
* In an appropriate place, add code that looks something like this:

```Xojo
dim updater as new Kaju.UpdateChecker( myAppPrefFolder )
updater.ServerPublicRSAKey = "12345..." // The key you copied from the Admin app
updater.UpdateURL = "http://www...." // Where the update info will be posted

updater.Execute
```

At a bare minimum, that's it.

## The Admin App

The included Admin app makes it easy to set up your update file. Start it up and use the "+" at the bottom, left to add a version. Fill in the information for the release. 

When you're done, save the file, then export the HTML data. It is this exported file that you will post to your web site and the final URL should match the URL you included within your app.

### Some Details

Add an entry for each *current* version of your app. You do not need a history since a user wants to update to the latest and does not need to see every intermediate version (unless there is a reason that you want that).

The release notes are created in HTML and some simple tools are provided for making that a bit easier. You can see a preview of the release notes as a you type and use the Preview button to see how Kaju will present the update window under various circumstances. The HTML can be as simple or as complex as you'd like.

### Links In Release Notes

Links in the release notes will be ignored *unless* you include `target="_blank"` as part of the URL. For example, `<a href="http://www.example.com" target="_blank">my site</a>` will force the link to open in the user's browser.

### Binaries

Your compiled apps for each platform must be zipped and named appropriately. For the Mac, zip the application. For the other platforms, zip the folder that contains the executable and supporting folders.

For each version in your admin file, check each platform to which it applies, provide the URL where that binary will be found, then drop each binary onto the appropriate field to calculate its hash.

For Windows and Linux, you must also provide the exact name of the executable. If your app is called "My Great App", the Linux executable name will be "My Great App" and the Windows name will be "My Great App.exe".

Put these zip files on your web site according to its URL.

## JSON Specs

The update information that you will post will be a JSON file that is generated by the Admin app as an HTML file. We recommend that each version line gets its own folder on your web server.

The JSON will contain these fields for each version.

	AppName                        (string)
	Version                        (string)
	MinimumRequiredVersion         (string)
	RequiresPayment                (bool)
	ReleaseNotes                   (string)
	MacBinary                      (dictionary)
		URL                        (string)
		Signature                  (string)
	WindowsBinary                  (dictionary)
		ExecutableName
		URL                        (string)
		Hash                       (string)
	LinuxBinary                    (dictionary)
		ExecutableName
		URL                        (string)
		Hash                       (string)
	ImageURL                       (string)
	UseTransparency                (bool, default = true)

A sample JSON that will be returned by the server:

```json
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
				"ExecutableName" : "My App.exe" ,
				"URL" : "http://www.site.com/download_path_Windows" ,
				"Signature" : "123456"
			} ,
		"LinuxBinary" :
			{
				"ExecutableName" : "My App" ,
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
```

**NOTE**: The ExecutableName will be used by the updater scripts while the AppName is what will display in the updater window. These may be the same or different. Since the ExecutableName of the Mac app can be discovered, it is not needed for the Mac binary.

The file will be prefixed by the signature of the JSON string in hex format. The entire file would look something like this:

	KAJU ABCDEF
	[<the JSON data>]

If an update does not apply to a particular platform, it will be missing binary information for that platform and will be ignored.

The JSON will contain all information about every available version for that line. For example, there might be a release 6.0.1, but a beta 6.1b4 and an alpha 6.2a8. Kaju will download all of that information and determine which ones are appropriate to present as options to the user.

### "RequiresPayment" Flag

The "RequiresPayment" flag can be used to warn users of paid updates. For example, if they are on v.5.1 of your app, you can include information about the paid v.6.0. (We recommend that future 6.0 updates be in their own line, i.e., their own Kaju file.)

## General Recommendations

We recommend that the latest version of any line use a static URL. For example, even if your app is at version 5.5, name the zipped file something like "My_App_5_Mac.zip" and place it in the My_App/v5/ folder on your web server. When you release version 6, name it "My_App_6_Mac.zip" and put it in the My_App/v6/ folder on the server. That way, no matter when the user chooses to update, the same URL will always lead them to the latest version.

## The Classes

There is only one class (`Kaju.UpdateChecker`) and one method in the Kaju module (`CancelUpdate`) that you will need to deal with.

**Class:** `Kaju.UpdateChecker`

|Property|Type|Description|Required|
|:---|:---:|:---|---:|
|AllowedInteraction|UInt32|Determines what windows Kaju is allowed to display; Use the available constants||
|AllowedStage|Integer|What stage of updates the user may see (App.Final, App.Beta, App.Alpha, or App.Development)||
|DefaultImage|Picture|The background image that will be displayed in the window when an image is not provided by the update||
|DefaultUseTransparency|Boolean|If `True`, transparency will be set to 50%||
|HonorIgnored|Boolean|If `False`, the user will be presented with updates they previously set to "ignore"||
|QuitOnCancelIfRequired|Boolean|When `True` (default), a user who attempts to cancel a required update will quit the app||
|Secure|Boolean|Use a secure connection||
|ServerPublicRSAKey|String|The public key as provided by the Admin app|**yes**|
|UpdateURL|String|The URL where the update info will be found|**yes**|
|UpdateWindowIsOpen|Boolean|Read-only property to determine if the update window is currently open||

|Method|Description|
|:-----|:---------|
|Constructor(preferencesFolder As FolderItem)|Create the new instance around the given preferences folder|
|Execute|Start the update process|
|ResetIgnored|Reset the list of ignored updates|
|Result As ResultType|The result of the last Execute|

|Shared Method|Description|
|:---|:---|
|OSIsSupported As Boolean|Reports if the OS has the right tools installed|

**Module:** `Kaju`

|Method|Description|
|:---|:---|
|CancelUpdate|Cancels any pending update; use in your windows' CancelClose event|

There are other methods in the Kaju module that you might find useful but we are not documenting them.

## Contributions

Contributions to this project are welcome. Fork it to your own repo, then submit changes. However, be forewarned that only those changes that we deem universally useful will be included.

## Who Did This?

This project was designed and implemented by:

* Kem Tekinay (ktekinay at mactechnologies.com)
* Luke Cowgar (lcowgar at advancedpricing.com)
* Jeremy Cowgar (jeremy at cowgar.com)

