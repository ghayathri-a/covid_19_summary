SELECT
  case_date,
  country_region,
  SUM(vaccinations_administered) AS total_vaccinations
FROM
  `your_dataset.covid19_vaccinations`
WHERE
  case_date BETWEEN '2021-01-01' AND '2021-12-31'
GROUP BY
  case_date, country_region
ORDER BY
  case_date ASC
