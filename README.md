# README

A Xojo module and Admin app to enable self-update in Xojo apps.

## Specifications

### General Information

Kaju is a pull system where the client gets information from known url. It is designed as a series of Xojo classes.

The update JSON file will be created by the admin app and placed in a folder that indicates the app name and version, or whatever other identification that's appropriate for an update line, and will create a unique URL. For example, the resulting url might be `http://www.example.com/updates/myapp5/index.html` for updates related to version 5, and `http://www.example.com/updates/myapp6/index.html` for the version 6 line. The update information in version 5 can include a link to the version 6 binary and set the "Requires Payment" flag to true so version 5 users can know that there is a new version that they will be asked to pay for. The user can still choose to ignore that and continue updating version 5 instead.

We recommend that the latest version of any line use a static url. That way, if the user chooses to update to new, paid version, they will always get the latest.

The JSON will contain all information about every available version for that line. For example, there might be a release 6.0.1, but a beta 6.1b4 and an alpha 6.2a8. The client will get that information and will determine which versions are appropriate to present to the user.

The client will have the server's public RSA key. The server will use that key to sign the JSON and provide the signature for the binary. Each line should have its own private key.

### JSON Specs

The JSON will contains the following fields for each version.

	AppName              (string)
	Version              (string)
	IsRelease            (bool)
	IsRequired           (bool, only if Is Release)
	RequiresPayment      (bool)
	DisplayNotes         (string)
	MacBinary            (dictionary)
		URL              (string)
		Signature        (string)
	WindowsBinary        (dictionary)
		URL              (string)
		Signature        (string)
	LinuxBinary          (dictionary)
		URL              (string)
		Signature        (string)
	InfoURL              (string)
	ImageURL             (string)

A sample JSON that will be returned by the server:

	[
		{
			"AppName" : "My App" ,
			"Version" : "6.0.2",
			"IsRelease" : true ,
			"IsRequired" : false ,
			"DisplayNotes" : "The release notes" ,
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
					"Signature" : "ABC123"
				} ,
			"InfoURL" : "http://www.site.com/info"
		} ,
		{
			"AppName" : "My App" ,
			"Version" : "6.1b4" ,
			"IsRelease" : false ,
			"DisplayNotes" : "The beta release notes" ,
			"MacBinary" : 
				{
					"URL" : "http://www.site.com/other_download_path" ,
					"Signature" :"0123456"
				} 
		}
	] 

The file will be prefixed by the signature of the JSON string in hex format. The entire file would look like this:

	KAJU ABCDEF
	[<the JSON data>]

A missing or blank url means that the update does not apply to that platform. A missing boolean flag is assumed to be false.

The "Info URL" is a site that will provide more information about a particular update. For example, if you offer a paid upgrade from version 5 to version 6 and want to provide more information about the new version outside of what is provided in the release notes.

It will be up to the implementer to enforce the "Is Required" flag on the client end. Only the release version will have a flag since development versions are always optional.

## How To Use It

Create a new Kaju.UpdateChecker object and fill in its properties. [DEFINE THESE]

Call CheckForUpdates. This will go to the UpdateURL and see if there are any updates available and ask the user about them. If the user chooses to update, the class will download and verify the binary, then raise the `ReadyToInstall` event. Within that event, the consumer just needs to perform any cleanup and quit. The class will take care of the update and relaunch the new version of the app.

If the user declines an update marked as "IsRequired", the `RequiredUpdateDeclined` event will be raised and the consumer should act accordingly.

## Who Did This?

This project was designed and implemented by Kem Tekinay (ktekinay at mactechnologies.com) and Jeremy Cowgar (jeremy at cowgar.com).


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