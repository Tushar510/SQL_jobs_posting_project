/*
What are the top skills based on salary for Data Analyst jobs?
-Look at the average salary associated with each skill for Data Analyst jobs
-Focus on roles with specified salaries, regardless of location
-Why? It provides insights into the skills that are associated with higher-paying Data Analyst positions, helping job seekers focus on relevant skill development.
*/

SELECT 
    skills_dim.skills AS skills_in_demand,
    ROUND(AVG(job_postings_fact.salary_year_avg),0) AS avg_salary
FROM
    job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
WHERE
    job_postings_fact.job_title_short = 'Data Analyst'
    AND job_postings_fact.salary_year_avg IS NOT NULL
GROUP BY 
     skills_dim.skills
ORDER BY avg_salary DESC
LIMIT 20;

/*
Key Insights: Top 5 Skills Driving Top-Tier Data Analyst Salaries
The analysis of job postings for Data Analyst roles reveals a clear hierarchy of skills that are associated with higher-paying positions. The top 20 skills identified are:
1. SVN: A version control system that is essential for managing code and collaborating on software development projects, often used in data engineering and analytics
2. Solidity: A programming language for writing smart contracts on blockchain platforms, indicating a demand for data analysts with blockchain expertise
3. Couchbase: A NoSQL database technology, highlighting the need    for data analysts to work with non-relational databases in high-paying roles
4. DataRobot: An automated machine learning platform, suggesting that proficiency in AI and machine learning tools is valuable for top-paying data analyst positions
5. Golang: A programming language known for its performance and efficiency, indicating that data analysts with programming skills in Go are in demand for higher-paying

[
  {
    "skills_in_demand": "svn",
    "avg_salary": "400000.0"
  },
  {
    "skills_in_demand": "solidity",
    "avg_salary": "179000.0"
  },
  {
    "skills_in_demand": "couchbase",
    "avg_salary": "160515.0"
  },
  {
    "skills_in_demand": "datarobot",
    "avg_salary": "155485.5"
  },
  {
    "skills_in_demand": "golang",
    "avg_salary": "155000.0"
  },
  {
    "skills_in_demand": "mxnet",
    "avg_salary": "149000.0"
  },
  {
    "skills_in_demand": "dplyr",
    "avg_salary": "147633.3"
  },
  {
    "skills_in_demand": "vmware",
    "avg_salary": "147500.0"
  },
  {
    "skills_in_demand": "terraform",
    "avg_salary": "146733.8"
  },
  {
    "skills_in_demand": "twilio",
    "avg_salary": "138500.0"
  },
  {
    "skills_in_demand": "gitlab",
    "avg_salary": "134126.0"
  },
  {
    "skills_in_demand": "kafka",
    "avg_salary": "129999.2"
  },
  {
    "skills_in_demand": "puppet",
    "avg_salary": "129820.0"
  },
  {
    "skills_in_demand": "keras",
    "avg_salary": "127013.3"
  },
  {
    "skills_in_demand": "pytorch",
    "avg_salary": "125226.2"
  },
  {
    "skills_in_demand": "perl",
    "avg_salary": "124685.8"
  },
  {
    "skills_in_demand": "ansible",
    "avg_salary": "124370.0"
  },
  {
    "skills_in_demand": "hugging face",
    "avg_salary": "123950.0"
  },
  {
    "skills_in_demand": "tensorflow",
    "avg_salary": "120646.8"
  },
  {
    "skills_in_demand": "cassandra",
    "avg_salary": "118406.7"
  }
]
*/