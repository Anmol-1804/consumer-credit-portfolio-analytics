-- CONSUMER CREDIT PORTFOLIO MONITORING
-- 1. Executive KPIs
SELECT COUNT(*) AS total_loans,
       SUM(loan_amount) AS total_originations,
       AVG(loan_amount) AS avg_loan_amount,
       AVG(interest_rate) AS avg_interest_rate,
       AVG(debt_to_income) AS avg_dti,
       AVG(delinquency_flag)*100 AS delinquency_rate_pct
FROM portfolio_analysis_data;

-- 2. Delinquency by grade
SELECT grade, COUNT(*) AS loans, SUM(loan_amount) AS originations,
       AVG(delinquency_flag)*100 AS delinquency_rate_pct
FROM portfolio_analysis_data
GROUP BY grade ORDER BY delinquency_rate_pct DESC;

-- 3. Delinquency by purpose
SELECT loan_purpose, COUNT(*) AS loans, SUM(loan_amount) AS originations,
       AVG(delinquency_flag)*100 AS delinquency_rate_pct
FROM portfolio_analysis_data
GROUP BY loan_purpose ORDER BY delinquency_rate_pct DESC;

-- 4. Monthly portfolio monitoring
SELECT issue_date, COUNT(*) AS loans, SUM(loan_amount) AS originations,
       AVG(delinquency_flag)*100 AS delinquency_rate_pct
FROM portfolio_analysis_data
GROUP BY issue_date ORDER BY issue_date;

-- 5. High-value delinquent loans using a window function
SELECT *
FROM (
    SELECT *, NTILE(10) OVER (ORDER BY loan_amount DESC) AS loan_value_decile
    FROM portfolio_analysis_data
) x
WHERE loan_value_decile = 1 AND delinquency_flag = 1
ORDER BY loan_amount DESC;
