    INSERT INTO Carros (id, marca, modelo, ano, cor, preço)
    VALUES 
    
    (3, 'Chevrolet', 'Celta', 2022, 'Red', 8000.00 );

    INSERT INTO Clientes (id, nome, email, telefone, endereco)
    VALUES (1, 'Gabriel', 'gabrielcomparini51@gmail.com', 40028922, 'Rua dos Alfeineiros')
    INSERT INTO Clientes (id, nome, email, telefone, endereco)
    VALUES (2, 'Lobo', 'lobinho@gmail.com', 445175521, 'Rua dos Alfeineiros')

    INSERT INTO Vendas (id, cliente_id, carro_id, data_venda, valor)
   
    VALUES (2, 2, 3,'2021-10-15', 8.000);



    SELECT Clientes.nome, Carros.marca, Carros.modelo, Carros.ano, Carros.cor
    FROM Vendas
    INNER JOIN Clientes ON Vendas.cliente_id = Clientes.id
    INNER JOIN Carros ON Vendas.carro_id = Carros.id 

