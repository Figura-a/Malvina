as yet unclassified
testSlaveConnectsToRemoteMaster

	self withImage: #master do: [
		MVMasterNode new start.
		self announce: #masterStarted.
	].
	self withImage: #slave do: [
		self waitFor: #masterStarted.
		MVSlaveNode new connectToMasterIn: (TCPAddress localAt: 8080).
		self announce: #slaveConnected.
	].
	self withImage: #master do: [
		self waitFor: #slaveConnected.
		self assert: MVMasterNode currentMasterNode slaves notEmpty
	].