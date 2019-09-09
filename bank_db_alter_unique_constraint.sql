select * from account;
-- alter table after a certain column
alter table account
	add column DOB date	not null
	after ID;
