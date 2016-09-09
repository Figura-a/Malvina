start-stop
start
	
	| network |
	
	self assertSingleMasterNode.

	network := SeamlessNetwork new.
	server := network startServerOn: self address port.
	running := true.