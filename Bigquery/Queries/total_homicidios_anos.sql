SELECT 
  Ano,
  SUM(`Homicídio doloso por acidente de trânsito`) AS Total_Homicidio_Doloso,
  SUM(`Homicídio Culposo por acidente de Trânsito`) AS Total_Homicidio_Culposo_Transito,
  SUM(`Homicídio Culposo`) AS Total_Homicidio_Culposo
FROM `projeto-desenvolvebigquery.crimes_sp_2019_2020.crimes_sp`
WHERE Ano IN (2019, 2020)
GROUP BY Ano
ORDER BY Ano;

