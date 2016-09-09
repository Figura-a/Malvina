testing
isConnected
	
	^ remotePeer notNil and: [ 
		"Ping to force connection"
		[remotePeer evaluate: [ true ]] on: Error do: [].
	
		remotePeer isConnected ]