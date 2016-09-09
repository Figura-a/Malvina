tests
testOnlyOneMasterCanBeAliveAtATimeEvenIfDifferentPort

	master := MVMasterNode new.
	master start.
	
	self should: [ MVMasterNode new startOnPort: 123123 ] raise: Error