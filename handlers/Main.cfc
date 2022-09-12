component extends="coldbox.system.EventHandler" {

	property name="diskService" inject="DiskService@cbfs";

	function index( event, rc, prc ) {
		var storage = diskService.defaultDisk();
		prc.files = storage.allFiles( directory="/" );
		event.setView( "main/index" );
	}

	function upload( event, rc, prc ) {
		var upload = fileUpload( destination=expandPath( "./"), fileField="myFile", onConflict="makeunique" );
		var uploadPath = expandPath( "./#upload.serverFile#" );
		diskService.defaultDisk().create(
			path=upload.serverFile,
			contents=fileReadBinary( uploadPath ) 
		);
		fileDelete( uploadPath )
		relocate( "main.index" );
	}

	/************************************** IMPLICIT ACTIONS *********************************************/

	function onAppInit( event, rc, prc ) {
	}

	function onRequestStart( event, rc, prc ) {
	}

	function onRequestEnd( event, rc, prc ) {
	}

	function onSessionStart( event, rc, prc ) {
	}

	function onSessionEnd( event, rc, prc ) {
		var sessionScope     = event.getValue( "sessionReference" );
		var applicationScope = event.getValue( "applicationReference" );
	}

	function onException( event, rc, prc ) {
		event.setHTTPHeader( statusCode = 500 );
		// Grab Exception From private request collection, placed by ColdBox Exception Handling
		var exception = prc.exception;
		// Place exception handler below:
	}

}
