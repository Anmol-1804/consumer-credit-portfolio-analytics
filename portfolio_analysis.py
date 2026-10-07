# Consumer Credit Portfolio Analytics & Delinquency Monitoring
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

df = pd.read_csv("data/portfolio_analysis_data.csv", parse_dates=["issue_date"])

# Executive KPIs
kpis = {
    "Total Loans": len(df),
    "Total Originations": df["loan_amount"].sum(),
    "Average Loan": df["loan_amount"].mean(),
    "Average Interest Rate": df["interest_rate"].mean(),
    "Average DTI": df["debt_to_income"].mean(),
    "Delinquency Rate": df["delinquency_flag"].mean()
}
print(kpis)

# Portfolio segmentation
grade_monitor = df.groupby("grade").agg(
    loans=("loan_amount","size"),
    originations=("loan_amount","sum"),
    delinquency_rate=("delinquency_flag","mean")
).sort_values("delinquency_rate", ascending=False)

purpose_monitor = df.groupby("loan_purpose").agg(
    loans=("loan_amount","size"),
    originations=("loan_amount","sum"),
    delinquency_rate=("delinquency_flag","mean")
).sort_values("delinquency_rate", ascending=False)

print(grade_monitor)
print(purpose_monitor)

# Monthly monitoring
monthly = df.groupby("issue_date").agg(
    loans=("loan_amount","size"),
    originations=("loan_amount","sum"),
    delinquency_rate=("delinquency_flag","mean")
)
print(monthly)
