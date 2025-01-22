const express = require('express');

const app = express();

app.use(express.json()) 


app.get('/players', (req, resp) => {

    console.log(req.query)
    console.log("Get no server");
    resp.status(200).send("Dados enviados ao VSCODE");
} )

app.get('/players/:id/:outro', (req, resp) => {

    console.log(req.params.id)
    console.log(req.params.outro)
    console.log("Get no server");
    resp.status(200).send('Dados enviados ao VSCODE');
} )

app.post('/players', (req, resp) => {

    console.log(req.body)
    console.log("Get no server");
    resp.status(200).send(req.body);
} )

app.put('/players/:id', (req, resp) => {

    console.log(req.body)
    console.log("Atualizamos");
    resp.status(200).send(req.body);
} )




app.listen(3004, () => {

console.log('inicio servidor da api')

})


app.delete('/players/:id', (req, resp) => {

    console.log(req.body)
    console.log("Deletamos");
    resp.status(200).send(req.body);
} )

