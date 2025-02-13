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


INSERT INTO Vendas (id, cliente_id, produto_id, data_venda, Valor_Venda)    
VALUES 
    
    (3, 1, 2, '2024-09-05', 80.00);
ALTER TABLE Vendas
ADD COLUMN Valor_Venda DECIMAL(10,2);



SELECT categoria, COUNT(*)AS quantidade_produto
FROM Product
GROUP BY categoria
ORDER BY quantidade_produto ASC;

SELECT 
cl.nome, pr.nome, sum(ve.Valor_Venda) AS total_vendas
 FROM Vendas ve 
INNER JOIN Product pr ON ve.produto_id = pr.id
INNER JOIN Cliente cl ON ve.cliente_id = cl.id  
GROUP BY 
cl.nome, pr.nome
ORDER BY cl.nome


SELECT * FROM Product;
SELECT * FROM Cliente;
SELECT * FROM Vendas;



