

CREATE TABLE Clientes (

    id INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(40),
    telefone VARCHAR(18),
    endereco VARCHAR(60)
  
     );

CREATE TABLE Carros (
    id INTEGER PRIMARY KEY,
    marca VARCHAR(15),
    modelo VARCHAR(20),
    ano INTEGER,
    cor VARCHAR(12),
    preço DOUBLE PRECISION
     );

CREATE TABLE Vendas (

    id INTEGER PRIMARY KEY, 
    cliente_id INTEGER,
    carro_id INTEGER,
    data_venda DATE, 
    valor DECIMAL(10, 2), 
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id),
    FOREIGN KEY (carro_id) REFERENCES Carros(id)

    );

    SELECT * FROM Carros;


    INSERT INTO Carros (id, marca, modelo, ano, cor, preço)
    VALUES (1, 'Chevrolet', 'Onix', 2019, 'Black', 10000.00 )


    INSERT INTO Clientes (id, nome, email, telefone, endereco)
    VALUES (1, 'Gabriel', 'gabrielcomparini51@gmail.com', 40028922, 'Rua dos Alfeineiros')

    SELECT * FROM Clientes;

    INSERT INTO Vendas (id, cliente_id, carro_id, data_venda, valor)
    VALUES (1, 1, 1, '2020-11-13', 10000.00 )

     SELECT * FROM Carros;
     SELECT * FROM Clientes;
     SELECT * FROM Vendas;