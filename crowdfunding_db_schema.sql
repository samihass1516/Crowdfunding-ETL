-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/dlKkBe
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "backers"  (
    "backer_id" varchar   NOT NULL,
    "cf_id" int   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "email" varchar  NOT NULL,
    CONSTRAINT "pk_backers" PRIMARY KEY (
        "cf_id"
    )
);



ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_cf_id" FOREIGN KEY("cf_id")
REFERENCES "backers" ("cf_id");



