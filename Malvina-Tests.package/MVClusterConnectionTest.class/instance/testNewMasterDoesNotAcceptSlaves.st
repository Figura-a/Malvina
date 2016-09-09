tests
testNewMasterDoesNotAcceptSlaves

	| slave |
	master := MVMasterNode new.
	slave := MVSlaveNode new.
	
	self
		should: [slave connectToMasterIn: (TCPAddress localAt: 8080)]
		raise: ConnectionTimedOut.