use littlelemondb;
create view OrdersView as select orderid,quantity,totalcost from orders;
select * from ordersview;