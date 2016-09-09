start-stop
start
	
	service ifNotNil: [ self halt ].
	service := MVNodeService new.
	service node: self.
	service start