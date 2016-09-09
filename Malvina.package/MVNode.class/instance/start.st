start-stop
start
	
	service ifNotNil: [ self halt ].
	network ifNotNil: [ self halt ].	
	
	network := SeamlessNetwork new.
	
	service := MVNodeService new.
	service node: self.
	service start