tests
testNewMasterIsNotRunning

	master := MVMasterNode new.
	self deny: master isRunning