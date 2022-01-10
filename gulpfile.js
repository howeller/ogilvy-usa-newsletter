// Node & NPM packages
const del = require('del'),
	merge = require('merge-stream'),
	gulp = require('gulp'),
	emailBuilder = require('gulp-email-builder-min');

// Configure emailBuilder options
const inlinerOptions = {encodeSpecialChars: true, juice: {preserveImportant: true, applyWidthAttributes:false } };

const	builder = emailBuilder(inlinerOptions); // Path to Sanjays repo

const dir = {
	src: 'src/',
	test: 'src/test/', // Path for Static HTML
	dist: 'dist/templates/',
	previewCache:'dist/templates_c/'
}

function buildEmail(isTest=false) {

	if (isTest) {
		// For testing static HTML template
		let _html = gulp.src(dir.src+'Static_Template.html')
			.pipe(builder.build());

		let _images = gulp.src(dir.src+'images/*',{base:dir.src})// pipe "images" and contents
			
		return merge(_html, _images)
			.pipe(gulp.dest(dir.test));

	} else {
		let _clearCache = del(dir.previewCache+'**');

		return gulp.src(dir.src+'*.tpl')
		.pipe(builder.build())
		.pipe(gulp.dest(dir.dist));
	}
};

// Tasks
gulp.task('build:email', () => { return buildEmail(false)}); // inline's CSS
gulp.task('build:test', () => { return buildEmail(true)}); // Builds static HTML + copies images
gulp.task('default', gulp.series('build:email'));
gulp.task('watch', function() { return gulp.watch(dir.src+'**/**', gulp.series('default')) });
