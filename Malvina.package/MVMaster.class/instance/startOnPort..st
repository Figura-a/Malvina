start-stop
startOnPort: anInteger 
	
	network ifNotNil: [ self halt ].
	server ifNotNil: [ self halt ].
	
	network := SeamlessNetwork new.
	server := network startServerOn: anInteger