const gulp = require('gulp');
const sass = require('gulp-sass');
const autoprefixer = require("gulp-autoprefixer");


function compile(done) {
    gulp
    .src("sass/**/*.scss")
    .pipe(sass())
    .pipe(autoprefixer())
    .on("error", sass.logError)
    .pipe(gulp.dest("./public/css"));
    done();
}

exports.compile = compile;