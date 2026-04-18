/*
QUESTION: Top demanded skills for data analyst role?
- Help to identify skills on-demand for data analyst role
- Retrieve top 10 skills
- Why? Builds sense of future proofing in the job seekers for the skills
that they pick
*/

WITH skill_count AS (
    SELECT
        skj.skill_id,
        COUNT(skj.skill_id) AS skill_id_count
    FROM job_postings_fact AS jpf
    LEFT JOIN
        skills_job_dim AS skj
    ON
        jpf.job_id = skj.skill_id
    WHERE jpf.job_title_short = 'Data Analyst'
    GROUP BY
        skj.skill_id
    ORDER BY
        skill_id_count DESC
    LIMIT 10
)


SELECT
    skill_count.skill_id,
    skills_dim.skills,
    skill_count.skill_id_count
FROM skill_count
LEFT JOIN
    skills_dim
ON
    skill_count.skill_id = skills_dim.skill_id
ORDER BY
    skill_count.skill_id_count DESC;

/*
INSIGHTS:
Layer 1: Absolute Core (must-have)
    - SQL
    - Python
Without these → you’re not competitive

Layer 2: Analytical + Communication
    - R
    - Power BI
These help you analyze deeper + present insights

Layer 3: Scalable / Advanced Stack
    - Hadoop
    - PySpark
    - Airflow
    - Docker
    - Git
    - NoSQL

These separate:
basic analysts vs modern data professionals
*/



