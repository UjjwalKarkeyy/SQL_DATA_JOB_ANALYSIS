/*
QUESTION: What skills are required for the top-paying analyst jobs?
- Using top-10 highest-paying data analyst jobs query
- Adding specific skills required for each role
- Why? It not only provides an insight into 'what' roles are there, but also prepares individuals
by delivering skills required to land those roles
*/

WITH top_10_jobs AS(
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
    LIMIT 10
)

SELECT
    job_skill_tab.job_id,
    job_skill_tab.job_title,
    job_skill_tab.salary_year_avg,
    STRING_AGG(skills_dim.skills, ', ') AS skills
FROM (
    SELECT
        tj.job_id,
        tj.job_title,
        tj.salary_year_avg,
        skills_job_dim.skill_id
    FROM top_10_jobs AS tj
    LEFT JOIN skills_job_dim
        ON tj.job_id = skills_job_dim.job_id
) AS job_skill_tab
LEFT JOIN skills_dim
    ON job_skill_tab.skill_id = skills_dim.skill_id
GROUP BY
    job_skill_tab.job_id,
    job_skill_tab.job_title,
    job_skill_tab.salary_year_avg;

/*
INSIGHTS:

1. Core Skills (must-have)
Python + SQL + (optional R)

2. System Skills (to stand out)
AWS + Data pipelines + Backend thinking

3. Ecosystem Skills (to become “job-ready”)
Databases + Visualization + Big Data tools
*/


    
