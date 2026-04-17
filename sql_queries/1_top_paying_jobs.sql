/*
QUESTION: What are the top-paying data analyst jobs?
- Identify top 10 high-paying data analyst jobs
- Focus on job postings with specified salary (remove nulls)
- Why? Highlight the top-paying data analyst jobs offering insights for potential employees
*/

SELECT
    jpf.job_title,
    ROUND(AVG(jpf.salary_year_avg), 2) AS avg_yearly_salary
FROM job_postings_fact AS jpf
WHERE
    jpf.salary_year_avg IS NOT NULL AND
    jpf.job_title LIKE '%Data%Analyst%'
GROUP BY
    jpf.job_title
ORDER BY
    avg_yearly_salary DESC
LIMIT 10;

