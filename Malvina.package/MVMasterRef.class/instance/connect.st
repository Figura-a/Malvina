connecting
connect
	
	remotePeer := node remotePeerAt: address.
	StringSignal emit: '[Malvina] Slave Node Connected to: ', address asString.