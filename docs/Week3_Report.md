# Week 3 Summary – Dashboarding, Modeling & Interpretation

## Overview

Week 3 focused on transforming cleaned healthcare data into actionable insights using dashboards, statistical analysis, and predictive modeling. The goal was to understand antibiotic resistance patterns across bacteria, wards, infection sites, and patient characteristics, and to evaluate whether resistance can be predicted using basic clinical features.

----

## Dashboard Insights

Interactive Power BI dashboards were created to analyze resistance patterns and infection burden.

### Key Findings:
- **Meropenem** has highest resistance rate.

- **E.coli** shows the highest resistance especially to Ceftriaxone.

- **Enterococcus faecalis** is highly resistant to Ciprofloxacin.

- The **Surgery ward** has the highest infection burden among all hospital wards.

- **Urinary tract infections (UTIs)** show the highest resistance percentages overall.

- **Respiratory tract infections** demonstrate the highest sensitivity rates.

- **Vancomycin** has the highest sensitivity across bacteria.

- **Tetracycline** shows the lowest resistance, making both comparatively reliable treatment options in this dataset.

These dashboards help identify high-risk bacteria-antibiotic combinations and wards requiring targeted infection control.

----

## Predictive Model Results

A **logistic regression model** was developed to predict antibiotic resistance (Resistant vs Sensitive) using:

- Age

- Bacteria type  

- Infection site  

- Antibiotic name

### Model Performance:

- **Resistant case recall:** ~50%

- **Sensitive case recall:** ~53%

The model prioritizes identifying resistant cases, which is clinically important because missing resistance poses higher risk than false positives. While overall performance is moderate, the model demonstrates the feasibility of resistance prediction using basic clinical variables.

----

## Key Trends & Conclusions

- Antibiotic resistance rates range narrowly (~33%–37%), suggesting resistance patterns are influenced more by **contextual factors** than drastic drug-specific variation.

- **Antibiotic choice** remains the strongest determinant of treatment success.

- **Antibiotic choice** remains the strongest determinant of treatment success.

- UTIs represent a critical area for resistance monitoring, while respiratory infections remain relatively more sensitive.

- Predictive modeling can support early warning systems but requires richer clinical features for higher accuracy.

----

## Week 3 Outcome

By the end of Week 3, the project successfully progressed from descriptive analytics to interpretive and predictive analysis, bridging dashboards with real-world clinical decision support.





