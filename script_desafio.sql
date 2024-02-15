-- 1) Buscar o nome e ano dos filmes
SELECT F.Nome, F.Ano
FROM dbo.Filmes F

-- 2) Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT F.Nome, F.Ano, F.Duracao 'Dura��o'
FROM dbo.Filmes F
ORDER BY F.Ano

-- 3) Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
SELECT F.Nome, F.Ano, F.Duracao 'Dura��o'
FROM dbo.Filmes F
WHERE F.Nome = 'de volta para o futuro'

-- 4) Buscar os filmes lan�ados em 1997
SELECT F.Nome, F.Ano, F.Duracao 'Dura��o'
FROM dbo.Filmes F
WHERE F.Ano = 1997

-- 5) Buscar os filmes lan�ados AP�S o ano 2000
SELECT F.Nome, F.Ano, F.Duracao 'Dura��o'
FROM dbo.Filmes F
WHERE F.Ano > 2000

-- 6) Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT F.Nome, F.Ano, F.Duracao 'Dura��o'
FROM dbo.Filmes F
WHERE F.Duracao > 100 AND F.Duracao < 150
ORDER BY F.Duracao

-- 7) Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela quantidade em ordem decrescente
SELECT F.Ano, COUNT(*) Quantidade
FROM dbo.Filmes F
GROUP BY F.Ano
ORDER BY COUNT(*) DESC

-- 8) Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
SELECT A.PrimeiroNome, A.UltimoNome
FROM dbo.Atores A
WHERE A.Genero = 'M'

-- 9) Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT A.PrimeiroNome, A.UltimoNome
FROM dbo.Atores A
WHERE A.Genero = 'F'
ORDER BY A.PrimeiroNome

-- 10) Buscar o nome do filme e o g�nero
SELECT F.Nome, G.Genero
FROM dbo.Filmes F
INNER JOIN dbo.FilmesGenero FG ON FG.IdFilme = F.Id
INNER JOIN dbo.Generos G ON G.Id = FG.IdGenero

-- 11) Buscar o nome do filme e o g�nero do tipo "Mist�rio"
SELECT F.Nome, G.Genero
FROM dbo.Filmes F
INNER JOIN dbo.FilmesGenero FG ON FG.IdFilme = F.Id
INNER JOIN dbo.Generos G ON G.Id = FG.IdGenero
WHERE G.Id = 10

-- 12) Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM dbo.Filmes F
INNER JOIN dbo.ElencoFilme EF ON EF.IdFilme = F.Id
INNER JOIN dbo.Atores A ON A.Id = EF.IdAtor