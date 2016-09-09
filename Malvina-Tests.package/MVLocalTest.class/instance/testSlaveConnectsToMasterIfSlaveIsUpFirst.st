as yet unclassified
testSlaveConnectsToMasterIfSlaveIsUpFirst

	node := MVNode new.
	node addMasterAddress: (TCPAddress localAt: 59261).
	node start.

	master := MVMaster new.
	master startOnPort: 59261.

	1 second wait.
	self assert: node isConnected 