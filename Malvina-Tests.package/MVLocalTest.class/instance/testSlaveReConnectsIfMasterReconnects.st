as yet unclassified
testSlaveReConnectsIfMasterReconnects

	master := MVMaster new.
	master startOnPort: 59261.

	node := MVNode new.
	node addMasterAddress: (TCPAddress localAt: 59261).
	node start.

	master stop.
	1 second wait.
	
	master startOnPort: 59261.
	1 second wait.
	
	self assert: node isConnected