/*
Question: what skills are required for the top-paying data analyst jobs?
- Use the top 10 highest-paying Data Analyst roles identified in the previous query
- Identify the skills required for these top-paying roles
- Why? It provides insights into the skills that are in demand for high-paying Data Analyst positions,
 helping job seekers focus on relevant skill development.

*/

SELECT 
    jp.job_id,
    jp.job_title,
    jp.job_location,
    jp.salary_year_avg,
    company_dim.name AS company_name,
    skills.skills AS required_skills

FROM 
    job_postings_fact  jp
LEFT JOIN  company_dim ON jp.company_id = company_dim.company_id
INNER JOIN skills_job_dim job_to_skills ON jp.job_id = job_to_skills.job_id
INNER JOIN skills_dim skills ON job_to_skills.skill_id = skills.skill_id
WHERE
    jp.job_title_short = 'Data Analyst' AND
    jp.job_location = 'Anywhere' AND
    jp.salary_year_avg IS NOT NULL
   
ORDER BY
    jp.salary_year_avg DESC
LIMIT 10;   


/*
Key Insights: Skills Driving Top-Tier Data Analyst Salaries
Based on the analysis of top-paying roles (exemplified by the $255K+ Associate Director of Data Insights position at AT&T), commanding a premium salary in data analytics 
requires a hybrid skill set that bridges traditional analysis and data engineering.

Key Takeaways for Job Seekers:

-Beyond the Basics: While foundational tools like SQL and Excel remain strictly required, they are no longer sufficient on their own for top-tier compensation.
-Programming is Mandatory: Advanced programming capabilities in Python and R are essential. Familiarity with specific Python data manipulation libraries (like Pandas) and development
 environments (Jupyter) is expected.
-Cloud & Big Data Command a Premium: The highest-paying roles require the ability to operate at scale. Proficiency in major cloud ecosystems (AWS, Azure) and big data processing frameworks (PySpark, Databricks) is what separates standard analyst roles from lucrative leadership or senior insight positions.

Conclusion:
To maximize earning potential, Data Analysts should focus their upskilling efforts on transitioning from local data processing to cloud-based, distributed data environments. 
Mastering the intersection of statistical programming (Python/R) and cloud data infrastructure (AWS/Azure/Databricks) is the clearest path to the highest salary brackets.
[
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_location": "Anywhere",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "required_skills": "sql"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_location": "Anywhere",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "required_skills": "python"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_location": "Anywhere",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "required_skills": "r"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_location": "Anywhere",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "required_skills": "azure"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_location": "Anywhere",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "required_skills": "databricks"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_location": "Anywhere",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "required_skills": "aws"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_location": "Anywhere",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "required_skills": "pandas"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_location": "Anywhere",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "required_skills": "pyspark"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_location": "Anywhere",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "required_skills": "jupyter"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_location": "Anywhere",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "required_skills": "excel"
  }
]
*/