as yet unclassified
testSlaveConnectsToMasterIfSlaveIsUpFirst

	self with: #slave do: [ | node |
		"Slave up"
		2 seconds wait.
		node := MVNode new.
		node addMasterAddress: (TCPAddress localAt: 59261).
		node start.
		self announce: #slaveUp.
		self waitFor: #serverStarted.
		1 second wait.
		self assert: node isConnected.
	].

	self with: #master do: [ | node |
		2 seconds wait.
		self waitFor: #slaveUp.
		"Master up"
		node := MVMasterNode new.
		node startOnPort: 59261.		
		self announce: #serverStarted.
	].