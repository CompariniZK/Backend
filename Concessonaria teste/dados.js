const delay = (time) =>
    new Promise(resolve =>
        setTimeout(resolve, time)
    )


const CarrosDatabase = (() => {
    let idSequence = 1
    const concessonaria = []
    const insert = async (carro) => {
        await delay(400)
        const id = idSequence++
        const data = { ...carro, id }
        concessonaria[id] = data
        return data
    }

    const list = async () => {
        await delay(100)
        return Object.values(concessonaria)
    }

    const get = async (id) => {
        await delay(200)
        return concessonaria[id]
    }

    const update = async (carro, id) => {
        await delay(400)
        concessonaria[id] = { ...carro, id }
        return carro
    }

    const del = async (id) => {
        await delay(500)
        delete concessonaria[id]
        console.log("Executamos o delete")
    }

    return {
        insert,
        list,
        get,
        update,
        del,
    }

})

module.exports = {
    CarrosDatabase
}


