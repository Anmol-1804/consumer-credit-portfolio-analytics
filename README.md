# 📊 Consumer Credit Portfolio Analytics & Delinquency Monitoring

> **A management-focused portfolio analytics project using 10,000 Lending Club loans.**

![Python](https://img.shields.io/badge/Python-Analytics-3776AB?style=for-the-badge&logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Portfolio%20Analytics-4479A1?style=for-the-badge&logo=postgresql&logoColor=white)
![Excel](https://img.shields.io/badge/Excel-MIS-217346?style=for-the-badge&logo=microsoftexcel&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-EDA-150458?style=for-the-badge&logo=pandas&logoColor=white)

![Executive Overview](./visualizations/00_executive_portfolio_overview.png)

## 🎯 Business Objective

The project treats the loan book as a **portfolio to be monitored**, rather than simply building another default-prediction model.

### Key questions
| Business Question | Analytical Approach |
|---|---|
| How healthy is the portfolio? | Executive KPIs |
| Where is delinquency concentrated? | Grade & purpose segmentation |
| Does borrower leverage matter? | DTI analysis |
| How does risk evolve over time? | Monthly monitoring |
| Where should management focus? | High-risk/high-value segmentation |

## 📌 Portfolio Snapshot

| Metric | Value |
|---|---:|
| **Loans** | 10,000 |
| **Total Originations** | $163.6M |
| **Average Loan** | $16,362 |
| **Average Interest Rate** | 12.43% |
| **Average DTI** | 19.31 |
| **Delinquency Rate** | 1.1% |

## 🔍 Portfolio Monitoring

### Delinquency by Grade
![Grade](./visualizations/01_delinquency_by_grade.png)

### Highest-Delinquency Loan Purposes
![Purpose](./visualizations/02_delinquency_by_purpose.png)

### Monthly Delinquency Trend
![Monthly](./visualizations/03_monthly_delinquency.png)

### DTI Segmentation
![DTI](./visualizations/04_dti_segmentation.png)

## 📊 Additional Analytics

![Utilization](./visualizations/05_utilization_vs_delinquency.png)
![Originations](./visualizations/06_originations_by_grade.png)
![Rates](./visualizations/07_interest_rate_distribution.png)
![Income](./visualizations/08_income_vs_loan_amount.png)

## 🧰 Technology Stack

**Python:** Pandas, NumPy, Matplotlib  
**SQL:** KPI queries, segmentation, window functions  
**Excel:** Management Information System (MIS)  
**Analytics:** EDA, segmentation, delinquency monitoring, statistical interpretation

## 🗂️ Repository Structure

```text
Consumer-Credit-Portfolio-Analytics/
├── data/
│   ├── loans_full_schema_clean.csv
│   ├── portfolio_analysis_data.csv
│   └── data_dictionary.csv
├── visualizations/
│   ├── 00_executive_portfolio_overview.png
│   ├── 01_delinquency_by_grade.png
│   ├── 02_delinquency_by_purpose.png
│   ├── 03_monthly_delinquency.png
│   ├── 04_dti_segmentation.png
│   ├── 05_utilization_vs_delinquency.png
│   ├── 06_originations_by_grade.png
│   ├── 07_interest_rate_distribution.png
│   └── 08_income_vs_loan_amount.png
├── sql/
│   └── portfolio_monitoring.sql
├── excel/
│   └── Consumer_Credit_Portfolio_MIS.xlsx
├── portfolio_analysis.py
└── requirements.txt
```

## 📚 Dataset

OpenIntro Lending Club `loans_full_schema` dataset containing 10,000 loan records. This repository uses cleaned, analysis-ready derivatives of the source data.

## ⚠️ Interpretation Note

The delinquency flag is defined from the available loan-status categories for portfolio monitoring. It is an analytical monitoring indicator and **not a production credit-risk score**.

---

**Built for portfolio analytics, business reporting and data-driven decision support.**
