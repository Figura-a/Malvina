start-stop
start
	
	| network |
	
	self assertSingleMasterNode.

	network := MVNetwork new.
	server := network startServerOn: self address port.
	running := true.