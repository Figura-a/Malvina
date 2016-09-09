start-stop
stop
	
	server ifNotNil: #stop.
	network ifNotNil: #close.
	
	server := network := nil.
	