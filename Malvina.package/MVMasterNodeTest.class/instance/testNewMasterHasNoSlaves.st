tests
testNewMasterHasNoSlaves

	master := MVMasterNode new.
	self assert: master slaves isEmpty