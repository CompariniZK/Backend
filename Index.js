const express = require('express');

const app = express();

app.use(express.json()) 

const players = [];

app.get('/players', (req, resp) => {

    resp.status(200).json(players);
} )

app.get('/players/:id/:outro', (req, resp) => {

    const player = players.find(man => man.id === parseInt(req.params.id))

    if (!player){

       return resp.status(404).send("Nome nao encontrado")
    }

   return resp.status(200).json(player);
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

