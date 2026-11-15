/*
Question: what are the top demanded skills for data analyst jobs?
- Join job postings to inner join table similar to query 2
- Identify the top 5 in-demand skills for a data analyst job
- Focus on all job postings
-Why? It provides insights into the skills that are in demand for Data Analyst positions, helping job seekers focus on relevant skill development.
*/

SELECT 
    sd.skills AS Skill,
    COUNT(sjd.skill_id) AS Skill_Count
FROM
    job_postings_fact  jp
INNER JOIN skills_job_dim sjd ON sjd.job_id = jp.job_id
INNER JOIN skills_dim sd ON sd.skill_id = sjd.skill_id
WHERE
    jp.job_title_short = 'Data Analyst'
GROUP BY
    sd.skills
ORDER BY
    Skill_Count DESC
LIMIT 5;