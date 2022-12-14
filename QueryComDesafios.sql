
--Query 1
SELECT Nome,Ano FROM Filmes

--Query 2

SELECT * FROM Filmes
ORDER BY Ano

--Query 3

SELECT * FROM Filmes WHERE Nome = 'De Volta para o Futuro'

--Query 4 

SELECT * FROM Filmes WHERE Ano = 1997

--Query 5 

SELECT * FROM Filmes WHERE Ano > 2000

-- Query 6

SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150 

-- Query 7

SELECT 
Ano, 
COUNT(*) Quantidade
FROM Filmes 
GROUP BY Ano
ORDER BY Quantidade DESC


-- Query 8

SELECT*FROM Atores WHERE Genero = 'M'

--Query 9


SELECT*FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

--Query 10
SELECT Filmes.Nome, Generos.Genero FROM FilmesGenero
INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

--Query 11

SELECT Filmes.Nome, Generos.Genero FROM FilmesGenero 
INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero WHERE Generos.Genero = 'Mistério'

-- Query 12
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel FROM ElencoFilme
INNER JOIN Filmes ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor

