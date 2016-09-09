connecting
acceptSlave: aRemoteSlave 
	
	| remotePeer |
	remotePeer := aRemoteSlave remotePeer.
	self addSlave: (MVRemoteSlaveNode withPeer: remotePeer)