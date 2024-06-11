# Group 5 Project 2: Extract Transform Load (ELT) Mini Project
**Members:** Sindhuja (Team co-ordinator), Bailey, David, Uth, Wendy   


![category DataFrame](https://www.informatica.com/content/dam/informatica-com/en/images/misc/etl-process-explained-diagram.png)
[Image Source](https://www.informatica.com/au/resources/articles/what-is-etl.html) 

## Overview

For this ETL mini project, we practiced building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform data. After transforming the data, we created four CSV files and used the CSV file data to create an Entity Relationship Diagram (ERD) and a table schema. Finally, we uploaded the CSV file data into a Postgres database.

## Objectives

1.  **Extract and Transform Data**: Used Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data.
2.  **Create CSV Files**: Generated four CSV files from the transformed data.
3.  **Design an ERD**: Created an Entity Relationship Diagram based on the CSV file data.
4.  **Define Table Schema**: Developed a table schema for the Postgres database.
5.  **Load Data into Postgres**: Uploaded the CSV file data into a Postgres database.

## Collaboration and Communication

-   **Divide the Work:** Tasks were divided among team members, but all members were familiar with all aspects of the project.
-   **Regular Check-Ins:** Frequently checked in with the group to discuss progress, address issues, and offer support.
-   **Collaborative Tools:** Utilized collaborative tools like shared documents, version control systems (e.g., Git), and communication platforms (e.g., Slack) to facilitate teamwork.


## Tools and Technologies

-   **Python**: For data extraction and transformation.
-   **Pandas**: To manipulate and transform data.
-   **Regular Expressions / Dictionary Methods**: To assist with data extraction.
-   **CSV Files**: For storing transformed data and extracting raw data.
-   **Entity Relationship Diagram (ERD)**: To visualize database structure.
-   **Postgres Database**: For loading and storing the final data.

<!-- I used chatgpt to write this up so if you have time please scan over it to make sure its all up to scratch -->

---
### Files

Download the starter code and files to help you follow along:

[Project 2 ETL files](https://static.bc-edx.com/data/dla-1-2/m13/lms/starter/Starter_Files.zip)


### Project Steps

#### Create the Category and Subcategory DataFrames

1.  Extracted and transformed the `crowdfunding.xlsx` Excel data to create a category DataFrame with:
    -   A "category_id" column with entries sequentially from "cat1" to "cat_n", where _n_ is the number of unique categories.
    -   A "category" column containing only the category titles.
2.  Exported the category DataFrame as `category.csv` and saved it to the GitHub repository.
3.  Extracted and transformed the `crowdfunding.xlsx` Excel data to create a subcategory DataFrame with:
    -   A "subcategory_id" column with entries sequentially from "subcat1" to "subcat_n", where _n_ is the number of unique subcategories.
    -   A "subcategory" column containing only the subcategory titles.
4.  Exported the subcategory DataFrame as `subcategory.csv` and saved it to the GitHub repository.

#### Create the Campaign DataFrame

1.  Extracted and transformed the `crowdfunding.xlsx` Excel data to create a campaign DataFrame with the following columns:
    -   "cf_id"
    -   "contact_id"
    -   "company_name"
    -   "description" (formerly "blurb")
    -   "goal" (converted to `float`)
    -   "pledged" (converted to `float`)
    -   "outcome"
    -   "backers_count"
    -   "country"
    -   "currency"
    -   "launch_date" (formerly "launched_at" and converted to `datetime`)
    -   "end_date" (formerly "deadline" and converted to `datetime`)
    -   "category_id" with unique IDs matching those in the category DataFrame.
    -   "subcategory_id" with unique IDs matching those in the subcategory DataFrame.
2.  Exported the campaign DataFrame as `campaign.csv` and saved it to the GitHub repository.

#### Create the Contacts DataFrame

We chose Option 2: Using regular expressions.

1.  Imported the `contacts.xlsx` file into a DataFrame.
2.  Extracted the "contact_id", "name", and "email" columns using regular expressions.
3.  Created a new DataFrame with the extracted data.
4.  Converted the "contact_id" column to the integer type.
5.  Split each "name" column value into a first and last name, placing each in a new column.
6.  Cleaned and exported the DataFrame as `contacts.csv` and saved it to the GitHub repository.

#### Create the Crowdfunding Database

1.  Inspected the four CSV files and sketched an ERD of the tables using QuickDBD.
2.  Used the ERD to create a table schema for each CSV file, specifying data types, primary keys, foreign keys, and other constraints.
3.  Saved the database schema as a Postgres file named `crowdfunding_db_schema.sql` and saved it to the GitHub repository.
4.  Created a new Postgres database named `crowdfunding_db`.
5.  Using the database schema, created the tables in the correct order to handle the foreign keys.
6.  Verified table creation by running a `SELECT` statement for each table.
7.  Imported each CSV file into its corresponding SQL table.
8.  Verified that each table had the correct data by running a `SELECT` statement for each.

## Submission

We submitted the URL of our GitHub repository for grading.

### Support and Resources

Data for this dataset was generated by edX Boot Camps LLC and is intended for educational purposes only.
