#difference between char and varchar is that varchar data size is varied can shirnk can grow, while char data size will be  constantly the same as you set. If you set 255 then each data will be set in 255byte per data. While varchar will varied according to the input, if it's empty then 1 byte if it's have 2 character will be 3 byte and so far and so forth. However if the strict mode dissabled, varchar data input can goes beyond the limit we set while char does not. 

CREATE TABLE dogs (name CHAR(5), breed VARCHAR(10));
 
INSERT INTO dogs (name, breed) VALUES ('bob', 'beagle');
 
INSERT INTO dogs (name, breed) VALUES ('robby', 'corgi');
 
INSERT INTO dogs (name, breed) VALUES ('Princess Jane', 'Retriever'); # princess jane will be truncated (limited to 5 character only, output = Princ)
 
SELECT * FROM dogs;
 
INSERT INTO dogs (name, breed) VALUES ('Princess Jane', 'Retrievesadfdsafdasfsafr'); # retriever will be truncated if strict mode enabled, if not then it will store the full length of the input
 
SELECT * FROM dogs;