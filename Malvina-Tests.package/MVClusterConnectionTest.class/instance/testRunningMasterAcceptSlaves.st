tests
testRunningMasterAcceptSlaves

	| slave |
	master := MVMasterNode new.
	master start.
	
	slave := MVSlaveNode new.
	slave connectToMasterIn: (TCPAddress localAt: 8080).
	
	self deny: master slaves isEmpty