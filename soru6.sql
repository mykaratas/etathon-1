#petshop


CREATE DATABASE IF NOT EXISTS petshop_db;

#Müşteriler Tablosu
CREATE TABLE petshop_db.customers (
id          INT(10)         NOT NULL AUTO_INCREMENT,
status      CHAR(1) NOT NULL DEFAULT 'a' COMMENT 'Record status. a: active, d: deleted, i: inactive',
birth_date  DATE            NULL,
first_name  VARCHAR(14)     NOT NULL,
last_name   VARCHAR(16)     NOT NULL,
gender      ENUM ('M','F', 'N')  NOT NULL DEFAULT 'N',    
created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (id)                                                           
);


CREATE TABLE petshop_db.cats (
id      INT(10) NOT NULL AUTO_INCREMENT,
type  	VARCHAR(250) NOT NULL DEFAULT 'CAT', #...
status      CHAR(1) NOT NULL DEFAULT 'a' COMMENT 'Record status. a: active, d: deleted, i: inactive',
birth_date  DATE            NULL,	
name   VARCHAR(16)     NOT NULL,
total INT(15) NOT NULL DEFAULT 0,
gender      ENUM ('M','F','N')  NOT NULL, 
price FLOAT(10,2) NOT NULL DEFAULT 0.00,
created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (id),
UNIQUE(type,gender)
);

CREATE TABLE petshop_db.dogs (
	id      INT(10) NOT NULL AUTO_INCREMENT,
type  	VARCHAR(250) NOT NULL DEFAULT 'DOG', #... 
status      CHAR(1) NOT NULL DEFAULT 'a' COMMENT 'Record status. a: active, d: deleted, i: inactive',
birth_date  DATE NULL,	
name   VARCHAR(16) NOT NULL,
gender  ENUM ('M','F','N')  NOT NULL,
total INT(15) NOT NULL DEFAULT 0,
price FLOAT(10,2) NOT NULL DEFAULT 0.00,   
created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (id),
UNIQUE INDEX `xu_dogs_type_gender` (type,gender) USING BTREE
);


CREATE TABLE petshop_db.birds (
id      INT(10) NOT NULL AUTO_INCREMENT,
type  	VARCHAR(250) NOT NULL DEFAULT 'BIRD', #...
status      CHAR(1) NOT NULL DEFAULT 'a' COMMENT 'Record status. a: active, d: deleted, i: inactive',
birth_date  DATE   NULL,	
name   VARCHAR(16)     NOT NULL,
gender      ENUM ('M','F','N')  NOT NULL,
total INT(15) NOT NULL DEFAULT 0,
price FLOAT(10,2) NOT NULL DEFAULT 0.00,
created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (id),
UNIQUE INDEX `xu_birds_type_gender` (type,gender) USING BTREE
);

CREATE TABLE petshop_db.animal_sales(
  id INT(10) NOT NULL AUTO_INCREMENT,
  status CHAR(1) NOT NULL DEFAULT 'a' COMMENT 'Record status. a: active, d: deleted, i: inactive',
  customer INT(10) NOT NULL,
  cat INT(10) NULL DEFAULT NULL,
  dog INT(10) NULL DEFAULT NULL,
  bird INT(10) NULL DEFAULT NULL,
  cat_quantity INT(5) NOT NULL DEFAULT 0,
  dog_quantity INT(5) NOT NULL DEFAULT 0,
  bird_quantity INT(5) NOT NULL DEFAULT 0,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  discount FLOAT(7, 2) DEFAULT 0.00,
  total_price FLOAT(10, 2) DEFAULT 0.00,
  PRIMARY KEY (id),
  FOREIGN KEY (cat) REFERENCES petshop_db.cats(id),
  FOREIGN KEY (dog) REFERENCES petshop_db.dogs(id),
  FOREIGN KEY (bird) REFERENCES petshop_db.birds(id)
);





