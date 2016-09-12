execution
executeFor: senderPeer

	| sharedObject |
	sharedObject := senderPeer network sharedObjectAt: key.
	context returnValue: sharedObject to: senderPeer