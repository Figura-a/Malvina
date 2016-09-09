start-stop
stop
	
	self assert: self class currentMasterNode == self.
	server stop.
	running := false.
	self class currentMasterNode: nil.