
-- BUSCA 1: Buscar o nome e ano dos filmes
SELECT Nome, Ano
FROM Filmes;
GO

-- BUSCA 2: Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano, Duracao
FROM Filmes
ORDER BY Ano;

-- BUSCA 3: Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT  Nome, Ano
FROM Filmes
WHERE Nome = 'de volta para o futuro';

-- BUSCA 4: Buscar os filmes lançados em 1997
SELECT  Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997;

-- BUSCA 5: Buscar os filmes lançados APÓS o ano 2000
SELECT  Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000;

-- BUSCA 6: Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT  Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100
AND	Duracao < 150
ORDER BY Duracao;

-- BUSCA 7: Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
-- OBS: FIZ A ORDENAÇÃO PELA QUANTIDADE, NÃO É POSSÍVEL FAZER A ORDENAÇÃO POR DURAÇÃO SEM INCLUÍ-LA NA CLÁUSULA GROUP BY E DESCARACTERIZANDO A BUSCA SOLICITADA
SELECT  Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- BUSCA 8: Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M';

-- BUSCA 9: Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- BUSCA 10: Buscar o nome do filme e o gênero
SELECT f.Nome, g.Genero
FROM Filmes f
	INNER JOIN FilmesGenero fg
	ON	f.Id = fg.IdFilme
	INNER JOIN Generos g
	ON	fg.IdGenero = g.Id;

-- BUSCA 11: Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT f.Nome, g.Genero
FROM Filmes f
	INNER JOIN FilmesGenero fg
	ON	f.Id = fg.IdFilme
	INNER JOIN Generos g
	ON	fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';

-- BUSCA 12: Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes f
	INNER JOIN ElencoFilme ef
	ON	f.Id = ef.IdFilme
	INNER JOIN Atores a
	ON	ef.IdAtor = a.Id;

