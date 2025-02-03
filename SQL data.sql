

CREATE TABLE Clientes (

    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(40),
    telefone VARCHAR(18),
    endereco VARCHAR(60)
  
     );

CREATE TABLE Carros (
    id SERIAL PRIMARY KEY,
    marca VARCHAR(15),
    modelo VARCHAR(20),
    ano INTEGER,
    cor VARCHAR(12),
    preço DOUBLE PRECISION
     );

CREATE TABLE Vendas (

    id SERIAL PRIMARY KEY, 
    cliente_id INTEGER,
    carro_id INTEGER,
    data_venda DATE, 
    valor DECIMAL(10, 2), 
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id),
    FOREIGN KEY (carro_id) REFERENCES Carros(id)

    );



