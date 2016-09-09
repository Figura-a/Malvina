as yet unclassified
tearDown
	
	super tearDown.
	node ifNotNil: #stop.
	master ifNotNil: #stop.