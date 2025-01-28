const express = require('express')

const api = express()

api.use(express.json())

const concessonaria = [];


api.listen(3000, () => {

    console.log('inicio servidor da api')
    
    })


api.get('/veiculos', (req,resp) => {

    resp.status(200).json(concessonaria)

} )

api.post('/veiculos', (req,resp) => {

    const put = req.body;
    concessonaria.push(put)

    resp.status(200).json(put)
    


}
 )

 api.put('/veiculos/:id', (req, resp) => {

    const change = req.body
     const test = concessonaria.findIndex(carro => carro.id === parseInt(req.params.id))

     if(test !== -1){

        concessonaria[test] = {...concessonaria[test], ...change}
        resp.status(200).send(concessonaria[test])


     }else{

        resp.status(404).send("Not found")

     }


 })

api.delete('/veiculos/:id', (req,resp) => {

    const del = concessonaria.findIndex(veiculo => veiculo.id === parseInt(req.params.id))

    if(del !== -1){

        concessonaria.splice(del, 1)
        resp.status(200).json({ message: 'Veiculo removido' });


    }
   
    else{

        resp.status(404).json({ message: 'not found' });


    }

})

