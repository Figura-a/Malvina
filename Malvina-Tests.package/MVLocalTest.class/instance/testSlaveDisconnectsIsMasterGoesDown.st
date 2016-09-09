as yet unclassified
testSlaveDisconnectsIsMasterGoesDown

	master := MVMaster new.
	master startOnPort: 59261.

	node := MVNode new.
	node addMasterAddress: (TCPAddress localAt: 59261).
	node start.

	master stop.
	1 second wait.
	
	self deny: node isConnected