# 📊 Data Analyst Job Market Analysis
### (Demand vs. Salary vs. Optimal Skills)

## 👤 About the Author
**Ujjwal Karki** *Aspiring Data Analyst | BScIT Student | Future Data Scientist* 🌐 [karkiujjwal.com.np](http://karkiujjwal.com.np)

I am a final-year IT student dedicated to bridging the gap between raw data and actionable business insights. My current focus is building a rock-solid foundation in data analytics as a strategic gateway to advanced Data Science. I am driven by a deep curiosity for **statistical logic**—understanding not just *what* the data says, but the mathematical "why" behind the patterns we discover.

---

## 📌 Project Overview
This project analyzes the **Data Analyst job market** to identify the most effective path for career growth. This was carried out to enhance and refresh my skills of SQL (like use of CTEs & Sub-queries) hence preparing me for effective Data Analysis. By querying real-world job posting data, I set out to answer three key questions:

1. Which skills are **most in-demand** in the current market?
2. Which skills are associated with the **highest-paying roles**?
3. What is the **optimal skillset** that balances employability with salary potential?

The goal was to move beyond "popular" tools and identify a **strategic skill path** for maximizing professional impact.

---

## 🗂️ Dataset
The analysis is based on a comprehensive dataset of job postings, including:
- Job titles and descriptions
- Skills mapping tables
- Salary information  

**Key tables used:** `job_postings_fact`, `company_dim`, `skills_job_dim`, `skills_dim`.

---

## 🧠 Key Analysis Steps
I utilized **PostgreSQL** to perform the following:
1. **Top 10 High-Paying Roles:** Filtered roles with salary data specifically for "Data Analyst" titles to find the market ceiling.
2. **Skills for Top-Paying Jobs:** Linked job postings with skill mappings to see what technical depth high-earners possess.
3. **Most In-Demand Skills:** Aggregated skill frequency across all postings to identify the "entry-level" essentials.
4. **Logic Implementation:** Leveraged **CTEs (Common Table Expressions)** and **Sub-queries** to handle complex multi-table joins and data filtering.

---

## 🔍 Key Findings

### 🔹 1. Core Skills Dominate the Market
**SQL** and **Python** appear at the top with nearly equal demand.  
👉 **Insight:** These are **non-negotiable foundations**. Proficiency here is the prerequisite for any further specialization.

### 🔹 2. The Technical Evolution of the Analyst
The data shows high demand for tools like **Airflow, Spark, and Git**.  
👉 **Insight:** The role is shifting from traditional "reporting" toward a **"Technical + System-Aware"** profile. Understanding the data pipeline is becoming as important as analyzing the data itself.

### 🔹 3. High Salary Requires Specialization
Top-paying roles often include "Quantitative Analyst" or specialized domain roles.  
👉 **Insight:** Higher salaries are driven by **Technical Depth** and the ability to handle scalable infrastructure.

---

## ⚖️ Demand vs. Salary Matrix

| Category | Skills | Purpose |
| :--- | :--- | :--- |
| **Core** | SQL, Python | Get hired / Essential logic |
| **Visualization** | Power BI, Tableau | Communicate and "tell the story" |
| **Infrastructure** | AWS, Spark, Airflow | Scale insights and increase salary |
| **Engineering** | Git, Docker | Ensure production-ready workflows |

---

## 🎯 The Strategic Roadmap
Based on this analysis, I have mapped out my own professional development path:

* **Phase 1: Technical Foundation (Current):** Mastering **Advanced SQL (CTEs, Sub-queries)** and Python to deliver clean, efficient analysis.
* **Phase 2: Statistical Inquiry:** Deepening my understanding of the statistical logic that transforms descriptive data into predictive insights.
* **Phase 3: Scalability:** Integrating cloud and pipeline tools (AWS, Airflow) to handle data at scale.
* **Phase 4: Transition:** Leveraging this analytical foundation to pivot into **Data Science and Research** roles.

---

## 🛠️ Tools Used
- **SQL (PostgreSQL):** Advanced Joins, CTEs, and Aggregations.
- **Data Analysis:** Identifying market trends and salary correlations.

---

## 🚀 Future Improvements
- Add Python-based visualizations (Matplotlib/Seaborn) to represent these findings graphically.
- Include an industry-wise breakdown (e.g., Finance vs. Tech).
- Analyze how the demand for "Generative AI" skills is impacting the traditional analyst role.

---

## 📌 Conclusion
This project confirms that the most valuable Data Analyst is a **hybrid professional**. By combining high-demand foundational skills with an engineering mindset and statistical curiosity, one can build a career that is both stable and high-growth.

---
**Explore more of my work at [karkiujjwal.com.np](https://karkiujjwal.com.np)**