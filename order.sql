create table Customer(
    customer_no number(10),
    customer_name varchar2(20),
    city varchar2(20),
    primary key(customer_no));
    
create table order_(
    order_no number(10),
    order_date date,
    order_amount number(10, 2),
    customer_no number(10),
    primary key(order_no),
    foreign key(customer_no) references Customer(customer_no));
    
create table item(
    item_no number(10),
    price number(10, 2),
    primary key(item_no));
    
create table order_item(
    qty number(5),
    order_no number(10),
    item_no number(10),
    foreign key(order_no) references order_(order_no),
    foreign key(item_no) references item(item_no));
    
create table warehouse(
    warehouse_no number(10),
    city varchar2(20),
    primary key(warehouse_no));
    
create table shipment(
    adate date,
    order_no number(10),
    warehouse_no number(10),
    foreign key(order_no) references order_(order_no),
    foreign key(warehouse_no) references warehouse(warehouse_no));
    
insert into Customer values(771, 'Pushpa K', 'Banglore');
insert into Customer values(772, 'Suman', 'Mumbai');
insert into Customer values(773, 'Sourav', 'Calicut');
insert into Customer values(774, 'Laila', 'Hyderabad');
insert into Customer values(775, 'Faizal', 'Banglore');

insert into order_ values(111, '22-Jan-02', 18000, 771);
insert into order_ values(112, '30-Jul-02', 6000, 774);
insert into order_ values(113, '03-Apr-03', 9000, 775);
insert into order_ values(114, '03-Nov-03', 29000, 775);
insert into order_ values(115, '10-dec-03', 29000, 773);
insert into order_ values(116, '19-Aug-04', 56000, 772);
insert into order_ values(117, '10-Sep-04', 20000, 771);
insert into order_ values(118, '20-Nov-04', 29000, 775);
insert into order_ values(119, '13-Feb-05', 29000, 774);
insert into order_ values(120, '13-Oct-05', 29000, 775);

insert into item values(5001, 503);
insert into item values(5002, 750);
insert into item values(5003, 150);
insert into item values(5004, 600);
insert into item values(5005, 890);

insert into order_item values(50, 111, 5001);
insert into order_item values(20, 112, 5003);
insert into order_item values(50, 113, 5002);
insert into order_item values(60, 114, 5005);
insert into order_item values(90, 115, 5004);
insert into order_item values(10, 116, 5001);
insert into order_item values(80, 117, 5003);
insert into order_item values(50, 118, 5005);
insert into order_item values(10, 119, 5002);
insert into order_item values(45, 120, 5004);

insert into warehouse values(1, 'Delhi');
insert into warehouse values(2, 'Bombay');
insert into warehouse values(3, 'Banglore');
insert into warehouse values(4, 'Delhi');
insert into warehouse values(5, 'Banglore');
insert into warehouse values(6, 'Delhi');
insert into warehouse values(7, 'Bombay');
insert into warehouse values(8, 'Chennai');
insert into warehouse values(9, 'Delhi');
insert into warehouse values(10, 'Banglore');

insert into shipment values('10-Feb-02', 111, 1);
insert into shipment values('10-Sep-02', 112, 5);
insert into shipment values('10-Feb-03', 113, 8);
insert into shipment values('10-Dec-03', 114, 3);
insert into shipment values('19-Jan-04', 115, 9);
insert into shipment values('20-Sep-04', 116, 1);
insert into shipment values('10-Sep-04', 117, 5);
insert into shipment values('30-Nov-04', 118, 7);
insert into shipment values('30-Apr-05', 119, 7);
insert into shipment values('21-Dec-05', 120, 6);
