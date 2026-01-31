show databases;
use msk_test1;
CREATE TABLE msk_employee_table(  
    id int NOT NULL AUTO_INCREMENT,  
    name varchar(45) NOT NULL,  
    occupation varchar(35) NOT NULL,  
    age int NOT NULL,  
    PRIMARY KEY (id)  
);  

insert into msk_employee_table values (1, 'test1','Agri',25);
insert into msk_employee_table values (2, 'test2','IT',35);
insert into msk_employee_table values (3, 'test3','Finance',40);

select * from msk_employee_table;





