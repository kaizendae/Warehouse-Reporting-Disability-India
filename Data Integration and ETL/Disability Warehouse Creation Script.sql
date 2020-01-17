drop database disability;

create database disability;

use disability;

create table time (id_time int auto_increment primary key, year int not null, unique(year));
create table age (id_age int primary key auto_increment, age_group varchar(100) not null, unique(age_group));
create table disability_type (id_disability_type int primary key auto_increment, label varchar(100) not null, unique(label));
create table gender (id_gender int primary key auto_increment, label varchar(100) not null, unique(label));

create table state (id_state int primary key, label varchar(100) not null, unique(label));
create table city (id_city varchar(100) primary key, id_state int not null, label varchar(100) not null, unique(id_state, label));
create table area (id_area int primary key auto_increment, id_city varchar(100) not null, type_area varchar(100) not null, unique(id_city, type_area));

create table disability_rate (id_disability_rate int PRIMARY KEY auto_increment, id_time int not null, id_age int not null, id_disability_type int not null, id_area int not null, id_gender int not null, number_disability int not null, unique(id_time ,id_age ,id_disability_type ,id_area ,id_gender));

ALTER TABLE city
ADD FOREIGN KEY (id_state) REFERENCES state(id_state);

ALTER TABLE area
ADD FOREIGN KEY (id_city) REFERENCES city(id_city);

ALTER TABLE disability_rate
ADD FOREIGN KEY (id_time) REFERENCES time(id_time);
ALTER TABLE disability_rate
ADD FOREIGN KEY (id_age) REFERENCES age(id_age);
ALTER TABLE disability_rate
ADD FOREIGN KEY (id_disability_type) REFERENCES disability_type(id_disability_type);
ALTER TABLE disability_rate
ADD FOREIGN KEY (id_area) REFERENCES area(id_area);
ALTER TABLE disability_rate
ADD FOREIGN KEY (id_gender) REFERENCES gender(id_gender);

commit;
