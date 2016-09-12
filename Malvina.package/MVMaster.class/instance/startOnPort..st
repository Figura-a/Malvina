start-stop
startOnPort: anInteger 
	
	network ifNotNil: [ self halt ].
	server ifNotNil: [ self halt ].
	
	network := MVNetwork new.
	server := network startServerOn: anInteger