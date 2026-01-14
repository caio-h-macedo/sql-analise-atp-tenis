-- Entendendo quais anos a base de dados contém e a quantidade de jogos para cada ano.
SELECT 
	strftime('%Y', Date) as ano,
	count(*) as quantidade_jogos
from atp_tennis
GROUP by ano
ORDER BY quantidade_jogos DESC

-- Entendendo quais sãos as categorias e qual tem mais jogos em nosso banco.
SELECT 
	Series as categoria,
	count(series) as quantidade_cat
from atp_tennis
GROUP BY categoria
ORDER BY quantidade_cat DESC

-- Quem teve mais jogos no total.
SELECT 
	Winner as vencedor,
	count(Winner) as jogos_vencidos
from atp_tennis
GROUP BY vencedor
ORDER BY jogos_vencidos DESC

-- Maior vencedor de campeonatos.
SELECT 
	Winner as vencedor,
	count(Winner) as titulos
from atp_tennis
WHERE Round = "The Final"
GROUP BY vencedor
ORDER BY titulos DESC	

-- Quem venceu mais GRAND SLAMS
SELECT 
	Winner as vencedor,
	count(Winner) as titulos
from atp_tennis
WHERE Round = "The Final" AND Series = "Grand Slam"
GROUP BY vencedor
ORDER BY titulos DESC

-- Qual piso de quadra teve mais jogos?
SELECT
	Surface as piso,
	count(surface) as quantidade_piso
from atp_tennis
GROUP BY piso
ORDER BY quantidade_piso desc