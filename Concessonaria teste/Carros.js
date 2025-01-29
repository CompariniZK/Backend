const express = require('express')
const db = require('./dados.js')
const dib = db.CarrosDatabase

const api = express()
api.use(express.json());




api.listen(3000, () => {
    
    console.log('inicio servidor da api')
    
    })


api.get('/veiculos', async (req,resp) => {
   
    resp.status(200).send(await dib.list())

} )

api.post('/veiculos', async (req,resp) => {
   
    
    resp.status(200).send(await dib.insert(req.body))



}
 )

 api.put('/veiculos/:id', async (req, resp) => {
    const idURL = parseInt(req.params.id)
 
    resp.status(200).send(await dib.update(req.body, idURL))
     


 })

api.delete('/veiculos/:id', async (req,resp) => {
    const idURL = parseInt(req.params.id)
    await dib.del(idURL)
   resp.status(200).send("Excluido com sucesso")
 
})

