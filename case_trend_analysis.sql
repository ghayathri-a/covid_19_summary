SELECT
  case_date,
  country_region,
  SUM(confirmed) AS total_confirmed,
  SUM(deaths) AS total_deaths,
  SUM(recovered) AS total_recovered
FROM
  `your_dataset.covid19_summary`
WHERE
  case_date BETWEEN '2021-01-01' AND '2021-12-31'
GROUP BY
  case_date, country_region
ORDER BY
  case_date ASC
