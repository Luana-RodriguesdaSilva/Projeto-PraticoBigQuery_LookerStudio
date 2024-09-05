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
  - `Consulta_total_estupros_latrocinios.sql`: Consulta para obter os números totais de estupros e latrocínios ao longo dos anos de 2019 e 2020.
  - `total_de_lesoes.sql`: Consulta para contar o total de cada crime de lesão: (Lesão Corporal seguida de morte, Lesão Corporal Dolosa, Lesão Corporal Culposa por acidente de trânsito e Lesão Corporal Culposa) ao longo dos anos de 2019 e 2020.
  - `total_homicidios_anos.sql`: Consulta para contar o total de cada crime de Homicídio: (Homicídio doloso por acidente de trânsito, Homicídio Culposo por acidente de Trânsito e Homicídio Culposo) o total de cada homicídio separado por ano 2019/2020.

<br>
<br>

## Relatórios

Os relatórios gerados estão disponíveis no Looker Studio e são baseados nas consultas SQL executadas no BigQuery.

[Link para o relatório do Looker Studio](https://lookerstudio.google.com/reporting/d3025608-bdbc-4748-8b6b-910da04963c2)
  

