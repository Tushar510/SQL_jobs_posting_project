/*
Question: What are the top-paying data analyst jobs?
- Identify the top 10 highest-paying Data Analyst roles that are available remotely
- Focuses on job postings with specified salaries (remove nulls)
- BONUS: Include company names of top 10 roles
- Why? Highlight the top-paying opportunities for Data Analysts, offering insights into employment options and location flexibility.
*/

SELECT 
    jp.job_id,
    jp.job_title,
    jp.job_location,
    jp.job_schedule_type,
    jp.salary_year_avg,
    jp.job_posted_date, 
    company_dim.name AS company_name

FROM 
    job_postings_fact  jp
LEFT JOIN 
    company_dim 
    ON
     jp.company_id = company_dim.company_id
WHERE
    jp.job_title_short = 'Data Analyst' AND
    jp.job_location = 'Anywhere' AND
    jp.salary_year_avg IS NOT NULL
   
ORDER BY
    jp.salary_year_avg DESC
LIMIT 10;   

SELECT * FROM skills_dim LIMIT 10; 
