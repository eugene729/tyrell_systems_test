-- Insert data into jobs table
INSERT INTO jobs (id, name, media_id, job_category_id, job_type_id, description, detail, business_skill, knowledge, location, activity, academic_degree_doctor, academic_degree_master, academic_degree_professional, academic_degree_bachelor, salary_statistic_group, salary_range_first_year, salary_range_average, salary_range_remarks, restriction, estimated_total_workers, remarks, url, seo_description, seo_keywords, sort_order, publish_status, version, created_by, created, modified, deleted)
VALUES
(1, 'Job 1', 1, 1, 1, 'Description 1', 'Detail 1', 'Business Skill 1', 'Knowledge 1', 'Location 1', 'Activity 1', 1, 0, 0, 1, 'Group 1', 50000.00, 55000.00, 'Remarks 1', 'Restriction 1', 100, 'Remarks 1', 'http://example.com/job1', 'SEO Description 1', 'SEO Keywords 1', 1, 1, 1, 1, '2023-10-17 10:00:00', '2023-10-17 10:00:00', NULL),
(2, 'Job 2', 2, 1, 2, 'Description 2', 'Detail 2', 'Business Skill 2', 'Knowledge 2', 'Location 2', 'Activity 2', 0, 1, 0, 1, 'Group 2', 60000.00, 65000.00, 'Remarks 2', 'Restriction 2', 200, 'Remarks 2', 'http://example.com/job2', 'SEO Description 2', 'SEO Keywords 2', 2, 1, 1, 2, '2023-10-17 10:00:00', '2023-10-17 10:00:00', NULL);

-- Insert data into job_categories table
INSERT INTO job_categories (id, name, sort_order, created_by, created, modified, deleted)
VALUES
(1, 'Category 1', 1, 1, '2023-10-17 10:00:00', '2023-10-17 10:00:00', NULL),
(2, 'Category 2', 2, 1, '2023-10-17 10:00:00', '2023-10-17 10:00:00', NULL);

-- Insert data into job_types table
INSERT INTO job_types (id, name, job_category_id, sort_order, created_by, created, modified, deleted)
VALUES
(1, 'Type 1', 1, 1, 1, '2023-10-17 10:00:00', '2023-10-17 10:00:00', NULL),
(2, 'Type 2', 1, 2, 1, '2023-10-17 10:00:00', '2023-10-17 10:00:00', NULL);

-- Insert data into personalities table
INSERT INTO personalities (id, name, deleted)
VALUES
(1, 'Personality 1', NULL),
(2, 'Personality 2', NULL);

-- Insert data into jobs_personalities table
INSERT INTO jobs_personalities (id, job_id, personality_id, deleted)
VALUES
(1, 1, 1, NULL),
(2, 2, 2, NULL);

-- Insert data into practical_skills table
INSERT INTO practical_skills (id, name, deleted)
VALUES
(1, 'Skill 1', NULL),
(2, 'Skill 2', NULL);

-- Insert data into jobs_practical_skills table
INSERT INTO jobs_practical_skills (id, job_id, practical_skill_id, deleted)
VALUES
(1, 1, 1, NULL),
(2, 2, 2, NULL);

-- Insert data into basic_abilities table
INSERT INTO basic_abilities (id, name, deleted)
VALUES
(1, 'Ability 1', NULL),
(2, 'Ability 2', NULL);

-- Insert data into jobs_basic_abilities table
INSERT INTO jobs_basic_abilities (id, job_id, basic_ability_id, deleted)
VALUES
(1, 1, 1, NULL),
(2, 2, 2, NULL);

-- Insert data into affiliates table (Tools and Career Paths)
INSERT INTO affiliates (id, type, name, deleted)
VALUES
(1, 1, 'Tool 1', NULL),
(2, 3, 'Career Path 1', NULL);

-- Insert data into jobs_tools table
INSERT INTO jobs_tools (id, job_id, affiliate_id, deleted)
VALUES
(1, 1, 1, NULL),
(2, 2, 2, NULL);

-- Insert data into jobs_career_paths table
INSERT INTO jobs_career_paths (id, job_id, affiliate_id, deleted)
VALUES
(1, 1, 2, NULL),
(2, 2, 1, NULL);

-- Insert data into jobs_rec_qualifications table
INSERT INTO jobs_rec_qualifications (id, job_id, affiliate_id, deleted)
VALUES
(1, 1, 1, NULL),
(2, 2, 2, NULL);

-- Insert data into jobs_req_qualifications table
INSERT INTO jobs_req_qualifications (id, job_id, affiliate_id, deleted)
VALUES
(1, 1, 2, NULL),
(2, 2, 1, NULL);
