const express = require('express');

const app = express();

app.use(express.json()) 


app.get('/players', (req, resp) => {

    console.log(req.query)
    console.log("Get no server");
    resp.status(200).send('deu certo');
} )

app.post('/players', (req, resp) => {

    console.log(req.body)
    console.log("Get no server");
    resp.status(200).send(req.body);
} )

app.listen(3004, () => {

console.log('inicio servidor da api')

})


app.post('/players', (req, resp) => {

        


})