### **Project Title: Cohort Analysis and Customer Lifetime Value Prediction**

#### **Project Overview:**
This project involved a detailed cohort analysis to provide a more accurate and actionable estimate of Customer Lifetime Value (CLV) for an e-commerce site. The task was a follow-up request to improve upon previous CLV calculations by incorporating all user registrations, not just those who made purchases, and to predict future revenue using cohort trends. The analysis was conducted using SQL in BigQuery, and the results were visualized in Google Sheets.

#### **Objective:**
1. Adjust CLV calculations to include all users visiting the site, aligning with marketing's broader definition of customer registration.
2. Analyze weekly cohort data to understand user behaviour and revenue trends over a 12-week period post-registration.
3. Predict future revenue for cohorts with incomplete data, providing a forward-looking view of expected customer value.

#### **Data Source:**
- **Database:** `#############`
- **Table:** `raw_events`
- **Time Frame:** Weekly cohorts up to the current week of 2021-01-24

#### **Methodology:**
1. **Data Extraction:**
   - Pulled data of weekly revenue divided by registrations, using the first session date as the registration date for cohorts.
   - Used `user_pseudo_id` to identify unique users.
   
2. **Weekly Average Revenue by Cohorts:**
   - Calculated average revenue per user for each cohort on a weekly basis.
   - Applied conditional formatting in Google Sheets to visualize revenue trends across cohorts.

3. **Cumulative Revenue by Cohorts:**
   - Computed cumulative revenue for each cohort by summing weekly averages progressively.
   - Analyzed cumulative growth rates to assess long-term revenue potential per user.

4. **Revenue Prediction for Future Weeks:**
   - Predicted future cohort revenues using historical cumulative growth rates.
   - Estimated 12-week revenue expectations for each cohort, providing a comprehensive CLV projection.

#### **Tools & Technologies:**
- **SQL Analysis:** BigQuery for data extraction, transformation, and calculation of cohort metrics.
- **Data Visualization:** Google Sheets for creating tables, applying conditional formatting, and generating predictive charts.

#### **Key Insights:**
- The revised approach to CLV calculation, incorporating all registered users, provides a more holistic view of customer value.
- Cohort analysis highlighted short user lifecycles, with most revenue generated within the first few weeks of registration.
- Predictive modeling of future revenues offers actionable insights into potential growth opportunities and areas for marketing intervention.

#### **Challenges & Solutions:**
- **Challenge:** Including all site visitors in the CLV calculation, regardless of purchase behavior.
- **Solution:** Adjusted SQL queries to account for all first-session users, enhancing the robustness of cohort revenue tracking.

#### **Recommendations:**
- Focus marketing efforts on retaining users beyond the initial registration period to maximize CLV.
- Utilize predictive revenue insights to optimize customer engagement strategies in the first critical weeks post-registration.

#### **Outcome:**
The project successfully provided a detailed, data-driven understanding of customer behavior and projected revenue, enhancing the ability of the business to make informed decisions about customer retention and value maximization.

---

This is the link to my [spreadsheet](https://docs.google.com/spreadsheets/d/1P2GucDBzETw7D0KkbRzm-_xLXuAI9WE2OuZESZUox9M/edit?gid=105417213#gid=105417213). The spreadsheet shows my results from the **analysis**, **dashboard**, **the data and my workings**, **insights**, and **recommendations**. 

Note: *I have also attached the .sql file to this repository*. You can also check the SQL Query [here](https://github.com/bayoxx/Customer-lifetime-value-prediction/blob/main/Cohort%20analysis%20for%20customer%20segmentation%20and%20CLV.sql).


