create database if not exists online_grocery_store;

use online_grocery_store;

drop table if exists items;
create table items (
	item_id integer auto_increment primary key not null,
    item_description varchar(100) not null,
    item_type varchar(100) not null,
    item_price integer not null,
    item_unit varchar(50) not null
    
);

drop table if exists vendors;
create table vendors (
	vendor_id integer auto_increment primary key not null,
    vendor_name varchar(150) not null
);

drop table if exists customers;
create table customers (
	customer_id integer auto_increment primary key not null,
    customer_name varchar(100) not null
);

drop table if exists sales;
create table sales (
	purchase_id integer auto_increment primary key not null, 
	customer_id integer,
    item_id integer,
    vendor_id integer,
    purchase_date datetime,
    item_quantity integer,
    total_price float,
    
    constraint foreignkey
    foreign key (customer_id) references customers(customer_id),
    foreign key (item_id) references items(item_id),
    foreign key (vendor_id) references vendors(vendor_id)
    
    on update cascade
    on delete cascade
    
    
);





