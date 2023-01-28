CREATE TABLE category (
category_id VARCHAR(10) PRIMARY KEY NOT NULL,
category VARCHAR(50) NOT NULL
);

CREATE TABLE subcategory (
subcategory_id VARCHAR(10) PRIMARY KEY NOT NULL, 
subcategory VARCHAR(50) NOT NULL
);

CREATE TABLE contacts (
contact_id INTEGER PRIMARY KEY NOT NULL, 
first_name VARCHAR(50) NOT NULL,  
last_name VARCHAR(50) NOT NULL,
email VARCHAR(320) NOT NULL
);

CREATE TABLE campaign (
cf_id INTEGER PRIMARY KEY NOT NULL,
contact_id INTEGER NOT NULL,
company_name VARCHAR(100) NOT NULL,
description VARCHAR(100),
goal INTEGER NOT NULL,
pledged INTEGER NOT NULL,
outcome VARCHAR(10) NOT NULL,
backers_count INTEGER NOT NULL,
country VARCHAR(2) NOT NULL,
currency VARCHAR(3) NOT NULL,
launched_date DATE NOT NULL,
end_date DATE NOT NULL,
category_id VARCHAR(10) NOT NULL,
subcategory_id VARCHAR(10) NOT NULL,
FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
FOREIGN KEY (category_id) REFERENCES category(category_id),
FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);