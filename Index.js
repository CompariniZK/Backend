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

app.post('/players', (req, resp) =>{

    const Post = req.body;
    
    players.push(Post)
    console.log("Player adicionado")

    resp.status(200).send("Player adicionado" + Post)


})

app.put('/player/:id', (req, resp) =>{

        const Put = req.body;
        
        const idURL = parseInt(req.params.id);

        const test = players.findIndex(man => man.id === idURL);

        if(test !== -1){

            players[test] = {...players[test], ...Put};


            resp.status(200).json(players[test]);


        }

        else{

            resp.status(404).send("Nao encontrado")

        }

})





app.listen(3004, () => {

console.log('inicio servidor da api')

})


app.delete('/players/:id', (req, resp) =>{

    const del = parseInt(req.params.id)

    const test = players.findIndex(man => man.id === del )

    if(test !== -1){

        players.splice(test, 1)

        resp.status(200).json(players)

    }
    
    else{

        resp.status(404).send("Nao encontrado")

    }

}) 

