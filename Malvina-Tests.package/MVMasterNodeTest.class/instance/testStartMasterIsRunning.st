tests
testStartMasterIsRunning

	master := MVMasterNode new.
	master start.
	self assert: master isRunning