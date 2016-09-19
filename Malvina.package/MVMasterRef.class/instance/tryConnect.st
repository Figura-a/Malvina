connection
tryConnect

	[ self isConnected ifFalse: [ self connect ] ] ifError: [  ]