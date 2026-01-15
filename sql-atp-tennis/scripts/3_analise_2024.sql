-- Categoria com mais jogos em 2024.
SELECT
	Series as categoria,
	count(series) as quantidade
from atp_tennis
WHERE strftime('%Y', date) = '2024'
GROUP BY categoria
ORDER BY quantidade desc;

-- Piso mais utilizado nos jogos em 2024.
SELECT
	Surface as piso,
	count(surface) as quantidade
from atp_tennis
WHERE strftime('%Y', date) = '2024'
GROUP BY piso
ORDER BY quantidade desc;

-- Maior vencedor de campeonatos de 2024:
SELECT 
	Winner as vencedor,
	count(Winner) as titulos_2024
from atp_tennis
WHERE Round = "The Final" AND strftime('%Y', date) = '2024'
GROUP BY vencedor
ORDER BY titulos_2024 DESC;
