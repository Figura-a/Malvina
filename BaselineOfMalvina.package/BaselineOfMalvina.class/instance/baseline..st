baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			spec
				configuration: 'Seamless'
				with: [ 
					spec
						versionString: '0.9.0';
						repository: 'http://smalltalkhub.com/mc/Pharo/Seamless/main/' ].
			spec
				configuration: 'BeaconCore'
				with: [ 
					spec
						versionString: #'development';
						repository: 'http://smalltalkhub.com/mc/Pharo/Beacon/main/' ].
			spec
				baseline: 'TaskIt'
				with: [ spec repository: 'github://sbragagnolo/Taskit:dev-0.3' ].
			spec
				baseline: 'MultiTest'
				with: [ spec repository: 'github://guillep/MultiTest' ].
			spec
				package: 'Malvina' with: [ spec requires: #('Seamless' 'TaskIt' 'BeaconCore') ];
				package: 'Malvina-Tests' with: [ spec requires: #('Malvina' 'MultiTest') ].
			spec group: #default with: 'Malvina' ]