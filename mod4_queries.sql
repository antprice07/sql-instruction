-- select all from customer
SELECT * FROM customer
-- single line comment one way to do this
-- where state = 'OH'
-- or state = 'IN';
-- another way to do this
where state in ('OH', "IN");