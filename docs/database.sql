DROP TABLE IF EXISTS protection_attributes;
CREATE TABLE protection_attributes (
  protection_id int(11) NOT NULL,
  attribute_name varchar(20) NOT NULL,
  attribute_value varchar(255) NOT NULL,
  PRIMARY KEY (protection_id,attribute_name)
) ;

DROP TABLE IF EXISTS protection_roles;
CREATE TABLE protection_roles (
  protection_id int(11) NOT NULL,
  type int(11) NOT NULL,
  name varchar(30) NOT NULL,
  role int(11) NOT NULL,
  PRIMARY KEY (protection_id,type,name)
) ;
CREATE INDEX protection_id ON protection_roles (protection_id);

DROP TABLE IF EXISTS protections;
CREATE TABLE protections (
  id int(11) NOT NULL,
  x int(11) NOT NULL,
  y int(11) NOT NULL,
  z int(11) NOT NULL,
  world varchar(255) NOT NULL,
  created int(11) NOT NULL,
  updated int(11) NOT NULL,
  accessed int(11) NOT NULL,
  PRIMARY KEY (id)
);
CREATE UNIQUE INDEX position ON protections (x, y, z, world);