```md
## Business Problem

The company wants to improve employee retention and reduce employee-related costs.  
However, the HR team does not know which job roles have the highest employee attrition.  
Because of this, it becomes difficult to make better hiring and retention decisions.  

This project analyzes employee attrition patterns to identify:
- Which job roles have the highest employee attrition
- How overtime affects attrition
- The estimated replacement cost caused by employee exits

---

## Dashboard Preview

<img width="1400" height="800" alt="Workforce Attrition Dashboard" src="YOUR_DASHBOARD_IMAGE_LINK">

---

## Dataset Used

[IBM HR Analytics Employee Attrition & Performance Dataset](YOUR_DATASET_LINK)

---

## Assumptions

- Replacement cost is estimated as a percentage of annual salary based on employee job level.  
  Employees in higher job levels are assumed to cost more to replace due to recruitment, onboarding, training, and productivity loss.

- Attrition levels were classified using the following business rules:
  - High → Attrition Rate ≥ 25%
  - Medium → Attrition Rate between 15% and 25%
  - Low → Attrition Rate < 15%

- Replacement Cost Estimation:
  - Job Level 1 → 30% of Annual Salary
  - Job Level 2 → 50% of Annual Salary
  - Job Level 3 → 80% of Annual Salary
  - Job Level 4 → 120% of Annual Salary
  - Job Level 5 → 150% of Annual Salary

---

## Key Insights

- The company is facing a moderate employee retention problem with an overall attrition rate of **16%**.

- **Sales Representatives (40%)**, **Laboratory Technicians (24%)**, and **HR employees (23%)** showed the highest attrition rates, indicating that employees in these job roles are leaving the company more frequently compared to other roles.

- Employees working overtime were generally more likely to leave the company.  
  The biggest difference was observed among **Sales Representatives** and **Laboratory Technicians**, where overtime employees showed much higher attrition rates.

- However, **Healthcare Representatives** showed very little difference between overtime and non-overtime employees, making them different from the overall trend.

- The estimated total replacement cost for employee attrition was approximately **₹51.4 Lakhs**.

- Although **Sales Representatives** had the highest attrition rate, they contributed only around **5%** of the total replacement cost (**₹2.86 Lakhs**).

- In contrast, **Sales Executives** had a lower attrition rate (**17%**) but contributed the highest replacement cost at approximately **₹35.7 Lakhs**, accounting for nearly **69%** of the total replacement cost.

- This suggests that attrition in larger employee groups can create a significant financial impact on the company.

---

## Final Recommendations

1. Reduce overtime pressure in **Sales Representative** and **Laboratory Technician** roles, as employees working overtime in these job roles were more likely to leave the company.

2. Focus more on retaining **Sales Executives**, since this role contributed the highest replacement cost despite having a lower attrition rate.

3. Improve retention in job roles where employees are leaving after staying for a shorter time by improving the early employee experience in these roles.
```
