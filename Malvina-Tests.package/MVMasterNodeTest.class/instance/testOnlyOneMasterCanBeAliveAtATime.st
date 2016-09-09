tests
testOnlyOneMasterCanBeAliveAtATime

	master := MVMasterNode new.
	master start.
	
	self should: [ MVMasterNode new start ] raise: Error