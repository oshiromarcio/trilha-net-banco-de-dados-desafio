
-- BUSCA 1: Buscar o nome e ano dos filmes
SELECT Nome, Ano
FROM Filmes;
GO

-- BUSCA 2: Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano, Duracao
FROM Filmes
ORDER BY Ano;

-- BUSCA 3: Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
SELECT  Nome, Ano
FROM Filmes
WHERE Nome = 'de volta para o futuro';

-- BUSCA 4: Buscar os filmes lan�ados em 1997
SELECT  Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997;

-- BUSCA 5: Buscar os filmes lan�ados AP�S o ano 2000
SELECT  Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000;

-- BUSCA 6: Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT  Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100
AND	Duracao < 150
ORDER BY Duracao;

-- BUSCA 7: Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
-- OBS: FIZ A ORDENA��O PELA QUANTIDADE, N�O � POSS�VEL FAZER A ORDENA��O POR DURA��O SEM INCLU�-LA NA CL�USULA GROUP BY E DESCARACTERIZANDO A BUSCA SOLICITADA
SELECT  Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- BUSCA 8: Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M';

-- BUSCA 9: Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- BUSCA 10: Buscar o nome do filme e o g�nero
SELECT f.Nome, g.Genero
FROM Filmes f
	INNER JOIN FilmesGenero fg
	ON	f.Id = fg.IdFilme
	INNER JOIN Generos g
	ON	fg.IdGenero = g.Id;

-- BUSCA 11: Buscar o nome do filme e o g�nero do tipo "Mist�rio"
SELECT f.Nome, g.Genero
FROM Filmes f
	INNER JOIN FilmesGenero fg
	ON	f.Id = fg.IdFilme
	INNER JOIN Generos g
	ON	fg.IdGenero = g.Id
WHERE g.Genero = 'Mist�rio';

-- BUSCA 12: Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes f
	INNER JOIN ElencoFilme ef
	ON	f.Id = ef.IdFilme
	INNER JOIN Atores a
	ON	ef.IdAtor = a.Id;

