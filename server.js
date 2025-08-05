const express = require('express');
const path = require('path');
const app = express();
const port = 4000;

const repliApp = process.env.APP_NAME

app.use('/nginx_file', express.static(path.join(__dirname, 'nginx_file')));
app.use('/assets', express.static(path.join(__dirname, 'assets')));
app.use('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'nginx_page.html'));
    console.log(`Request served by ${repliApp}`);
});

app.listen(port, () => {
    console.log(`${repliApp} is listening on port ${port}`);
});
