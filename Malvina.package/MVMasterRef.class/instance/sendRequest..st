connection
sendRequest: aRequest

	^ remotePeer createSyncRequestContext sendRequest: aRequest