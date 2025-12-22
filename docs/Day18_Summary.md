# Day 18 – Predictive Modeling (Antibiotic Resistance)

## 📌 Objective

The goal of Day 18 was to build a baseline predictive model that can estimate whether a bacterial isolate is Resistant (R) or Sensitive (S) to antibiotics using patient and infection-related features.

This step introduces machine learning into the project and demonstrates how analytics can support early resistance detection in healthcare settings.

## 🧠 Problem Statement

### Predict antibiotic resistance using historical microbiology data based on:

Patient age

Bacteria type

Infection site

Antibiotic name

### Target Variable:

Resistant (R) → 1

Sensitive (S) → 0

Intermediate (I) → 0

## 🗂️ Data Preparation

### 1️⃣ Target Variable Creation

Only records with R (Resistant) and S (Sensitive) were included to simplify binary classification because Logistic regression works with binary numeric outcomes, not text labels.

``` Python
final_df = final_df[final_df['sensitivity'].isin(['R','S','I'])]
final_df['resistance'] = final_df['sensitivity'].map({
    'R': 1,
    'S': 0,
    'I': 0
})
```

### 2️⃣ Encoding Categorical Variables

Machine learning models cannot process text, so categorical columns were converted into numeric codes.

#### Encoded features:

bacteria_name

infection_site

antibiotic_name

``` Python
le_bacteria = LabelEncoder()
le_site = LabelEncoder()
le_antibiotic = LabelEncoder()

final_df['Bacteria_Code'] = le_bacteria.fit_transform(final_df['bacteria_name'])
final_df['Site_Code'] = le_site.fit_transform(final_df['infection_site'])
final_df['Antibiotic_Code'] = le_antibiotic.fit_transform(final_df['antibiotic_name'])
```

### 3️⃣ Feature Selection

#### Independent Variables (X):

Age

Bacteria_Code

Site_Code

Antibiotic_Code

#### Dependent Variable (y):

Resistance (0 or 1)

```Python
X = final_df[['age', 'Bacteria_Code', 'Site_Code', 'Antibiotic_Code']]
y = final_df['resistance']
```

### 4️⃣ Train–Test Split

80% data used for training

20% data used for testing

``` Python
X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.2, random_state=42
)
```

This ensures the model is evaluated on unseen data.

## 🤖 Model Building

Logistic Regression

A Logistic Regression model was chosen as a baseline classification algorithm.

``` Python
model = LogisticRegression(max_iter=1000,class_weight='balanced')
model.fit(X_train, y_train)
```

Class weighting was applied to handle imbalance between resistant and sensitive cases.

### Why Logistic Regression?

Simple and interpretable

Commonly used in healthcare risk prediction

Suitable for binary outcomes

## 📊 Model Evaluation

``` Python
y_pred = model.predict(X_test)

accuracy = accuracy_score(y_test, y_pred)
print("Accuracy:", accuracy)

from sklearn.metrics import confusion_matrix
confusion_matrix(y_test, y_pred)

print(classification_report(y_test, y_pred))
```
## 🧪 Interpretation

- The model correctly identifies 50% of resistant cases and 53% of sensitive cases.

- Resistant recall is prioritized due to clinical importance.

- Some false positives exist, but missing resistant cases is more dangerous than over-flagging.

## 🏥 Clinical Relevance

- Early identification of resistance helps guide appropriate antibiotic selection

- Supports antimicrobial stewardship programs

- Demonstrates how predictive analytics can assist infection control teams

## ⚠️ Limitations

- Label Encoding introduces ordinal assumptions

- Logistic regression captures only linear relationships

## ✅ Key Learning Outcome

- Applied machine learning to a healthcare problem
- Handled categorical data and class imbalance
- Evaluated model using clinically meaningful metrics
- Built a portfolio-ready predictive analytics workflow




