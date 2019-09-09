drop database if exists sqlbankdb_mod4;
create database sqlbankdb_mod4;
use sqlbankdb_mod4;

create table account (
	id 				int 			not null primary key auto_increment,
	account_holder 	varchar(50) 	not null,
	balance		 	decimal(5,2)			not null,
	fees 			decimal(5,2)			not null
);

Insert into account (account_holder, balance, fees)
values ('Karlee Adams', 8888.00, 250);
Insert into account (account_holder, balance, fees)
values ('Brytt Lucas', 5444.00, 175);
Insert into account (account_holder, balance, fees)
values ('Joelle Fulcher', 3333.00, 88);
Insert into account (account_holder, balance, fees)
values ('Justin Snyder', 3322.00, 88);



create table transaction (
	id 				int 			not null primary key auto_increment,
	amount			decimal(5,2) 		not null,
	txn_type 		varchar(50) 	not null default 0,
	accountID 		int 			not null
);

ALTER TABLE orders
ADD FOREIGN KEY (accountID) REFERENCES account(id);

Insert into transaction (amount, txn_type, accountID)
values (500.00, 'Deposit', 3);
Insert into transaction (amount, txn_type, accountID)
values (-200.00, 'Withdrawal', 4);
Insert into transaction (amount, txn_type, accountID)
values (200.00, 'Deposit', 4);
Insert into transaction (amount, txn_type, accountID)
values (248.00, 'Deposit', 1);
