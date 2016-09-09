running
tearDown

	super tearDown.
	master isRunning
		ifTrue: [ master stop ]