use advanced_mysql;
EXPLAIN 
SELECT bd.book_name, ad.author_name, cd.country_code 
FROM country_details cd JOIN author_details ad 
ON cd.country_name=ad.author_country 
JOIN book_details bd 
ON ad.author_name = bd.author_name 
WHERE ad.author_name='Brittany Gray';


CREATE INDEX auth_email ON author_details (author_email);
CREATE INDEX auth_coun ON author_details (author_country);
CREATE INDEX auth_email_ph ON author_details (author_email, author_phone);
CREATE INDEX auth_ph_email ON author_details (author_phone,author_email);

SHOW INDEXES FROM author_details;


EXPLAIN SELECT * FROM author_details WHERE author_email='justinbell@gmail.com';

EXPLAIN SELECT * FROM  author_details FORCE INDEX(auth_email_ph) WHERE author_email='justinbell@gmail.com' AND author_phone=7090978781;