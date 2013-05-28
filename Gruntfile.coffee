module.exports = (grunt)->

	###############################################################
	# Main Config
	###############################################################

	grunt.initConfig

		clean:
			all:
				src:						['artifacts']

		copy:
			src:
				files: [
					{
						cwd: 					'src/html'
						src:					'*.html'
						expand: 				true
						dest: 					'artifacts'
					}
					{
						cwd: 					'src/js'
						src:					'*.js'
						expand: 				true
						dest: 				'artifacts/js'
					}
				]
			lib:
				files: [
					{
						cwd: 					'lib'
						src:					'**/*.css'
						expand: 				true
						dest: 				'artifacts/style'
						flatten: 			true
					}
					{
						cwd: 					'lib'
						src:					'**/*.png'
						expand: 				true
						dest: 				'artifacts/img'
						flatten: 			true
					}
					{
						cwd: 					'lib'
						src:					'**/*.js'
						expand: 				true
						dest: 				'artifacts/js'
						flatten: 			true
					}
				]
		less:
			all:
				options:
					yuicompress: true
				files: [
					{
						'artifacts/style/resume.css': 'src/less/resume.less'
					},
					{
						'artifacts/style/print.css': 'src/less/print.less'
					}
				]

		'sftp-deploy':
			dist:
				auth:
					host: 'www.yourdomain.com'
					authKey: 'standard'
					port: 22
				src: 'artifacts/'
				dest: '/somewhere/cv'
		regarde:
			all:
				files: ['src/**/*.*']
				tasks: ['build']

	##############################################################
	# Dependencies
	###############################################################
	grunt.loadNpmTasks('grunt-contrib-clean')
	grunt.loadNpmTasks('grunt-contrib-copy')
	grunt.loadNpmTasks('grunt-contrib-less');
	grunt.loadNpmTasks('grunt-regarde')
	grunt.loadNpmTasks('grunt-sftp-deploy')

	grunt.registerTask('build', ['copy', 'less'])
	grunt.registerTask('watch', ['regarde'])

	grunt.registerTask('default', ['clean','build', 'watch'])
	grunt.registerTask('dist', ['build', 'sftp-deploy'])