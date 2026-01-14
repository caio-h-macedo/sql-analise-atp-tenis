# Análise de Jogos e Títulos da ATP (Association of Tennis Professionals) com SQL

## Objetivo
Analisar dados históricos de partidas da ATP com o objetivo de entender a distribuição dos jogos ao longo dos anos, identificar os jogadores com mais vitórias e títulos, além de analisar categorias de torneios, pisos de quadra e um recorte específico do ano de 2024.

---

## Ferramentas utilizadas
- Kaggle
- SQL
- SQLite
- DB Browser for SQLite
- GitHub

---

## Base de dados
A base de dados contém informações sobre partidas da ATP de 2000 a 2025, incluindo:
- data do torneio
- categoria do campeonato (Series)
- rodada da partida (Round)
- vencedor (Winner)
- tipo de piso da quadra (Surface)

Os dados foram armazenados em um banco SQLite para realização das análises.

---

## Estrutura do projeto
- **dados/** → arquivo CSV obtido no Kaggle - https://www.kaggle.com/datasets/dissfya/atp-tennis-2000-2023daily-pull
- **banco/** → banco de dados SQLite  
- **scripts/** → scripts SQL organizados por etapa da análise  

---

## Etapas da análise

### 1. Entendimento dos dados
Nesta etapa inicial, foi realizada a exploração da estrutura da tabela para:
- verificar a quantidade de colunas
- identificar os nomes e tipos de dados
- garantir que os campos estavam adequados para análise  

Essa etapa permitiu validar a base antes de iniciar as consultas analíticas.

---

### 2. Análise geral dos jogos
Foram realizadas análises globais para entender o comportamento geral dos dados ao longo do tempo:

- Distribuição da quantidade de jogos por ano
- Identificação das categorias de torneios mais presentes na base
- Jogadores com maior número de partidas vencidas
- Jogadores com maior número de títulos (finais vencidas)
- Jogadores com maior número de títulos de Grand Slam
- Distribuição de jogos por tipo de piso de quadra

Essas análises ajudaram a identificar padrões gerais e atletas com maior destaque no circuito.

---

### 3. Análise específica do ano de 2024
Foi realizado um recorte temporal para analisar exclusivamente os dados de 2024, com foco em:

- Categoria de torneio mais presente no ano
- Tipo de piso mais utilizado nos jogos
- Jogador com maior número de títulos conquistados em 2024

Essa abordagem permitiu comparar o comportamento de um ano específico com o cenário geral da base.

---

## Principais insights
- A base de dados cobre múltiplos anos, permitindo análises históricas e comparações temporais.
- A chegada da pandemia diminuiu drasticamente a quantidade de jogos no ano.
- Um grupo restrito de jogadores concentra a maior parte das vitórias e títulos, indicando dominância no circuito (o chamado Big 3, no mundo do Tênis).
- Novak Djokovic é o maior vencedor de Grand Slams.
- A categoria ATP 250 tem o maior registro de jogos.
- A "Quadra dura" é a mais utilizada.
- Em 2024, é possível identificar a ausência do chamado "Big 3" que dominou o circuito por anos e a ascenção de Carlos Alcaraz e Jannik Sinner.

---

## Como reproduzir a análise
1. Criar um banco de dados SQLite
2. Executar o script de criação da tabela
3. Importar o arquivo CSV na tabela `atp_tennis`
4. Executar os scripts SQL de análise na ordem proposta

---

## Considerações finais
Este projeto tem como objetivo demonstrar a aplicação prática de SQL em uma análise exploratória de dados, utilizando agregações, filtros, funções de data e organização lógica das consultas.
Reintero que estou em processo de aprendizado e aceito críticas e sugestões.

