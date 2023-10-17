-- Jobs Table
CREATE TABLE jobs (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    media_id INT,
    job_category_id INT,
    job_type_id INT,
    description TEXT,
    detail TEXT,
    business_skill TEXT,
    knowledge TEXT,
    location VARCHAR(255),
    activity TEXT,
    academic_degree_doctor BOOLEAN,
    academic_degree_master BOOLEAN,
    academic_degree_professional BOOLEAN,
    academic_degree_bachelor BOOLEAN,
    salary_statistic_group VARCHAR(255),
    salary_range_first_year DECIMAL(10, 2),
    salary_range_average DECIMAL(10, 2),
    salary_range_remarks TEXT,
    restriction TEXT,
    estimated_total_workers INT,
    remarks TEXT,
    url VARCHAR(255),
    seo_description TEXT,
    seo_keywords TEXT,
    sort_order INT,
    publish_status INT,
    version INT,
    created_by INT,
    created TIMESTAMP,
    modified TIMESTAMP,
    deleted TIMESTAMP
);

-- Job Categories Table
CREATE TABLE job_categories (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    sort_order INT,
    created_by INT,
    created TIMESTAMP,
    modified TIMESTAMP,
    deleted TIMESTAMP
);

-- Job Types Table
CREATE TABLE job_types (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    job_category_id INT,
    sort_order INT,
    created_by INT,
    created TIMESTAMP,
    modified TIMESTAMP,
    deleted TIMESTAMP
);

-- Personalities Table
CREATE TABLE personalities (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    -- Add other fields as needed
    deleted TIMESTAMP
);

-- Jobs Personalities Table
CREATE TABLE jobs_personalities (
    id INT PRIMARY KEY,
    job_id INT,
    personality_id INT,
    -- Add other fields as needed
    deleted TIMESTAMP
);

-- Practical Skills Table
CREATE TABLE practical_skills (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    -- Add other fields as needed
    deleted TIMESTAMP
);

-- Jobs Practical Skills Table
CREATE TABLE jobs_practical_skills (
    id INT PRIMARY KEY,
    job_id INT,
    practical_skill_id INT,
    -- Add other fields as needed
    deleted TIMESTAMP
);

-- Basic Abilities Table
CREATE TABLE basic_abilities (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    -- Add other fields as needed
    deleted TIMESTAMP
);

-- Jobs Basic Abilities Table
CREATE TABLE jobs_basic_abilities (
    id INT PRIMARY KEY,
    job_id INT,
    basic_ability_id INT,
    -- Add other fields as needed
    deleted TIMESTAMP
);

-- Affiliates (Tools and Career Paths) Table
CREATE TABLE affiliates (
    id INT PRIMARY KEY,
    type INT, -- 1 for Tools, 3 for Career Paths
    name VARCHAR(255),
    -- Add other fields as needed
    deleted TIMESTAMP
);

-- Jobs Tools Table
CREATE TABLE jobs_tools (
    id INT PRIMARY KEY,
    job_id INT,
    affiliate_id INT,
    -- Add other fields as needed
    deleted TIMESTAMP
);

-- Jobs Career Paths Table
CREATE TABLE jobs_career_paths (
    id INT PRIMARY KEY,
    job_id INT,
    affiliate_id INT,
    -- Add other fields as needed
    deleted TIMESTAMP
);

-- Jobs Rec Qualifications Table
CREATE TABLE jobs_rec_qualifications (
    id INT PRIMARY KEY,
    job_id INT,
    affiliate_id INT,
    -- Add other fields as needed
    deleted TIMESTAMP
);

-- Jobs Req Qualifications Table
CREATE TABLE jobs_req_qualifications (
    id INT PRIMARY KEY,
    job_id INT,
    affiliate_id INT,
    -- Add other fields as needed
    deleted TIMESTAMP
);
