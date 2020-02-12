create table branch
(
branch_name varchar2(20),
branch_city varchar2(20),
assests number(10,3),
primary key(branch_name)
);

create table accounts
(
accno number(10),
branch_name varchar2(20),
balance number(10,2),
primary key(accno),
foreign key(branch_name) references branch(branch_name)
);

create table depositor
(
customer_name varchar2(20),
customer_street varchar2(20),
customer_city varchar2(20),
primary key(customer_name)
);

create table loan
(
loan_no number(10),
branch_name varchar2(20),
amount number(10,2),
primary key(loan_no),
foreign key(branch_name) references branch(branch_name)
);

create table borrower
(
customer_name varchar2(20),
loan_no number(10),
foreign key(customer_name) references depositor(customer_name),
foreign key(loan_no) references loan(loan_no)
);

create table customer
(
customer_name varchar2(20),
customer_street varchar2(20),
customer_city varchar2(20),
primary key(customer_name)
);


insert into branch values('HanumanthNagar', 'Banglore', 100000.01);
insert into customer values('Manas Agarwal', 'abc', 'Banglore');
insert into accounts values(12345678, 'HanumanthNagar', 10000.01);
insert into depositor values('Manas Agarwal', 'abc', 'Banglore');
insert into loan values(12345, 'HanumanthNagar', 10000.01);
insert into borrower values('Manas Agarwal', 12345);

insert into branch values('Kathriguppe', 'Banglore', 100000.01);
insert into customer values('Nilanshu Ranjan', 'abc', 'Banglore');
insert into accounts values(1234567, 'Kathriguppe', 10000.01);
insert into depositor values('Nilanshu Ranjan', 'abc', 'Banglore');
insert into loan values(1234, 'Kathriguppe', 10000.01);
insert into borrower values('Nilanshu Ranjan', 1234);

insert into branch values('Whitefield', 'Banglore', 100000.01);
insert into customer values('Pranav Mukharjee', 'abc', 'Banglore');
insert into accounts values(123456, 'Whitefield', 10000.01);
insert into depositor values('Pranav Mukharjee', 'abc', 'Banglore');
insert into loan values(123, 'Whitefield', 10000.01);
insert into borrower values('Pranav Mukharjee', 123);

insert into branch values('Nagasandra', 'Banglore', 100000.01);
insert into customer values('Nitesh Laddha', 'abc', 'Banglore');
insert into accounts values(12, 'Nagasandra', 10000.01);
insert into depositor values('Nitesh Laddha', 'abc', 'Banglore');
insert into loan values(12, 'Nagasandra', 10000.01);
insert into borrower values('Nitesh Laddha', 12345);

select * from branch;
select * from customer;
select * from accounts;
select * from depositor;
select * from loan;
select * from borrower;
