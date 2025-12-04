-- 1
select Nome, Ano from Filmes;

-- 2
select * from Filmes order by Ano asc;

-- 3
select * from Filmes where Nome like 'De Volta para o Futuro';

-- 4
select * from Filmes where Ano = 1997;

-- 5
select * from Filmes where Ano > 2000;

-- 6
select * from Filmes where Duracao > 100 and Duracao < 150 order by Duracao asc;

-- 7
select Ano, Count(*) as Quantidade from Filmes group by Ano order by Quantidade desc;

-- 8
select * from Atores where Genero = 'M';

-- 9
select * from Atores where Genero = 'F' order by PrimeiroNome;

-- 10
select f.Nome, g.Genero from FilmesGenero
inner join Filmes f on IdFilme = f.Id
inner join Generos g on IdGenero = g.Id;

-- 11
select f.Nome, g.Genero from FilmesGenero
inner join Filmes f on IdFilme = f.Id
inner join Generos g on IdGenero = g.Id where g.Genero = 'Mistério';

-- 12
select f.Nome, a.PrimeiroNome, a.UltimoNome, Papel from ElencoFilme
inner join Filmes f on f.Id = IdFilme
inner join Atores a on a.Id = IdAtor;