as yet unclassified
testSlaveDisconnectsIsSlaveGoesDown

	master := MVMaster new.
	master startOnPort: 59261.

	node := MVNode new.
	node addMasterAddress: (TCPAddress localAt: 59261).
	node start.

	1 second wait.
	node stop.
	1 second wait.
	
	self deny: node isConnected