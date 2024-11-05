SELECT
  case_date,
  country_region,
  SUM(deaths) / NULLIF(SUM(confirmed), 0) AS case_fatality_rate
FROM
  `your_dataset.covid19_summary`
WHERE
  case_date BETWEEN '2021-01-01' AND '2021-12-31'
GROUP BY
  case_date, country_region
ORDER BY
  case_date ASC
