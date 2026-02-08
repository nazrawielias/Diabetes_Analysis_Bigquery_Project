CREATE OR REPLACE MODEL `my_project.my_dataset.diabetes_boosted_tree_model`
OPTIONS (
  model_type = 'BOOSTED_TREE_CLASSIFIER',
  input_label_cols = ['diabetes'],
  max_iterations = 50,
) AS
SELECT
  age,
  gender,
  race,
  income_ratio,
  education_level,

  weight_kg,
  height_cm,
  bmi,
  waist_circumference_cm,

  systolic_bp,
  diastolic_bp,

  total_cholesterol_si,
  hdl_si,
  log_acr,

  smoker,
  heavy_drinker,
  liver_disease,

  BMI_missing,
  waist_missing,
  glucose_missing,

  diabetes
FROM `my_project.my_dataset.diabetes_data`
WHERE diabetes IS NOT NULL;