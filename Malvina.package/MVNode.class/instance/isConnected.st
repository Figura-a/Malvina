testing
isConnected
	
	^ masterRefs anySatisfy: [ :ref | ref isConnected ]