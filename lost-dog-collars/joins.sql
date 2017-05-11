# YOUR SQL CODE GOES HERE

SELECT lost_dog_collars.dog_name, dog_owners.name AS owner
  FROM dog_owners
  JOIN lost_dog_collars
  ON (dog_owners.dog_name = lost_dog_collars.dog_name);


SELECT lost_dog_collars.dog_name AS dogs_uknown_owners
  FROM dog_owners
  RIGHT OUTER JOIN lost_dog_collars
  ON (dog_owners.dog_name = lost_dog_collars.dog_name)
  WHERE dog_owners.name IS NULL;

SELECT lost_dog_collars.dog_name, dog_owners.name AS owner
  FROM dog_owners
  RIGHT OUTER JOIN lost_dog_collars
  ON (dog_owners.dog_name = lost_dog_collars.dog_name);

SELECT dog_owners.name AS owner, lost_dog_collars.dog_name
  FROM dog_owners
  LEFT OUTER JOIN lost_dog_collars
  ON (dog_owners.dog_name = lost_dog_collars.dog_name);
