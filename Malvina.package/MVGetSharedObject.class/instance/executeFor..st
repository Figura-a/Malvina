as yet unclassified
executeFor: senderPeer

	| sharedObject |
	sharedObject := context network sharedObjectAt: key.
	context returnValue: Smalltalk to: senderPeer