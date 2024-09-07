# **3º Projeto prático- Desenvolve 2024 - BigQuery-Looker Studio**
<br>
<br>

## Objetivo do projeto

O objetivo deste projeto é analisar dados de crimes ocorridos em São Paulo entre 2019 e 2020, utilizando consultas SQL no BigQuery e visualizá-los por meio de relatórios no Looker Studio. A análise tem como foco identificar padrões de crimes , tipos de crimes mais frequentes e tendências ao longo do tempo.
<br>
<br>

## Fonte de dados

A fonte de dados foi uma base de arquivo no formato CSV (O arquivo se encontra na pasta do projeto) que foi disponibilizada pelo programa Desenvolve do grupo O Boticário em parceria com a Alura para fins estudantis.

<br>
<br>

## Ferramentas utilizadas
⊛ SQL (PostgreSQL/BigQuery): Utilizado para a manipulação, extração e análise dos dados de crimes em São Paulo, criando as consultas.

⊛ Looker Studio: Ferramenta de visualização de dados usada para construir dashboards/relatórios, apresentando os resultados das consultas SQL para o usuário final.

⊛ GitHub Desktop: Ferramenta para controle de versão, utilizada para gerenciar o código SQL e documentos do projeto, facilitando o versionamento e a colaboração.

⊛ VS Code: Ambiente de desenvolvimento usado para escrever e organizar consultas SQL, bem como para manter a documentação do projeto.

⊛ GitHub: Repositório para armazenar e compartilhar o código, consultas SQL e documentação do projeto.

<br>
<br>

## Metodologias
⊛ Ciclo de Análise de Dados: Aplicado para a extração, transformação e carregamento dos dados. Os dados de crimes foram extraídos da fonte e transformados para se adequarem à análise desejada. Posteriormente, foram carregados no BigQuery para facilitar consultas e visualizações no Looker Studio.

⊛ Análise Exploratória de Dados : Usada para explorar o conjunto de dados de forma a identificar padrões, correlações e outliers. Isso foi importante para entender a distribuição dos crimes e destacar pontos críticos, utilizando SQL para as consultas.

⊛ Visualização de Dados: Aplicação de princípios de design de visualização para construir o dashboard no Looker Studio. Com cartões de visão geral, tabela, gráfico de coluna, tabela com mapa de calor e gráfico de barras empilhadas, foram utilizados para comunicar insights de forma clara e acessível aos usuários.

⊛ Controle de Versão (VS Code / GitHub): Implementado para garantir que as consultas SQL e documentos do projeto estivessem sempre atualizados, documentados e facilmente recuperáveis. O GitHub foi utilizado para gerenciar versões do código.

⊛ Iteração e Feedback Contínuos: O projeto foi desenvolvido de modo versátil com várias rodadas de revisão e melhorias tanto no código SQL quanto nos relatórios do Looker Studio, com base em testes, feedback e ajustes para otimização dos resultados.



<br>
<br>

## Estrutura do projeto
- **Bigquery/Queries/**: Contém as consultas SQL organizadas em arquivos separados.
  - `Consulta_total_estupros_latrocinios.sql`: Consulta para obter os números totais de estupros e latrocínios ao longo dos anos de 2019 e 2020.
  - `total_de_lesoes.sql`: Consulta para contar o total de cada crime de lesão: (Lesão Corporal seguida de morte, Lesão Corporal Dolosa, Lesão Corporal Culposa por acidente de trânsito e Lesão Corporal Culposa) ao longo dos anos de 2019 e 2020.
  - `total_homicidios_anos.sql`: Consulta para contar o total de cada crime de Homicídio: (Homicídio doloso por acidente de trânsito, Homicídio Culposo por acidente de Trânsito e Homicídio Culposo) o total de cada homicídio é separado por ano 2019/2020.

<br>
<br>

## Relatórios

Os relatórios gerados estão disponíveis no Looker Studio e são baseados nas consultas SQL executadas no BigQuery.

[Link para o relatório do Looker Studio](https://lookerstudio.google.com/reporting/d3025608-bdbc-4748-8b6b-910da04963c2)
  

<br>
<br>

## Como executar

1. Clone o repositório.
2. Suba os arquivos SQL no BigQuery e execute conforme necessário.

<br>
<br>

## Desenvolvimento, análises e insights do projeto

Após acessar o BigQuery e importar a base de dados a primeira consulta efetuada foi para obter os números totais de estupros e latrocínios ao longo dos anos de 2019 e 2020.

```sql
SELECT
    SUM(Estupro) AS Total_Estupro,
    SUM(Latrocinios) AS Total_Latrocinios
FROM 
   `crimes_sp_2019_2020.crimes_sp`;
```

Para a visualização no Looker Studio coloquei essas informações no ínicio do relatório: 

![Cartões com osnúmeros de latrocinios e estupros](https://github.com/user-attachments/assets/433421c8-61b4-4b3e-a870-efc0204e38f6)

<br>
<br>

A segunda consulta é referente ao total de cada crime de lesão: (Lesão Corporal seguida de morte, Lesão Corporal Dolosa, Lesão Corporal Culposa por acidente de trânsito e Lesão Corporal Culposa) ao longo dos anos de 2019 e 2020.


```sql

SELECT 
  Crime,
  SUM(Quantidade) AS Total
FROM (
  SELECT 
    'Lesão Corporal seguida de morte' AS Crime, SUM(`Lesão Corporal seguida de morte`) AS Quantidade FROM `projeto-desenvolvebigquery.crimes_sp_2019_2020.crimes_sp`  UNION ALL
  SELECT 
    'Lesão Corporal Dolosa' AS Crime, SUM(`Lesão Corporal Dolosa`) AS Quantidade FROM `projeto-desenvolvebigquery.crimes_sp_2019_2020.crimes_sp` UNION ALL
  SELECT 
    'Lesão Corporal Culposa por acidente de trânsito' AS Crime, SUM(`Lesão Corporal Culposa por acidente de trânsito`) AS Quantidade FROM `projeto-desenvolvebigquery.crimes_sp_2019_2020.crimes_sp` UNION ALL
  SELECT 
    'Lesão Corporal Culposa' AS Crime, SUM(`Lesão Corporal Culposa`) AS Quantidade FROM `projeto-desenvolvebigquery.crimes_sp_2019_2020.crimes_sp`
) 
GROUP BY Crime
ORDER BY Total DESC
LIMIT 5;

```

No Looker Studio optei por colocar essa informação em uma tabela em ordem decrescente para facilitar a leitura tanto dos tipos de lesão como dos números totais. 

![Tabela com o total de lesões](https://github.com/user-attachments/assets/ce04b6c0-da96-4bcc-9c8b-986628f3a13b)

E abaixo inseri um gráfico de colunas para facilitar a visualização de qual lesão teve a maior taxa(Lesão corporal dolosa) e qual teve a menor( Lesão corporal seguida de morte).

![Gráfico de coluna ilustrando as maiores taxas de lesões](https://github.com/user-attachments/assets/c8267d1f-02d2-4137-9e17-ebb47130e4bd)


<br>
<br>

Já a terceira e última consulta foi feita para contar o total de cada crime de Homicídio:(Homicídio doloso por acidente de trânsito, Homicídio Culposo por acidente de Trânsito e Homicídio Culposo) o total de cada homicídio é separado por ano 2019/2020.


```sql

SELECT 
  Ano,
  SUM(`Homicídio doloso por acidente de trânsito`) AS Total_Homicidio_Doloso,
  SUM(`Homicídio Culposo por acidente de Trânsito`) AS Total_Homicidio_Culposo_Transito,
  SUM(`Homicídio Culposo`) AS Total_Homicidio_Culposo
FROM `projeto-desenvolvebigquery.crimes_sp_2019_2020.crimes_sp`
WHERE Ano IN (2019, 2020)
GROUP BY Ano
ORDER BY Ano;

```

No Looker Studio para ilustrar essa consulta optei por uma tabela com mapa de calor para destacar a comparação de números de um ano para o outro.

![Tabela de mapa de calor](https://github.com/user-attachments/assets/a58d5137-adcd-48bb-8057-79abf1f51265)

E também como continuação para a mesma consulta inseri um gráfico de barras empilhadas para trazer uma melhor visualização do aumento ou queda dos números de homicídios de um ano para o outro.

![Gráfico de barras empilhadas (https://github.com/user-attachments/assets/7e279ecf-9e29-4b46-b0d7-214216e58787)


E como insight foi observado que os homicídios culposos em trânsito diminuíram de 421 casos em 2019 para 393 casos em 2020, e os homicídios culposos diminuíram de 24 casos em 2019 para 22 casos em 2020, enquanto os homicídios dolosos aumentaram de 3 casos em 2019 para 7 casos em 2020.

<br>
<br>


## Considerações finais

Este projeto demonstrou como o uso de consultas SQL no BigQuery combinado com visualizações no Looker Studio pode oferecer insights sobre a criminalidade ao longo do tempo. As análises ajudam a compreender padrões de comportamento e possibilitam a tomada de decisões informadas, seja por autoridades de segurança pública ou empresas interessadas em melhorar suas estratégias de segurança.

Além disso, a criação de relatórios no Looker Studio facilitou a comunicação dos resultados, transformando os dados em gráficos intuitivos e fáceis de interpretar. Esse tipo de análise pode ser aplicado em diversos setores, desde o planejamento urbano até a otimização de operações de segurança.

Como próximo passo, futuras análises podem incluir a correlação de crimes com variáveis socioeconômicas, bem como o uso de aprendizado de máquina para prever tendências criminosas em áreas específicas.

Este projeto foi uma grande oportunidade de colocar em prática habilidades de análise de dados e visualização, e destaca a importância de ferramentas poderosas como o BigQuery e o Looker Studio no processo de tomada de decisão baseada em dados.





