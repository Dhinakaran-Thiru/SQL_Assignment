create database Gmail_account;
use Gmail_account;
-- Create the table with the given data
CREATE TABLE email_signup (
    id INT,
    email_id VARCHAR(100),
    signup_date DATE
);

-- Insert data into the table
INSERT INTO email_signup (id, email_id, signup_date)
VALUES
(1, 'Rajesh@Gmail.com', '2022-02-01'),
(2, 'Rakesh_gmail@rediffmail.com', '2023-01-22'),
(3, 'Hitest@Gmail.com', '2020-09-08'),
(4, 'Salil@Gmmail.com', '2019-07-05'),
(5, 'Himanshu@Yahoo.com', '2023-05-09'),
(6, 'Hitesh@Twitter.com', '2015-01-01'),
(7, 'Rakesh@facebook.com', null);



SELECT
    COUNT(CASE WHEN email_id LIKE '%@gmail.com' THEN 1 END) AS count_gmail_account,
    MAX(CASE WHEN email_id LIKE '%@gmail.com' THEN signup_date END) AS latest_signup_date,
    MIN(CASE WHEN email_id LIKE '%@gmail.com' THEN signup_date END) AS first_signup_date,
    DATEDIFF(
        Day,
        MIN(CASE WHEN email_id LIKE '%@gmail.com' THEN signup_date END),
        MAX(CASE WHEN email_id LIKE '%@gmail.com' THEN signup_date END)
    ) AS diff_in_days
FROM email_signup;
