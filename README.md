# **3º Projeto prático- Desenvolve 2024 - BigQuery-Looker Studio**
<br>
<br>

## Objetivo do projeto

O objetivo deste projeto é analisar dados de crimes ocorridos em São Paulo entre 2019 e 2020, utilizando consultas SQL no BigQuery e visualizá-los por meio de relatórios no Looker Studio. A análise tem como foco identificar padrões de crimes em diferentes regiões, tipos de crimes mais frequentes e tendências ao longo do tempo.
<br>
<br>

## Fonte de Dados

A fonte de dados foi uma base de arquivo no formato CSV (O arquivo se encontra na pasta do projeto) que foi disponibilizada pelo programa Desenvolve do grupo O Boticário em parceria com a Alura para fins estudantis.

<br>
<br>

## Ferramentas utilizadas
⊛ SQL (PostgreSQL/BigQuery): Utilizado para a manipulação, extração e análise dos dados de crimes em São Paulo, criando as comsultas.

⊛ Looker Studio: Ferramenta de visualização de dados usada para construir dashboards/relatórios, apresentando os resultados das consultas SQL para o usuário final.

⊛ GitHub Desktop: Ferramenta para controle de versão, utilizada para gerenciar o código SQL e documentos do projeto, facilitando o versionamento e a colaboração.

⊛ VS Code: Ambiente de desenvolvimento usado para escrever e organizar consultas SQL, bem como para manter a documentação do projeto.

⊛ GitHub: Repositório para armazenar e compartilhar o código, consultas SQL e documentação do projeto.

<br>
<br>

## Metodologias
⊛ Ciclo de Análise de Dados: Aplicado para a extração, transformação e carregamento dos dados. Os dados de crimes foram extraídos da fonte e transformados para se adequarem à análise desejada. Posteriormente, foram carregados no BigQuery para facilitar consultas e visualizações no Looker Studio.

⊛ Análise Exploratória de Dados : Usada para explorar o conjunto de dados de forma a identificar padrões, correlações e outliers. Isso foi importante para entender a distribuição dos crimes e destacar pontos críticos, utilizando SQL para as consultas.

⊛ Visualização de Dados: Aplicação de princípios de design de visualização para construir o dashboard no Looker Studio. Com cartões de visão geral, tabela, gráfico de coluna, tabela com mapa de calor e gráfico de linhas foram utilizados para comunicar insights de forma clara e acessível aos usuários.

⊛ Controle de Versão (VS Code / GitHub): Implementado para garantir que as consultas SQL e documentos do projeto estivessem sempre atualizados, documentados e facilmente recuperáveis. O GitHub foi utilizado para gerenciar versões do código.

⊛ Iteração e Feedback Contínuos: O projeto foi desenvolvido de modo versátil com várias rodadas de revisão e melhorias tanto no código SQL quanto nos relatórios do Looker Studio, com base em testes, feedback e ajustes para otimização dos resultados.



<br>
<br>

## Estrutura do projeto
- **Bigquery/Queries/**: Contém as consultas SQL organizadas em arquivos separados.
  - `top_5_crimes.sql`: Consulta para obter os 5 maiores crimes por número de ocorrências.
  - `vehicle_thefts_2020.sql`: Consulta para contar furtos de veículos em 2020.
  

