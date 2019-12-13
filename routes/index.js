const express = require('express');
const router = express.Router();
const sql = require('../utils/sql');
var auth = require('../config/mailcreds');
var mailer = require('nodemailer');

// set up the nodemailer stuff
const transporter = mailer.createTransport({
    service: 'gmail',
    auth: {
        user: auth.user,
        pass: auth.pass
    }
});

//home/about/index page
router.get('/', (req, res) => {
    const connect = require('../utils/sql.js');

    // get the connection via the connection pool, and then run the query -> just one added step
    connect.getConnection((err, connection) => {
		if (err) { return console.log(error.message); }

		let query = "SELECT * FROM tbl_aboutMe";

		connect.query(query, (err, rows) => {
			connection.release(); // send this connection back to the pool

			if (err) {
				// will exit the function and log the error
				return console.log(err.message);
			}

			console.log(rows); // this should be your database query result

			// render our page
			res.render('/', {data: rows}); // whatever page and data you're rendering
		});
	});
})

    let query = "SELECT * FROM tbl_aboutMe";

    sql.query(query, (err, result) => {
        if (err) {
            throw err;
        }

        res.render('home', {
            data: result
        });
    })




//portfolio projects page
router.get('/portfolio', (req, res) => {

    let query = "SELECT * FROM tbl_projectList";

    sql.query(query, (err, result) => {
        if (err) {
            throw err;
        }

        res.render('portfolio', {
            data: result
        });
    })
})


//portfolio continued: dynamic placeholder
router.get('/portfolioItem/:id', (req, res) => {

    let query = `SELECT * FROM tbl_projectDetails WHERE Id="${req.params.id}"`;

    sql.query(query, (err, result) => {
        if (err) {
            throw err;
        }

        res.json(result);
    })
})


//contact page
router.get('/contact', (req, res) => {
    res.render('contact');
})


router.post('/mail', (req, res) => {
    console.log('hit mail route');
    console.log('body: ', req.body);

    // get the mail options from the form -> the url params using bodyParser middleware

    const mailOptions = {
        from: req.body.usermail,
        to: auth.user,
        replyTo: req.body.usermail,
        subject: `From portfolio site: Subject = ${req.body.subject || 'none'}`, // Subject line
        text: req.body.message
    };

    transporter.sendMail(mailOptions, function (err, info) {
        if (err) {
            console.log("failed... ", err);
            res.json(err);
        } else {
            console.log("success! ", info);
            res.json(info);
        }
    });
})



//this always stays at the bottom
module.exports = router;