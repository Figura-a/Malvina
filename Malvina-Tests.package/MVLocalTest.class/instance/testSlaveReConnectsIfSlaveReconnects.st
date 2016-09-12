as yet unclassified
testSlaveReConnectsIfSlaveReconnects

	master := MVMasterNode new.
	master startOnPort: 59261.

	node := MVNode new.
	node addMasterAddress: (TCPAddress localAt: 59261).
	node start.

	node stop.
	2 second wait.
	
	node start.
	1 second wait.
	
	self assert: node isConnected