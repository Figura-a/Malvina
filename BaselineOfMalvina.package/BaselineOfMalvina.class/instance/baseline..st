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
				baseline: 'MultiTest'
				with: [ spec repository: 'github://guillep/MultiTest' ].
			spec
				package: 'Malvina' with: [ spec requires: #('Seamless' 'MultiTest') ] ]