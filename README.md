markdown-bootstrap-resume
-------------------------

Create your resume / cv like a NERD. I mean, like a BOSS - using [Markdown](http://daringfireball.net/projects/markdown/) and [Twitter Bootstrap](http://twitter.github.io/bootstrap/index.html).

### Environment Setup

* Install [Node.js](http://nodejs.org/) and [npm](https://npmjs.org/)
* Install the [Grunt](http://gruntjs.com/) build tool
* Run `npm install` from the root directive to pull down build-time dependencies

### Building and Development Cycle

* Run `grunt`
* Point your browser to the `artifact` directory created by the build
* Make changes, refresh your browser

Content changes should be made in `index.html`, style changes in `resume.less`

### Deploying

The `grunt deploy` task will push your resume and its supporting files to a server over SFTP (other types of deployments you'll have to handle on your own).  See the [grunt-sftp-deploy](https://github.com/thrashr888/grunt-sftp-deploy) for configuration information, and edit your `Gruntfile.coffee` appropriately.

### Etc

This particular project is built on top of Bootswatch's [Cosmo](http://bootswatch.com/cosmo/) theme.  Feel free to change the `lib/boostrap/bootstrap.*.min.css` to whatever theme you like.

*Please note that this is an attempt to demonstrate resume / cv best practices, etc. Format / populate your resume as needed.*

### Credits

Leverages the following fantastic projects:

* [Markdown](http://daringfireball.net/projects/markdown/)
* [Twitter Bootstrap](http://twitter.github.io/bootstrap/index.html)
* [Strapdown.js](http://strapdownjs.com/)
* [Bootswatch](http://bootswatch.com/)
* [LESS](http://lesscss.org/)

Thanks!
