DROP TABLE IF EXISTS list_of_ingredients;

CREATE TABLE list_of_ingredients(
  id SERIAL PRIMARY KEY,
  ingredient_name VARCHAR(255) NOT NULL
);
