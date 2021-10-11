# other than decimal there is FLOAT and DOUBLE so DECIMAL data type calculation is the fixed-point type and the calculation are exact. While FLOAT and DOUBLE are floating-point type and calculation are aproximate. FLOAT and DOUBLE can store larger number and take less space, however they come as a cost of percision. So if it goes beyond 7 digits then it will lose percision. Double will lose percision in 15 digits. FLOAT memory need 4 bytes while DOUBLE needs 8 bytes. DECIMAL tho can't store data as big as FLOAT and DOUBLE it does come with percision. So if your project need percision, always try to use decimal first. If percision is not an issue, then FLOAT and DOUBLE will be good.

CREATE TABLE thingies (price FLOAT);
 
INSERT INTO thingies(price) VALUES (88.45);
 
SELECT * FROM thingies;
 
INSERT INTO thingies(price) VALUES (8877.45);
 
SELECT * FROM thingies;
 
INSERT INTO thingies(price) VALUES (8877665544.45);
 
SELECT * FROM thingies;
