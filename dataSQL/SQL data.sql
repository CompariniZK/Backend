CREATE TABLE Product(

    id INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10, 2),
    categoria VARCHAR(100)

);

CREATE TABLE Cliente(

    id INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100)
    
);

CREATE TABLE Vendas(

    id INTEGER PRIMARY KEY,
    cliente_id INTEGER,
    produto_id INTEGER, 
    data_venda DATE,

    CONSTRAINT fk_cliente FOREIGN KEY (cliente_id) REFERENCES Cliente(id),
    CONSTRAINT fk_product FOREIGN KEY (produto_id) REFERENCES  Product(id)
);


INSERT INTO Product (id, nome, preco, categoria)
VALUES 
    (1, 'GTA_V', 30.00, 'Bandidagem'),
    (2, 'GOD OF WAR R.', 70.00, 'Mitologia'),
    (3, 'Call of Duty BO4', 70.00, 'FPS Guerra')


INSERT INTO Cliente (id, nome, email)
VALUES 

    (1, 'Gabriel', 'gabrielcomparini@gmail.com' ),
    (2, 'Lobinho', 'rafaelcomparini@gmail.com' );


INSERT INTO Vendas (id, cliente_id, produto_id, data_venda)    
VALUES 
    
    (1, 1, 3, '2024-08-07'),
    (2, 2, 1, '2024-09-05');

SELECT * FROM Product;
SELECT * FROM Cliente;
SELECT * FROM Vendas;
