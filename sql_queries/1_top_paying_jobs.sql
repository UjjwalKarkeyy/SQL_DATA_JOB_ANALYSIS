/*
QUESTION: What are the top-paying data analyst jobs?
- Identify top 10 high-paying data analyst jobs
- Focus on job postings with specified salary (remove nulls)
- Why? Highlight the top-paying data analyst jobs offering insights for potential employees
*/

SELECT
    jpf.job_id,
    jpf.job_title,
    company_dim.name AS company,
    jpf.job_location,
    jpf.salary_year_avg
FROM job_postings_fact AS jpf
LEFT JOIN
    company_dim
ON
    jpf.company_id = company_dim.company_id
WHERE
    jpf.salary_year_avg IS NOT NULL
        AND
    jpf.job_title LIKE '%Data%Analyst%' 
ORDER BY
    jpf.salary_year_avg DESC
LIMIT 10;

