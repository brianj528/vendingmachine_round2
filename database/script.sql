BEGIN TRANSACTION;

DROP TABLE IF EXISTS inventory;
DROP TABLE IF EXISTS category;


CREATE TABLE category (
category_id INTEGER NOT NULL,
category_name VARCHAR(255),
message VARCHAR(255),
CONSTRAINT PK_category PRIMARY KEY (category_id)
);

CREATE TABLE inventory (
id VARCHAR(2) NOT NULL,
item VARCHAR(255),
category_id INTEGER,
price DECIMAL,
CONSTRAINT PK_inventory PRIMARY KEY (id),
FOREIGN KEY (category_id) REFERENCES category(category_id)
);

INSERT INTO category (category_id, category_name, message) VALUES 
(1, 'Chip', 'Crunch Crunch, Yum!'), (2, 'Candy', 'Munch Munch, Yum!'), (3, 'Drink', 'Glug Glug, Yum!'), (4, 'Gum', 'Chew Chew, Yum!');

INSERT INTO inventory (id, item, category_id, price) VALUES
('A1', 'Potato Crisps', 1, 3.05),
('A2', 'Stackers', 1, 1.45),
('A3', 'Grain Waves', 1, 2.75),
('A4', 'Cloud Popcorn', 1, 3.65),
('B1', 'Moonpie', 2, 1.80),
('B2', 'Cowtales', 2, 1.50),
('B3', 'Wonka Bar', 2, 1.50),
('B4', 'Crunchie', 2, 1.75),
('C1', 'Cola', 3, 1.25),
('C2', 'Dr. Salt', 3, 1.50),
('C3', 'Mountain Melter', 3, 1.50),
('C4', 'Heavy', 3, 1.50),
('D1', 'U-Chews', 4, 0.85),
('D2', 'Little League Chew', 4, 0.95),
('D3', 'Chiclets', 4, 0.75),
('D4', 'Triplemint', 4, 0.75);


COMMIT TRANSACTION;