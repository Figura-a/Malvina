start-stop
stop
	
	"self assert: self class currentMasterNode == self."
	server ifNotNil: #stop.
	running := false.