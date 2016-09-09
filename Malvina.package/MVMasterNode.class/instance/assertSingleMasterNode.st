asserting
assertSingleMasterNode
	
	| currentMaster |
	currentMaster := self class currentMasterNode.
	(currentMaster notNil
		and: [ currentMaster isRunning ])
				ifTrue: [ self error: 'There is a runing master node' ]