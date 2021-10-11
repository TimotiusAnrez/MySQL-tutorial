# Decimals is another data type for numbers we usually use INT which is a whole number, but we might need decimals later in the future. So DECIMAL have two parameter DECIMAL(M,D) so M is the maximum number of digits for the number to be inputed range from 0 to 65. While D is the number of digits behind decimals point range from 0 to 30. So if we put in DECIMAL(4,2) then it will limit the digit of the input to 4 and 2 digit behind the decimal point. If we goes beyond that point it will resulted in 9999.99 4 digit front 2 digit behind decimals.

CREATE TABLE items(price DECIMAL(5,2));
 
INSERT INTO items(price) VALUES(7); # => 7.00
 
INSERT INTO items(price) VALUES(7987654); # => 9999.99
 
INSERT INTO items(price) VALUES(34.88); # => 34.88
 
INSERT INTO items(price) VALUES(298.9999); # => 298.99
 
INSERT INTO items(price) VALUES(1.9999); # => 1.99
 
SELECT * FROM items;