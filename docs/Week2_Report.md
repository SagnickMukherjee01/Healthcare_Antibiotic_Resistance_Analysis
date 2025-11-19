# Week 2: Summary

## Day :8 Summary:

### Bacteria_Site_Pivot:

#### Purpose: To analyze how often each bacteria is isolated from different infection sites.

#### 🔍 1️⃣ Overall Distribution

The total isolates are 1000, spread across 4 major infection sites.

The Urinary tract has the highest number of infections (268 cases, 26.8%).

The Bloodstream has the lowest (227 cases, 22.7%), but still significant.

#### ✅ Insight: 
Urinary infections are the most common source of bacterial isolates in this dataset.

#### 🔍 2️⃣ Most Common Bacteria Overall

Escherichia coli (E. coli) has the highest total count – 179 isolates (17.9%).

Followed by Enterococcus faecalis (177) and Pseudomonas aeruginosa (170).

#### ✅ Insight: 
E. coli remains the most frequent pathogen across all infection types — consistent with clinical patterns (often found in UTIs).

#### 🔍 3️⃣ Site-specific Dominance


#### ✅ Insight:
Different bacteria dominate different sites — a key clinical insight for antibiotic policy design.


#### 🔍 4️⃣ Diversity Observation:

1. Each site shows contributions from multiple bacteria → no single bacteria dominates entirely.

2. The distribution is relatively balanced, showing multi-bacterial infection risk in hospitals.

#### ✅ Insight: 
Infection control should address multiple pathogens simultaneously, not just one.

#### 🧾Summary 

The Bacteria vs Infection Site analysis shows that the urinary tract is the most affected site (26.8%), while the bloodstream has the lowest infection count (22.7%). Escherichia coli is the most common bacterium overall, particularly dominant in urinary infections. Site-specific dominant bacteria include E. coli (Urinary), Klebsiella pneumoniae (Respiratory), Enterococcus faecalis (Bloodstream), and Pseudomonas aeruginosa (Wound). The distribution also reveals that multiple pathogens contribute to each infection site, indicating that infection control strategies should be diverse and site-specific rather than focused on a single bacterium.

![Capture](https://github.com/user-attachments/assets/cf8d50b6-47d6-4e64-9c27-cf28cf97049f)

### Antibiotic vs Resistance(%) Pivot:

#### Purpose: To analyse the count of sensitivity of bacteria on different antibiotics

#### 🔍 1️⃣ Overall Pattern

Across all antibiotics:

Resistant (R): ~35%

Sensitive (S): ~55%

Intermediate (I): ~10%

#### ✅ Insight: 
Around one-third of bacterial isolates show resistance — a concerning level indicating growing antimicrobial resistance (AMR).
More than half are still sensitive, suggesting treatment options are available but require careful choice.
.

#### 🔍 2️⃣ Most Effective Antibiotic (Highest Sensitivity %)

Vancomycin shows the highest sensitivity rate: 58.2%.

Close behind: Tetracycline (56.4%) and Amoxicillin (56%).

#### ✅ Insight: 
Vancomycin remains the most effective antibiotic in this dataset, making it a strong choice for resistant Gram-positive infections.

#### 🔍 3️⃣ Least Effective Antibiotic (Highest Resistance %)

Meropenem has the highest resistance rate: 36.7%, followed closely by Ciprofloxacin (35.4%).

Carbapenem resistance (like Meropenem) is especially alarming, since it’s often the “last-resort” drug.

#### ✅ Insight: 
Meropenem resistance indicates emergence of multidrug-resistant (MDR) strains — a serious clinical concern.

#### 🔍 4️⃣ Moderate Resistance Across the Board

Resistance rates for most antibiotics range from 33–37%, showing no antibiotic is completely safe from resistance.

The Intermediate (I) category (~10%) suggests partial susceptibility — could improve with dose optimization.

#### ✅ Insight: 
Continuous monitoring is essential; rotating or combining antibiotics may reduce further resistance development.

#### 🧾Summary 

The antibiotic resistance analysis revealed that approximately 35% of bacterial isolates were resistant to commonly used antibiotics. Vancomycin demonstrated the highest sensitivity (58.2%), followed by Tetracycline (56.4%) and Amoxicillin (56.0%), indicating their continued effectiveness against many isolates. In contrast, Meropenem exhibited the highest resistance rate (36.7%), highlighting the emergence of carbapenem-resistant strains, a major public health concern.
Overall, resistance patterns suggest moderate antimicrobial resistance in the sample, reinforcing the need for rational antibiotic usage and continuous surveillance to prevent escalation.

![Capture](https://github.com/user-attachments/assets/bc63de97-0bfd-407e-b8c1-dbae03af587a)

### Ward_Patient_Pivot:

#### Purpose: To analyse the number of patients in each ward.

#### 🔍 1️⃣ Overall Patient Distribution

Total patients analyzed: 1200

The distribution across wards is fairly balanced, with each ward handling around 24–26% of total patients.

#### ✅ Insight: 

Patient load is well distributed, showing that no single ward is overburdened.

#### 🔍 2️⃣ Highest Patient Load

Surgery Ward has the highest number of patients (315) — about 26.3% of total.

#### ✅ Insight: 

The surgery department experiences the highest admission rate, likely due to post-operative care and trauma cases.

#### 🔍 3️⃣ Lowest Patient Load

ICU has the lowest count (291) — roughly 24.2% of total.

#### ✅ Insight: 

Slightly fewer patients in ICU may reflect either effective triage or limited critical cases during the study period.

#### 🔍 4️⃣ Pediatric and General Wards

Both Pediatric (292) and General (302) have moderate patient loads, showing balanced utilization of general and child care facilities.

#### ✅ Insight: 

Indicates healthy hospital capacity management across both adult and child patients.

#### 🧾Summary 

The ward-wise analysis revealed a balanced patient distribution across all departments. The Surgery ward recorded the highest admissions (26.3%), followed by the General (25.2%) and Pediatric (24.3%) wards, while the ICU had the lowest patient count (24.2%).

This distribution suggests efficient hospital resource utilization and consistent patient inflow across departments, with slightly higher demand in surgical care.

![Capture](https://github.com/user-attachments/assets/f73770e3-c03c-4427-a8f4-e3a6d296b983)

## Day :9 Summary:

### Top 5 resistant bacteria:

#### SQL Query:

``` sql
select b.Bacteria_Name, count(*) as Resistant_Count from bacteria_isolates as b join Antibiotic_Resistance as a on b.isolate_id=a.isolate_id where a.sensitivity="R" group by b.Bacteria_Name order by Resistant_Count desc limit 5;
```

#### Findings:

Escherichia Coli has highest number of resistant count followed by Enterococcus Faecallis followed by Pseudomonas Aeruginosa

### Antibiotic with highest resistance overall:

#### SQL Query:

``` sql
select Antibiotic_Name, round((sum(case when sensitivity="R" then 1 else 0 end)*100.0)/count(*),2) as Resistance_Percentage from Antibiotic_Resistance group by Antibiotic_Name order by Resistance_Percentage desc limit 1;
```

#### Findings:

Meropenam has highest resistance_percentage followed by Ciprofolxacin and Ceftriaxone

### Multi-drug resistance (bacteria with ≥3 “R”):

#### SQL Query:

```sql
select b.Bacteria_Name, count(distinct a.Isolate_Id) as MDR_Isolates from Bacteria_Isolates as b join Antibiotic_Resistance as a on b.isolate_id=a.isolate_id where a.sensitivity="R" group by b.Bacteria_Name having count(distinct a.Antibiotic_Name)>=3 order by MDR_Isolates desc;
```

#### Findings:

Escherichia Coli is the most dangerous for patient care followed by Enterococcus Faecallis followed by Pseudomonas Aeruginosa

## Day :10 Summary:

### Bacteria frequency:

#### Findings:

E. coli and Enterococcus faecalis were the most common bacteria.

#### Python Code used:

```Python
plt.figure(figsize=(10,6))
sns.countplot(y="bacteria_name",data=final_df,order=final_df["bacteria_name"].value_counts().index)
plt.title("Frequency of Bacteria Isolates")
plt.xlabel("Count")
plt.ylabel("Bacteria Name")
plt.savefig("bacteria_frequency.png", dpi=300, bbox_inches="tight")
plt.show()
```

### Antibiotic Resistance:

#### Findings:

Meropenem and Ciprofloxacin showed the highest resistance rates (~35%).

#### Python Code used:

```Python
plt.figure(figsize=(10,6))
resistance_rate=resistance_rate.sort_values(by="resistance_rate",ascending=False)
sns.barplot(x="resistance_rate",y="antibiotic_name",data=resistance_rate)
plt.title("Antibiotic Resistance Rates (%)")
plt.xlabel("Resistance (%)")
plt.ylabel("Antibiotic")
plt.savefig("Antibiotic Resistance Rate.png", dpi=300, bbox_inches="tight")
plt.show()
```
### Age Distribution:

#### Findings:

The mean (45.6 years) and median (46 years) ages are almost equal, suggesting that the age distribution of infected patients is roughly symmetric. Most infections occur among middle-aged individuals, with no major skew toward younger or older age groups.

#### Python Code used:

```Python
plt.figure(figsize=(8,6))
sns.histplot(final_df["age"],bins=15,kde=True)
mean_age=final_df["age"].mean()
median_age=final_df["age"].median()
plt.axvline(mean_age,color="red",linestyle="--",label=f'Mean: {mean_age:.1f}')
plt.axvline(median_age,color="green",linestyle="-.",label=f'Median: {median_age:.1f}')
plt.title("Age Distribution of Infected Patients")
plt.xlabel("Age")
plt.ylabel("Count")
plt.legend()
plt.tight_layout()

plt.savefig('''Age Distribution of Infected
.png''', dpi=300, bbox_inches="tight")


plt.show()
```

## Day :11 Summary

#### Resistance Rate vs Age Group

The trend is not linear. The highest overall resistance is seen in the youngest population, 0-18 (36.8%), and the 46-60 group (36.1%). The lowest rates are in the 31-45 (33.9%) and 60+ (33.0%) groups.

#### Resistance Rate vs Infection Site
There isn't a massive difference between sites, but Wound infections show the highest overall resistance rate (36.6%), while Bloodstream infections show the lowest (33.5%).

#### Heatmap Deep Dive (The Cross-Tabulation)
The heatmap is the most valuable chart as it shows the interaction between both variables.

##### The Single Hottest Spot:
The most critical problem is Wound infections in the 19-30 age group, which has a 12.1% resistance rate. This is the highest value on the entire chart by a significant margin.

##### The Single Coldest Spot:
The 19-30 age group also has the lowest resistance rate on the chart: 5.5% for Respiratory infections. This indicates extreme variance within this single age group.

##### The Most Consistent Problem:
Urinary infections show high resistance across almost all age groups (10.7%, 10.5%, 9.8%, 10.7%). This is a broad, systemic issue, not an isolated one.

## Day :12 Summary

### Chi-square test between bacteria and resistance:-

To investigate whether antibiotic resistance varies significantly across different bacterial species, a Chi-square test of independence was conducted. The sensitivity results were collapsed into two categories:

Resistant (R)

Not Resistant (S + I)

A contingency table was created for each bacteria species, followed by calculation of expected frequencies and Chi-square contributions for each cell. The overall Chi-square statistic and p-value were then computed.

#### Test Result

Chi-square statistic: Sum of all χ² components to get the χ² statistic

Degrees of freedom: (rows−1)(columns−1)

p-value (right-tail): 0.83

#### Interpretation

Since the p-value (0.83) is much greater than the significance level (α = 0.05), we fail to reject the null hypothesis.

#### Conclusion

There is no statistically significant association between the type of bacteria and the likelihood of antibiotic resistance.
In simple terms, the resistance pattern does not vary meaningfully across bacteria species in this dataset. The observed differences in resistance are small and can be explained by normal random variation rather than a true underlying relationship.

#### Practical Implication

This suggests that antibiotic resistance is uniformly distributed across the common hospital pathogens in this dataset. No single bacteria shows an unusually high or low tendency toward resistance when compared statistically. Further studies with larger sample sizes or additional clinical factors may be necessary to identify specific resistance trends.




