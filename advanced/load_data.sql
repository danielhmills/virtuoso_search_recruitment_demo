-- SQL Table Creation + Data Entry
-- Load Applicant Info

DROP TABLE  "demo"."search"."applicants";
CREATE TABLE "demo"."search"."applicants" (
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

GRANT SELECT ON "demo"."search"."applicants" TO SPARQL_SELECT;

INSERT INTO "demo"."search"."applicants" ("applicant_id", "first_name", "last_name", "email", "phone_number", "street_address", "city", "state", "zip_code", "location_uri", "state_uri")
VALUES (1, 'John', 'Doe', 'johndoe@email.com', '(23)-56-7890', '123 Main St', 'Springfield', 'IL', '12345', 'Springfield_Illinois', 'Illinois');

INSERT INTO "demo"."search"."applicants" ("applicant_id", "first_name", "last_name", "email", "phone_number", "street_address", "city", "state", "zip_code", "location_uri", "state_uri")
VALUES (2, 'Jane', 'Smith', 'janesmith@email.com', '555-555-5555', '456 Oak St', 'Chicago', 'IL', '54321', 'Chicago_Illinois', 'Illinois');

INSERT INTO "demo"."search"."applicants" ("applicant_id", "first_name", "last_name", "email", "phone_number", "street_address", "city", "state", "zip_code", "location_uri", "state_uri")
VALUES (3, 'Michael', 'Johnson', 'michaelj@example.com', '123-123-1234', '789 Maple Ave', 'Madison', 'WI', '67890', 'Madison_Wisconsin', 'Wisconsin');

INSERT INTO "demo"."search"."applicants" ("applicant_id", "first_name", "last_name", "email", "phone_number", "street_address", "city", "state", "zip_code", "location_uri", "state_uri")
VALUES (4, 'Sarah', 'Williams', 'sarahw@example.com', '555-123-4567', '1010 Elm St', 'New York', 'NY', '54321', 'New_York_City', 'New_York');

INSERT INTO "demo"."search"."applicants" ("applicant_id", "first_name", "last_name", "email", "phone_number", "street_address", "city", "state", "zip_code", "location_uri", "state_uri")
VALUES (5, 'David', 'Lee', 'davidlee@example.com', '555-789-1234', '1212 Pine St', 'Los Angeles', 'CA', '98765', 'Los_Angeles_California', 'California');


-- Load Applicant Skills
DROP TABLE "demo"."search"."applicant_skills";
CREATE TABLE "demo"."search"."applicant_skills" (
"id" INTEGER,
"applicant_id" INTEGER,
"skill_class" VARCHAR(255),
"skill_name" VARCHAR(255),
"skill_level" VARCHAR(255),
PRIMARY KEY ("id")
);

GRANT SELECT ON "demo"."search"."applicant_skills" TO SPARQL_SELECT;

INSERT INTO "demo"."search"."applicant_skills"   
VALUES (1, 1, 'Leadership', 'Leadership', 'Advanced');

INSERT INTO "demo"."search"."applicant_skills" 
VALUES (2, 1, 'StrategicPlanning', 'Strategic Planning', 'Advanced');

INSERT INTO "demo"."search"."applicant_skills" 
VALUES (3, 1, 'BusinessDevelopment', 'Business Development', 'Intermediate');

INSERT INTO "demo"."search"."applicant_skills" 
VALUES (4, 1, 'Sales', 'Sales', 'Intermediate');

INSERT INTO "demo"."search"."applicant_skills" 
VALUES (5, 1, 'TeamManagement', 'Team Management', 'Advanced');

INSERT INTO "demo"."search"."applicant_skills" 
VALUES (6, 1, 'FinancialAnalysis', 'Financial Analysis', 'Intermediate');

INSERT INTO "demo"."search"."applicant_skills" 
VALUES (7, 2, 'FinancialReporting', 'Financial Reporting', 'Advanced');

INSERT INTO "demo"."search"."applicant_skills" 
VALUES (8, 2, 'Budgeting', 'Budgeting', 'Advanced');

INSERT INTO "demo"."search"."applicant_skills" 
VALUES (9, 2, 'Accounting', 'Accounting', 'Advanced');

INSERT INTO "demo"."search"."applicant_skills" 
VALUES (10, 2, 'FinancialManagement', 'Financial Management', 'Intermediate');

INSERT INTO "demo"."search"."applicant_skills" 
VALUES (11, 2, 'OperationsManagement', 'Operations Management', 'Intermediate');

INSERT INTO "demo"."search"."applicant_skills" 
VALUES (12, 2, 'SupplyChainManagement', 'Supply Chain Management', 'Intermediate');

-- Add Applicant Positions

DROP TABLE "demo"."search"."applicant_positions";
CREATE TABLE "demo"."search"."applicant_positions" (
    "id" INTEGER,
    "applicant_id" INTEGER,
    "positions_company_name" VARCHAR(255),
    "positions_company_uri" VARCHAR(255),
    "positions_title" VARCHAR(255),
    "positions_title_uri" VARCHAR(255),
    "positions_startDate" DATE,
    "positions_endDate" DATE,
    "positions_isCurrent" VARCHAR,
    "positions_summary" VARCHAR(255),
    "positions_duration_years" INTEGER,
    PRIMARY KEY ("id")
);

GRANT SELECT ON "demo"."search"."applicant_positions" TO SPARQL_SELECT;


INSERT INTO "demo"."search"."applicant_positions"   
VALUES (1, 1, 'ABC Corp', 'ABCCorp', 'Chief Executive Officer', 'ChiefExecutiveOfficer', '2019-01-01', NULL, 'true', 'As CEO of ABC Corp, I am responsible for driving overall growth and profitability of the organization.', 3);

INSERT INTO "demo"."search"."applicant_positions" 
VALUES (2, 1, 'DEF Inc', 'DEFInc', 'Chief Operating Officer', 'ChiefOperatingOfficer', '2017-01-01', '2018-12-31', 'false', 'As COO of DEF Inc, I was responsible for driving operational excellence across the organization, including supply chain management and logistics.', 2);

INSERT INTO "demo"."search"."applicant_positions" 
VALUES (3, 2, 'GHI LLC', 'GHILLC', 'Chief Financial Officer', 'ChiefFinancialOfficer', '2020-06-01', NULL, 'true', 'As CFO of GHI LLC, I am responsible for overseeing all financial operations, including accounting, budgeting, and financial reporting.', 1);

INSERT INTO "demo"."search"."applicant_positions" 
VALUES (4, 2, 'JKL Corporation', 'JKLCorporation', 'Chief Operating Officer', 'ChiefOperatingOfficer', '2018-01-01', '2020-05-31', 'false', 'As COO of JKL Corporation, I was responsible for ensuring operational efficiency and driving growth across the organization.', 2);

INSERT INTO "demo"."search"."applicant_positions" 
VALUES (5, 3, 'MNO Enterprises', 'MNOEnterprises', 'Vice President of Sales', 'VicePresidentofSales', '2015-01-01', '2022-01-01', 'false', 'As Vice President of Sales at MNO Enterprises, I was responsible for driving revenue growth through strategic partnerships and effective sales team management.', 7);

INSERT INTO "demo"."search"."applicant_positions" 
VALUES (6, 4, 'PQR Industries', 'PQRIndustries', 'Director of Marketing', 'DirectorOfMarketing', '2018-05-01', NULL, 'true', 'As Director of Marketing at PQR Industries, I am responsible for developing and executing the companys marketing strategy, including branding, advertising, and market research.', 3);

INSERT INTO "demo"."search"."applicant_positions" 
VALUES (7, 4, 'STU LLC', 'STULLC', 'Vice President of Operations', 'VicePresidentOfOperations', '2016-01-01', '2018-04-30', 'false', 'As Vice President of Operations at STU LLC, I was responsible for overseeing all day-to-day operations, including production, supply chain management, and logistics.', 2);

INSERT INTO "demo"."search"."applicant_positions"
VALUES (8, 5, 'VWX Company', 'VWXCompany', 'Software Engineer', 'SoftwareEngineer', '2021-01-01', null, 'true', 'As a software engineer at VWX Company, I developed and maintained software applications for clients in the financial services industry.', 5);

INSERT INTO "demo"."search"."applicant_positions"
VALUES (9, 5, 'VWX Company', 'VWXCompany', 'Marketing Manager', 'MarketingManager', '2019-05-01', '2021-12-31', 'false', 'As Marketing Manager at VWX Company, I developed and executed marketing campaigns that increased brand awareness and drove sales growth.', 4);

INSERT INTO "demo"."search"."applicant_positions"
VALUES (10, 6, 'YZA Corporation', 'YZACorporation', 'Human Resources Manager', 'HumanResourcesManager', '2018-06-01', null, 'true', 'As Human Resources Manager at YZA Corporation, I managed the recruitment, onboarding, and training of new employees, as well as employee relations and benefits administration.', 3);

INSERT INTO "demo"."search"."applicant_positions"
VALUES (11, 6, 'YZA Corporation', 'YZACorporation', 'Financial Analyst', 'FinancialAnalyst', '2017-03-01', '2019-08-31', 'false', 'As Financial Analyst at YZA Corporation, I performed financial modeling and analysis to support strategic decision-making and improve operational efficiency.', 4);

INSERT INTO "demo"."search"."applicant_positions"
VALUES (12, 7, 'ABC Inc.', 'ABCInc', 'Project Manager', 'ProjectManager', '2019-01-01', null, 'true', 'As Project Manager at ABC Inc., I led cross-functional teams to plan and execute complex projects, ensuring on-time delivery and high-quality outcomes.', 5);

-- Add Applicant Languages

DROP TABLE "demo"."search"."applicant_languages";
CREATE TABLE "demo"."search"."applicant_languages" (
"id" INTEGER,
"applicant_id" INTEGER,
"language" VARCHAR(255),
"proficiency" VARCHAR(255),
PRIMARY KEY ("id")
);

GRANT SELECT ON "demo"."search"."applicant_languages" TO SPARQL_SELECT;


INSERT INTO "demo"."search"."applicant_languages"
VALUES (1, 1, 'English', 'Fluent');

INSERT INTO "demo"."search"."applicant_languages"
VALUES (2, 1, 'French', 'Intermediate');

INSERT INTO "demo"."search"."applicant_languages"
VALUES (3, 1, 'Spanish', 'Beginner');

INSERT INTO "demo"."search"."applicant_languages"
VALUES (4, 2, 'English', 'Native');

INSERT INTO "demo"."search"."applicant_languages"
VALUES (5, 2, 'German', 'Advanced');

INSERT INTO "demo"."search"."applicant_languages"
VALUES (6, 3, 'English', 'Fluent');

INSERT INTO "demo"."search"."applicant_languages"
VALUES (7, 3, 'Mandarin', 'Intermediate');

INSERT INTO "demo"."search"."applicant_languages"
VALUES (8, 4, 'English', 'Native');

INSERT INTO "demo"."search"."applicant_languages"
VALUES (9, 4, 'Spanish', 'Intermediate');

INSERT INTO "demo"."search"."applicant_languages"
VALUES (10, 5, 'English', 'Advanced');

INSERT INTO "demo"."search"."applicant_languages"
VALUES (11, 5, 'Portuguese', 'Intermediate');

-- Add Applicant Education

DROP TABLE  "demo"."search"."applicant_education";

CREATE TABLE "demo"."search"."applicant_education" (
"id" INTEGER,
"education_school_name" VARCHAR(255),
"education_school_name_uri" VARCHAR(255),
"education_degree" VARCHAR(255),
"education_degree_uri" VARCHAR(255),
"education_field_of_study" VARCHAR(255),
"education_field_of_study_uri" VARCHAR(255),
"education_start_date" DATE,
"education_end_date" DATE,
"education_is_completed" VARCHAR,
PRIMARY KEY ("id")
);

GRANT SELECT ON "demo"."search"."applicant_education" TO SPARQL_SELECT;


INSERT INTO "demo"."search"."applicant_education"
VALUES (1, 'Harvard University', 'Harvard_University', 'MBA', 'MBA', 'Business Administration', 'Business_Administration', '2015-09-01', '2017-05-01', 'true');

INSERT INTO "demo"."search"."applicant_education"
VALUES (2, 'Massachusetts Institute of Technology (MIT)', 'Massachusetts_Institute_of_Technology', 'Bachelor of Science', 'Bachelor_of_Science', 'Computer Science', 'Computer_Science', '2010-09-01', '2014-05-01', 'true');

INSERT INTO "demo"."search"."applicant_education"
VALUES (3, 'Stanford University', 'Stanford_University', 'MBA', 'MBA', 'Business Administration', 'Business_Administration', '2012-09-01', '2014-05-01', 'true');

INSERT INTO "demo"."search"."applicant_education"
VALUES (4, 'University of California, Los Angeles (UCLA)', 'University_of_California,_Los_Angeles', 'Bachelor of Arts', 'Bachelor_of_Arts', 'Marketing', 'Marketing', '2008-09-01', '2012-05-01', 'true');

INSERT INTO "demo"."search"."applicant_education"
VALUES (5, 'Columbia University', 'Columbia_University', 'Bachelor of Science', 'Bachelor_of_Science', 'Computer Science', 'Computer_Science', '2017-09-01', '2021-05-01', 'true');


-- Add Applicant Certifications
DROP TABLE "demo"."search"."applicant_certifications";

CREATE TABLE "demo"."search"."applicant_certifications" (
"id" INTEGER,
"certifications_name" VARCHAR(255),
"certifications_authority" VARCHAR(255),
"certifications_date" DATE,
PRIMARY KEY ("id")
);

GRANT SELECT ON "demo"."search"."applicant_certifications" TO SPARQL_SELECT;


INSERT INTO "demo"."search"."applicant_certifications"
VALUES (1, 'Certified Business Analysis Professional (CBAP)', 'International Institute of Business Analysis (IIBA)', '2021-06-01');

INSERT INTO "demo"."search"."applicant_certifications"
VALUES (2, 'Project Management Professional (PMP)', 'Project Management Institute (PMI)', '2020-01-01');

INSERT INTO "demo"."search"."applicant_certifications"
VALUES (3, 'Professional Scrum Master I', 'Scrum.org', '2019-02-01');

INSERT INTO "demo"."search"."applicant_certifications"
VALUES (4, 'Microsoft Certified: Azure Solutions Architect Expert', 'Microsoft', '2021-01-01');

INSERT INTO "demo"."search"."applicant_certifications"
VALUES (5, 'Certified Information Systems Security Professional (CISSP)', 'International Information System Security Certification Consortium (ISC)²', '2022-01-01');


-- Add Job Postings

DROP TABLE demo.search.job_postings;

CREATE TABLE demo.search.job_postings (
    id INTEGER,
    company VARCHAR(255),
    company_class VARCHAR(255),
    title VARCHAR(255),
    title_dbpedia VARCHAR(255),
    title_class VARCHAR(255),
    category VARCHAR(255),
    employment_type VARCHAR(255),
    location VARCHAR(255),
    skill_1 VARCHAR(255),
    skill_2 VARCHAR(255),
    skill_3 VARCHAR(255),
    skill_1_class VARCHAR(255),
    skill_2_class VARCHAR(255),
    skill_3_class VARCHAR(255),
    PRIMARY KEY (id)
);

GRANT SELECT ON "demo"."search"."job_postings" TO SPARQL_SELECT;

INSERT INTO demo.search.job_postings 
VALUES (1,'AceTech','AceTech','Chief Executive Officer','ChiefExecutiveOfficer','Chief_Executive_Officer','Executive','Full-Time','San Francisco','Leadership','Strategic Planning','Business Development','Leadership','StrategicPlanning','BusinessDevelopment');

INSERT INTO demo.search.job_postings 
VALUES (2,'NovaCorp','NovaCorp','Chief Operating Officer','ChiefOperatingOfficer','Chief_Operating_Officer','Executive','Full-Time','New York','Operations Management','Financial Reporting','Supply Chain Management','OperationsManagement','FinancialReporting','SupplyChainManagement');

INSERT INTO demo.search.job_postings 
VALUES (3,'Sunrise Holdings','SunriseHoldings','Chief Financial Officer','ChiefFinancialOfficer','Chief_Financial_Officer','Executive','Full-Time','Los Angeles','Financial Analysis','Accounting','Financial Management','FinancialAnalysis','Accounting','FinancialManagement');

INSERT INTO demo.search.job_postings 
VALUES (4,'BlueSky Enterprises','BlueSkyEnterprises','Chief Marketing Officer','ChiefMarketingOfficer','Chief_Marketing_Officer','Executive','Full-Time','Chicago','Marketing Strategy','Branding','Market Research','MarketingStrategy','Branding','MarketResearch');

INSERT INTO demo.search.job_postings 
VALUES (5,'Peak Performance','PeakPerformance','Chief Technology Officer','ChiefTechnologyOfficer','Chief_Technology_Officer','Executive','Full-Time','Seattle','Software Development','Object-Oriented Programming','Database Management','SoftwareDevelopment','Object-OrientedProgramming','DatabaseManagement');

INSERT INTO demo.search.job_postings 
VALUES (6,'Maxwell Dynamics','MaxwellDynamics','Chief Information Officer','ChiefInformationOfficer','Chief_Information_Officer','Executive','Full-Time','Dallas','Web Development','Database Management','User Experience Design','WebDevelopment','DatabaseManagement','UserExperienceDesign');

INSERT INTO demo.search.job_postings 
VALUES (7,'Spectrum Group','SpectrumGroup','Chief Human Resources Officer','ChiefHumanResourcesOfficer','Chief_Human_Resources_Officer','Executive','Full-Time','Denver','Team Management','Relationship Building','Sales','TeamManagement','RelationshipBuilding','Sales');

INSERT INTO demo.search.job_postings 
VALUES (8,'Golden Horizon','GoldenHorizon','Chief Sales Officer','ChiefSalesOfficer','Chief_Sales_Officer','Executive','Full-Time','Miami','Sales','Sales Management','Marketing','Sales','SalesManagement','Marketing');

INSERT INTO demo.search.job_postings 
VALUES (9,'Infinite Growth','InfiniteGrowth','Chief Strategy Officer','ChiefStrategyOfficer','Chief_Strategy_Officer','Executive','Full-Time','Phoenix','Business Strategy','Strategic Planning','Marketing','BusinessStrategy','StrategicPlanning','Marketing');

INSERT INTO demo.search.job_postings 
VALUES (10,'Innovative Ideas','InnovativeIdeas','Chief Creative Officer','ChiefCreativeOfficer','Chief_Creative_Officer','Executive','Full-Time','San Diego','Creative Design','Marketing','Branding','CreativeDesign','Marketing','Branding');

INSERT INTO "demo"."search"."job_postings"
VALUES (11,'Nimbus Industries','NimbusIndustries','Chief Legal Officer','ChiefLegalOfficer','Chief_Legal_Officer','Executive','Full-Time','Detroit','Legal','Compliance','Project Management','Legal','Compliance','ProjectManagement');

INSERT INTO "demo"."search"."job_postings"
VALUES (12,'Global Network','GlobalNetwork','Chief Business Development Officer','ChiefBusinessDevelopmentOfficer','Chief_Business_Development_Officer','Executive','Full-Time','Houston','Business Development','Marketing','Project Management','BusinessDevelopment','Marketing','ProjectManagement');