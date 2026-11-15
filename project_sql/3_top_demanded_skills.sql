/*
Question: what are the top demanded skills for data analyst jobs?
- Join job postings to inner join table similar to query 2
- Identify the top 5 in-demand skills for a data analyst job
- Focus on all job postings
-Why? It provides insights into the skills that are in demand for Data Analyst positions, helping job seekers focus on relevant skill development.
*/

SELECT 
    skills_dim.skills AS skills_in_demand,
    COUNT(skills_job_dim.skill_id) AS skill_count
FROM
    job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
WHERE
    job_postings_fact.job_title_short = 'Data Analyst'
GROUP BY 
     skills_dim.skills
ORDER BY skill_count DESC
LIMIT 5;

/*
Key Insights: Skills Driving Demand for Data Analyst Roles
The analysis of job postings for Data Analyst roles reveals a clear hierarchy of skills that are most sought after by employers. The top 5 skills identified are:
1. SQL: The foundational skill for querying and managing relational databases, essential for data extraction and manipulation.
2. Python: A versatile programming language widely used for data analysis, statistical modeling, and machine learning applications.
3. Excel: A staple tool for data organization, analysis, and visualization, crucial for both entry-level and advanced data tasks.
4. Tableau: A leading data visualization tool that  enables analysts to create interactive and shareable dashboards, facilitating data-driven decision-making.
5. Power BI: Another powerful data visualization and business intelligence tool that allows for the creation of interactive reports and dashboards, enhancing data storytelling capabilities.
Conclusion:
For aspiring Data Analysts, focusing on developing proficiency in these top-demanded skills can significantly enhance employability and career prospects. 
Mastery of SQL, Python, Excel, Tableau, and Power BI equips professionals with the necessary tools to effectively analyze, visualize, and communicate data insights, aligning with industry expectations 
*/