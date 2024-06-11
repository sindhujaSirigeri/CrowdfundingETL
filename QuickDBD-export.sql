-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/

CREATE TABLE "category" (
    "category_id" varchar(10) NOT NULL,
    "category" varchar(20) NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY ("category_id")
);

CREATE TABLE "subcategory" (
    "subcategory_id" varchar(10) NOT NULL,
    "subcategory" varchar(30) NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY ("subcategory_id")
);

CREATE TABLE "contacts" (
    "contact_id" INT NOT NULL,
    "first_name" VARCHAR(50) NOT NULL,
    "last_name" VARCHAR(50) NOT NULL,
    "email" VARCHAR(255) NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY ("contact_id")
);

CREATE TABLE "campaign" (
    "cf_id" INT NOT NULL,
    "contact_id" INT NOT NULL,
    "company_name" VARCHAR(255) NOT NULL,
    "description" TEXT NOT NULL,
    "goal" NUMERIC(15,2) NOT NULL,
    "pledged" NUMERIC(15,2) NOT NULL,
    "outcome" VARCHAR(50) NOT NULL,
    "backers_count" INT NOT NULL,
    "country" VARCHAR(2) NOT NULL,
    "currency" VARCHAR(3) NOT NULL,
    "launch_date" DATE NOT NULL,
    "end_date" DATE NOT NULL,
    "category_id" varchar(10) NOT NULL,
    "subcategory_id" varchar(10) NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY ("cf_id"),
    CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id") REFERENCES "contacts" ("contact_id"),
    CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id") REFERENCES "category" ("category_id"),
    CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id") REFERENCES "subcategory" ("subcategory_id")
);
