# Workforce Attrition Analysis

## Business Problem
The company wants to improve employee retention and reduce employee-related costs. However, the HR team does not know which job roles have the highest employee attrition .Because of this, it becomes difficult to take better hiring and retention decisions. This project finds which job roles have the highest employee attrition and how much it costs the company when employees leave.

## Dataset Used
https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset

## Dashboard Preview
<img width="1408" height="796" alt="image" src="https://github.com/user-attachments/assets/2fb69e9c-99b5-44bf-bb1c-6201f5ac317f" />

## Assumptions
1. Replacement cost is estimated as a percentage of annual salary based on employee job level. Employees in higher job levels (Senior) are assumed to cost more to replace.    
    For Example : Replacement Cost Estimation    
    -- Job Level 1 → 30% of his Annual Salary will be the replacement cost for this Employee
    -- Job Level 2 → 50% of Annual Salary
    -- Job Level 3 → 80% of Annual Salary
    -- Job Level 4 → 120% of Annual Salary
    -- Job Level 5 → 150% of Annual Salary
    
2. Attrition Level is categorized as:
    - High → Attrition Rate ≥ 25%
    - Medium → Attrition Rate between 15% and 25%
    - Low → Attrition Rate < 15%

## Key Insights
- **Overall Attrition:**
  The company is facing a moderate employee retention problem with an overall attrition rate of **16%**. **Sales Representatives (40%)**, **Laboratory Technicians (24%)**, and **HR employees (23%)** showed the highest attrition rates. This indicates that employees in these job roles are leaving the company more frequently compared to other roles.
    
- **Overtime Impact:**
  Employees working overtime were generally more likely to leave the company.The biggest difference was observed among **Sales Representatives** and **Laboratory Technicians**, where overtime employees showed much higher attrition rates. However, **Healthcare Representatives** showed very little difference between overtime and non-overtime employees, making them different from the overall trend.
       
- **Replacement Cost Impact:**
The estimated total replacement cost for employee attrition was approximately **₹51.4 Lakhs**. Although **Sales Representatives** had the highest attrition rate, they contributed only around **5%** of the total replacement cost (₹2.86 Lakhs).
    
 **Sales Executives** had a lower attrition rate (**17%**) but contributed the highest replacement cost at approximately **₹35.7 Lakhs**, accounting for nearly **69%** of the total replacement cost.This suggests that attrition in larger employee groups can create a significant financial impact on the company.

## Final Recommendations
1. **Reduce Overtime in High-Attrition Job Roles:**
Employees working overtime in **Sales Representative** and **Laboratory Technician** roles were more likely to leave the company. The company should reduce workload pressure and improve work-life balance for these employees.
2. **Focus More on Sales Executives:**
Even though **Sales Executives** had a lower attrition rate, they created the highest replacement cost for the company.Improving retention in this role can help reduce major hiring and replacement expenses.
3. **Improve Retention of New Employees:**
Employees in some high-attrition job roles were leaving the company after staying for a shorter time.The company should focus on improving the experience of employees during their first few years in these roles to reduce early exits.
