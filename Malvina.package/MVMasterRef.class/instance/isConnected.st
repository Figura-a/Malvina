testing
isConnected
	
	^ remotePeer isNil or: [ remotePeer isConnectedToRemotePeer ]