as yet unclassified
testSlaveConnectsToMasterIfMasterIsUpBefore

	master := MVMasterNode new.
	master startOnPort: 59261.
	
	node := MVNode new.
	node addMasterAddress: (TCPAddress localAt: 59261).
	node start.

	1 second wait.
	self assert: node isConnected 