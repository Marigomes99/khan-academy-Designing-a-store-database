-- Criar a tabela para os itens da loja
CREATE TABLE bookstore (
    id INTEGER PRIMARY KEY,
    title TEXT,
    author TEXT,
    genre TEXT,
    price REAL,
    in_stock INTEGER
);

-- Inserir alguns dados na tabela
INSERT INTO bookstore VALUES (1, '1984', 'George Orwell ', 'Dystopian', 13.00, 50);
INSERT INTO bookstore VALUES (2, 'Le Comte de Monte-Cristo', 'Alexandre Dumas', 'Romance', 16.00, 30);
INSERT INTO bookstore VALUES (4, 'The Taming of the Shrew', 'William Shakespeare', 'Comedy', 11.70, 25);
INSERT INTO bookstore VALUES (5, 'Pride and Prejudice', 'Jane Austen', 'Romance', 16.49, 20);
INSERT INTO bookstore VALUES (6, 'Macbeth', ' William Shakespeare', 'tragedy', 18.99, 15);

-- Selecionar todos os itens ordenados por preço
SELECT * FROM bookstore ORDER BY price;

-- Calcular a média dos preços dos livros
SELECT AVG(price) AS average_price FROM bookstore;
-- Calcular o número total de livros em estoque para cada gênero
SELECT genre, SUM(in_stock) AS total_in_stock
FROM bookstore
GROUP BY genre;


