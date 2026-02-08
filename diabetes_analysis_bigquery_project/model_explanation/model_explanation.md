# Diabetes Risk Modeling – Boosted Tree Regressor

## Problem Statement
The goal of this project is to analyze diabetes risk using demographic, anthropometric, clinical, and lifestyle data.  

---

## Model Used
**Boosted Tree Regressor (BigQuery ML)**

- Framework: Google BigQuery ML
- Model type: `BOOSTED_TREE_REGRESSOR`
- Learning method: Gradient boosting over decision trees

---

## Why a Boosted Tree Regressor?
I chose a boosted tree regressor for the following reasons:

- Handles **non-linear relationships** common in medical data (e.g., BMI vs diabetes risk)
- Automatically captures **feature interactions**
- Robust to outliers and mixed feature scales

---

## Dataset Description
- Source: NHANES 1999–2023 (processed and curated for this project)
- Rows: Varies after filtering missing labels
- Target variable: `diabetes`
- Missing values handled using explicit missing-indicator features

---

## Features Used

### Demographic
- `age`
- `gender`
- `race`

### Anthropometric
- `weight_kg`
- `height_cm`
- `bmi`
- `waist_circumference_cm`

### Clinical
- `systolic_bp`
- `diastolic_bp`
- `total_cholesterol_si`
- `hdl_si`
- `log_acr`

### Lifestyle & Conditions
- `smoker`
- `heavy_drinker`

### Missingness Indicators
- `BMI_missing`
- `waist_missing`
- `glucose_missing`

These indicators allow the model to learn patterns related to missing data rather than relying on imputation alone.

---

## Model Explainability
Global feature importance was extracted using `ML.GLOBAL_EXPLAIN` in BigQuery ML.

The most influential features included:
- BMI
- Waist circumference
- Age
- Blood pressure measurements

This aligns with established medical knowledge about diabetes risk factors.

---

## Limitations
- The dataset is observational and not causal
- Diabetes label is simplified and may not capture full disease progression
- No time-series or longitudinal features included
- Model performance may vary on external populations

---

## Conclusion
This project demonstrates how boosted tree regression can be used to model diabetes risk in a flexible and interpretable way using BigQuery ML. The approach balances performance with explainability, making it suitable for healthcare-related analytical tasks.
