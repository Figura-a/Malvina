configuring
addMasterAddress: aTCPAddress 
	
	masterRefs add: (MVMasterRef new
		node: self;
		address: aTCPAddress;
		yourself)