WITH top_10_jobs AS (
    SELECT
        jpf.job_id,
        jpf.job_title,
        company_dim.name AS company,
        jpf.job_location,
        jpf.salary_year_avg
    FROM job_postings_fact AS jpf
    LEFT JOIN company_dim
        ON jpf.company_id = company_dim.company_id
    WHERE
        jpf.salary_year_avg IS NOT NULL
        AND jpf.job_title LIKE '%Data%Analyst%'
    ORDER BY jpf.salary_year_avg DESC
    LIMIT 10
),

skills_by_sal AS (
    SELECT
        job_skill_tab.job_id,
        job_skill_tab.job_title,
        job_skill_tab.salary_year_avg,
        skills_dim.skills AS skills
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
),

skill_count AS (
    SELECT
        skj.skill_id,
        COUNT(skj.skill_id) AS skill_id_count
    FROM job_postings_fact AS jpf
    LEFT JOIN skills_job_dim AS skj
        ON jpf.job_id = skj.job_id
    WHERE jpf.job_title_short = 'Data Analyst'
    GROUP BY skj.skill_id
    ORDER BY skill_id_count DESC
    LIMIT 10
),

skills_by_demand AS (
    SELECT
        skill_count.skill_id,
        skills_dim.skills,
        skill_count.skill_id_count
    FROM skill_count
    LEFT JOIN skills_dim
        ON skill_count.skill_id = skills_dim.skill_id
)

SELECT
    skills
FROM skills_by_sal
WHERE
    skills IS NOT NULL

UNION

SELECT
    skills
FROM skills_by_demand
WHERE
    skills IS NOT NULL;

/*
INSIGHTS:
    Minimum optimal combo:-
    - SQL + Python
    - Power BI/Tableau
    - AWS (or cloud)
    - 1 big data tool (Spark/Airflow)
*/