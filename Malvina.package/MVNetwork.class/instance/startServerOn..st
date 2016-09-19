accessing
startServerOn: aPort

	| server |
	server := super startServerOn: aPort.
	StringSignal emit: ('[Malvina] Started server on port {port}' format: { 'port' -> aPort asString } asDictionary).
	^ server