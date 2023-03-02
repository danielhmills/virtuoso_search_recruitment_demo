-- Guide for loading search recruitment demo data

DROP TABLE  "DEMO"."SEARCH"."APPLICANTS";

CREATE TABLE "DEMO"."SEARCH"."APPLICANTS" (
  "applicant_id" INTEGER,
  "first_name" VARCHAR(255),
  "last_name" VARCHAR(255),
  "email" VARCHAR(255),
  "phone_number" VARCHAR(255),
  "street_address" VARCHAR(255),
  "city" VARCHAR(255),
  "state" VARCHAR(255),
  "zip_code" VARCHAR(255),
  "location_uri" VARCHAR(255),
  "state_uri" VARCHAR(255),
  PRIMARY KEY ("applicant_id")
);

INSERT INTO "DEMO"."SEARCH"."APPLICANTS" ("applicant_id", "first_name", "last_name", "email", "phone_number", "street_address", "city", "state", "zip_code", "location_uri", "state_uri")
VALUES (1, 'John', 'Doe', 'johndoe@email.com', '(23)-56-7890', '123 Main St', 'Springfield', 'IL', '12345', 'Springfield_Illinois', 'Illinois');

INSERT INTO "DEMO"."SEARCH"."APPLICANTS" ("applicant_id", "first_name", "last_name", "email", "phone_number", "street_address", "city", "state", "zip_code", "location_uri", "state_uri")
VALUES (2, 'Jane', 'Smith', 'janesmith@email.com', '555-555-5555', '456 Oak St', 'Chicago', 'IL', '54321', 'Chicago_Illinois', 'Illinois');

INSERT INTO "DEMO"."SEARCH"."APPLICANTS" ("applicant_id", "first_name", "last_name", "email", "phone_number", "street_address", "city", "state", "zip_code", "location_uri", "state_uri")
VALUES (3, 'Michael', 'Johnson', 'michaelj@example.com', '123-123-1234', '789 Maple Ave', 'Madison', 'WI', '67890', 'Madison_Wisconsin', 'Wisconsin');

INSERT INTO "DEMO"."SEARCH"."APPLICANTS" ("applicant_id", "first_name", "last_name", "email", "phone_number", "street_address", "city", "state", "zip_code", "location_uri", "state_uri")
VALUES (4, 'Sarah', 'Williams', 'sarahw@example.com', '555-123-4567', '1010 Elm St', 'New York', 'NY', '54321', 'New_York_City', 'New_York');

INSERT INTO "DEMO"."SEARCH"."APPLICANTS" ("applicant_id", "first_name", "last_name", "email", "phone_number", "street_address", "city", "state", "zip_code", "location_uri", "state_uri")
VALUES (5, 'David', 'Lee', 'davidlee@example.com', '555-789-1234', '1212 Pine St', 'Los Angeles', 'CA', '98765', 'Los_Angeles_California', 'California');

