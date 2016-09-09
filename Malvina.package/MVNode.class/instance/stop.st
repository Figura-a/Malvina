stop
stop
	
	service ifNotNil: #stop.
	network ifNotNil: #close.
	service := nil.
	network := nil.