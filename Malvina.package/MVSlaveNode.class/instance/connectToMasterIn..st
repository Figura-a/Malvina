as yet unclassified
connectToMasterIn: aTCPAddress

	| remoteEnvironment remoteMasterNode |
	remoteEnvironment := MVNetwork new environmentAt: aTCPAddress.
	remoteMasterNode := (remoteEnvironment at: #MVMasterNode) currentMasterNode.
	remoteMasterNode acceptSlave: self.