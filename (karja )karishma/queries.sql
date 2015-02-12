select ordernumber, productname from orderdetails join products on products.productcode=orderdetails.productcode limit 50;


 select customername from customers where customernumber in (select customernumber from orders wehere ordernumber in (select ordernumber from orderdetails
where productcode in (select productcode from products where productname='HMS BOUNTY')));


select count(*) from orders where dayname(orderdate)="sunday";



SELECT DATEDIFF('2005-05-31','2003-01-06’);


select avg(quantityordered) from orderdetails where ordernumber in (select ordernumber from orders where customernumber in (select customernumber 
from customers where country="usa"));


select customername, contactlastname, contactfirstname from customers where customername REGEXP '[0-9]' order by customername;


select ( (select count(*) from products) - ( select count(*) from select count(ordernumber), productcode from orderdetails group by productcode)p )) as 
countofnotordered;


select productname, count(productname) from products group by productname limit 30;