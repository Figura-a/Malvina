as yet unclassified
testNodeIsNotConnectedIfMasterIsNotAlive

	node := MVNode new.
	node addMasterAddress: (TCPAddress localAt: 59261).
	node start.

	self deny: node isConnected.