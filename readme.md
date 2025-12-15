# 📉 Customer Churn Analysis & Prediction

_A data-driven project to predict the customer churn and identify critical risk factors, and build a predictive model to predict and retain possible high-risk customers._

---

## 📌 Table of Contents
- <a href="#overview">Overview</a>
- <a href="#project-goal">Project Goal</a>
- <a href="#dataset-summary">Dataset Summary</a>
- <a href="#tools--technologies">Tools & Technologies</a>
- <a href="#data-analysis-sql">Data Analysis (EDA)</a>
- <a href="#model-prediction--key-findings">Model Prediction & Key Findings</a>
- <a href="#dashboard">Dashboard</a>
- <a href="#final-recommendations">Final Recommendations</a>
- <a href="#author--contact">Author & Contact</a>

---
<h2><a class="anchor" id="overview"></a>Overview</h2>

This project addresses a critical business challenge: customer attrition.The analysis reveals a **27.0% overall churn rate**, representing 2,000 customers lost from a total base of 6,418. This report combines historical churn patterns with predictive modeling to identify at-risk customers and drive targeted retention initiatives.

---
<h2><a class="anchor" id="project-goal"></a>Project Goal</h2>

The primary goal is to provide strategic insights and actionable recommendations to reduce customer attrition and enhance retention strategies.The project identifies critical risk factors across demographics, contract types, and customer lifecycle stages, creating a roadmap for strategic intervention.

---
<h2><a class="anchor" id="dataset-summary"></a>Dataset Summary</h2>

* **Total Customer Base:** 6,418 active customers analyzed.
* **Total Churn:** 2,000 customers have churned.
* **Overall Churn Rate:** 27.0%.
* **Key Risk Factors Analyzed:** Demographics (Gender, Age), Contract Type, Tenure Group, Services used, Payment Method, and State.

| Feature Category | Key Columns |
| :--- | :--- |
| **Customer Profile** | Customer\_ID, Gender, Age, Married, State, Number\_of\_Referrals |
| **Contract & Billing** | Contract, Payment\_Method, Paperless\_Billing, Tenure\_in\_Months, Value\_Deal |
| **Services Used** | Phone\_Service, Multiple\_Lines, Internet\_Service, Internet\_Type, Online\_Security, Online\_Backup, Device\_Protection\_Plan, Premium\_Support, Streaming\_TV, Streaming\_Movies, Streaming\_Music, Unlimited\_Data |
| **Financial Metrics** | Monthly\_Charge, Total\_Charges, Total\_Revenue, Total\_Refunds, Total\_Extra\_Data\_Charges, Total\_Long\_Distance\_Charges |
| **Churn Status** | Customer\_Status, Churn\_Category, Churn\_Reason |
---

<h2><a class="anchor" id="tools--technologies"></a>Tools & Technologies</h2>

* **Python : Scikit-learn | Pandas| Seaborn | Matplot :** Data Collection , Data Cleaning , Feature Engineering and Predictive modeling using ML .
* **SQL:** Data ingestion and EDA and Views creation.
* **Power BI:** Visualization, Dashboard creation, and reporting.
* **GitHub:** Version control.

---
<h2><a class="anchor" id="project-structure"></a>Project Structure</h2>

```
customer_churn_analysis/
│
├── README.md
├── .gitignore
├── customer_churn_analysis_report.pdf
│
├── notebooks/                  # Jupyter notebooks
├── churn_prediction_model.ipynb
│
├── scripts/                    # Python scripts for ingestion and processing
│   ├── customer_churn.sql
│   └── views_churn.sql
│
├── dashboard/                  # Power BI dashboard file
│   └── Churn_analysis.pbix
```
---
<h2><a class="anchor" id="data-analysis-sql"></a>Data Analysis (EDA)</h2>

### Critical Risk Factors Identified:

* **Gender Disparity:** Female customers represent **64.1% of total churn** (1,111 customers).
* **Age Group:** The **>50 age group** accounts for the largest contribution to attrition with a **31.0% churn rate**.
* **Contract Type:** **Month-to-Month** contracts are the most critical risk factor.
* **Tenure Group:** The highest churn rate is observed in the **<6 Months** tenure group.
* **Geographic Risk:** The state of **Jammu & Kashmir** shows the highest churn rate at **57.2%**.
* **Churn Categories:** The top reasons for attrition are **Competition (761)**, **Attitude (301)**, and **Dissatisfaction (300)**.

---
<h2><a class="anchor" id="model-prediction--key-findings"></a>Model Prediction & Key Findings</h2>

### Random Forest Churn Prediction

A **Random Forest Classifier** was trained to assess the risk of customer churn, achieving high reliability in a critical retention context. The model identifies key risk factors such as low Tenure, Month-to-Month contracts, and high Monthly Charges as primary drivers.

| Metric | Result | Business Impact |
| :--- | :--- | :--- |
| **Overall Accuracy** | **85%** | Robust model performance across the customer base. |
| **Churn Precision** | **83%** | For every 10 customers predicted to churn, 8 are correct, minimizing false positive marketing costs. |
| **Churn Recall** | **65%** | Correctly identifies 65% of actual churners, enabling proactive intervention. |
| **True Positives (Actionable)** | **236** | The model successfully and reliably identified 236 customers who were truly at risk of leaving (from the test set). |

### Actionable Insight: The predictive pipeline identified **381 at-risk customers** across the entire dataset for immediate intervention, maximizing the ROI of retention campaigns.
---
<h2><a class="anchor" id="dashboard"></a>Dashboard</h2>

A comprehensive report and dashboard was created to visualize key performance indicators and risk factors.

* **Key Visualizations:**
    * Total Churn by Gender (Female: 64.1%, Male: 35.85%).
    * Churn Rate by Contract Type (Month-to-Month is highest).
    * Churn Rate by Age Group.
    * Summary of Predicted Churners.

![Customer Churn Analysis](dashboard/dashboard.png)

---
<h2><a class="anchor" id="final-recommendations"></a>Final Recommendations</h2>

Four strategic programs were developed to address the key drivers of churn:

1.  **Contract Migration Campaign:** Target the 357 at-risk Month-to-Month customers with incentives to migrate to long-term contracts.Offer pricing discounts or loyalty rewards to drive commitment.
2.  **Early Intervention Program:** Deploy enhanced onboarding and dedicated support for the **<6 Months tenure group**.This includes proactive check-ins and rapid issue resolution.
3.  **Demographic Campaigns:** Implement specialized retention strategies for **female customers** and address the **57.2% churn rate in Jammu & Kashmir** through local market research.
4.  **Experience Enhancement:** Improve service quality, analyze competitive pricing, and conduct comprehensive customer service training to address Competition, Dissatisfaction, and Attitude churn drivers.

---

<h2><a class="anchor" id="author--contact"></a>Author & Contact</h2>

**Sanket Vishwakarma**  
Data Analyst  
📧 Email: sanketvishwakarma4103@gmail.com  
🔗 [LinkedIn](https://www.linkedin.com/in/sanket-vishwakarma-9b26b7358?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app)  
