tests
testAddSlaveToMasterShouldAddItToSlaveCollection

	master := MVMasterNode new.
	master addSlave: MVSlaveNode new.
	self deny: master slaves isEmpty