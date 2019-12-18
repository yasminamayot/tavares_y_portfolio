const express = require('express');
const path = require('path');
const hbs = require('hbs');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');

// set the port
const port = process.env.PORT || 3000;
const app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: false
}));

app.use(express.static(path.join(__dirname, '/public')));
app.set('view engine', 'hbs');
app.set('views', path.join(__dirname, 'views'));

app.use('/', require('./routes/index'));
app.use(logger('dev'));
app.use(cookieParser());

app.use((req, res, next) => {
    var err = new Error('Not Found');
    err.status = 404;
    err.customMessage = "This is your error page message";

    next(err);
})

app.use((err, req, res, next) => {
    res.render('error', {
        data: err,
        layout: 'errorPage'
    });
})

app.listen(port, () => {
    console.log(`app is running on ${port}`);
})

module.exports = app; 