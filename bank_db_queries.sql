select * from account;
select * from transaction;

select sum(amount) from transaction;

select sum(amount) from transaction
where TxnType = 'deposit';

select avg(balance) from account;

select max(fees) from account;
select min(balance) from account;
select concat('hello ','world!');

select * from account;
select accountholder, concat('$',format(balance,2)) as Balance
	from account
    order by accountholder;

select txntype, sum(amount) 
	from transaction
	group by txntype;
select * from account
	join transaction
    on account.id = transaction. AccountID;
select * from account
	where balance < 
     (select avg(balance) from account);
select avg(balance) from account;

insert into account (AccountHolder)
	values ('Fred Wills'), ('Anthony Price');
    
update account 
	set balance = 9999.99
	where id = 5;

update account
	set fees = 250.00
    where id = 5;
    
insert into account(accountholder)
	values ('Sean Blessing');
    
insert into account
	values (99, 'Dummy', 0, 0);
    
delete from account
	where id > 10;

select * from account;
update account
	set balance = (21)
	where id = 7;
    
    
    
    
