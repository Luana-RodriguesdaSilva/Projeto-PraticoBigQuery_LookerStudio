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
