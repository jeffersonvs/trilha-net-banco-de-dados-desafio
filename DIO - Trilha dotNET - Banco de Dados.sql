--1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT * FROM Filmes
ORDER BY Ano ASC

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De volta para o futuro'

--4 - Buscar os filmes lan�ados em 1997
SELECT * FROM Filmes
WHERE Ano = 1997

--5 - Buscar os filmes lan�ados AP�S o ano 2000
SELECT * FROM Filmes
WHERE Ano > 2000

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao <150 ORDER BY Duracao ASC

--7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) AS quantidaDeFilmes
FROM Filmes GROUP BY Ano
ORDER BY SUM(Duracao) DESC

--8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'M'

--9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'F' ORDER BY PrimeiroNome

--10 - Buscar o nome do filme e o g�nero
SELECT Filmes.nome AS NomeFilme, Generos.Genero AS Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.id;

--11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"
SELECT Filmes.nome AS NomeFilme, Generos.Genero AS Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.id
WHERE Genero = 'Mist�rio'

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT Filmes.nome AS NomeFilme, Atores.PrimeiroNome + ' ' + Atores.UltimoNome AS NomeCompleto, ElencoFilme.Papel
FROM Filmes
JOIN ElencoFilme ON Filmes.id = ElencoFilme.IdFilme
JOIN Atores ON ElencoFilme.IdAtor = Atores.id;


