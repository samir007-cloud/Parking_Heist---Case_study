CREATE DATABASE parking_heist;
USE parking_heist;

CREATE TABLE persons (person_id INT PRIMARY KEY, pname VARCHAR(50), license_number VARCHAR(20) UNIQUE);

INSERT INTO persons VALUES
(1,'Amit','DL01AA1111'),
(2,'Rohit','DL01BB2222'),
(3,'Sneha','DL01CC3333'),
(4,'Kunal','DL01DD4444'),
(5,'Priya','DL01EE5555'),
(6,'Arjun','DL01FF6666'),
(7,'Neha','DL01GG7777'),
(8,'Vikas','DL01HH8888'),
(9,'Pooja','DL01II9999'),
(10,'Sahil','DL01JJ1010'),
(11,'Ravi','DL01KK1112'),
(12,'Anita','DL01LL1314'),
(13,'Manoj','DL01MM1516'),
(14,'Deepak','DL01NN1718'),
(15,'Kriti','DL01OO1920'),
(16,'Rahul','DL01PP2122'),
(17,'Nisha','DL01QQ2324'),
(18,'Aditya','DL01RR2526'),
(19,'Mehul','DL01SS2728'),
(20,'Simran','DL01TT2930');

select *from persons;

CREATE TABLE parking_log (
    log_id INT PRIMARY KEY,
    person_id INT,
    car_plate VARCHAR(20),
    check_in DATETIME,
    check_out DATETIME,
    FOREIGN KEY (person_id) REFERENCES persons(person_id));
    
INSERT INTO parking_log VALUES
(1,1,'CAR101','2024-06-01 09:00','2024-06-01 11:00'),
(2,2,'CAR102','2024-06-01 10:00','2024-06-01 13:00'),
(3,3,'CAR103','2024-06-01 09:30','2024-06-01 10:30'),
(4,4,'CAR104','2024-06-01 11:00','2024-06-01 14:00'),
(5,5,'CAR105','2024-06-01 08:00','2024-06-01 12:00'),
(6,6,'CAR106','2024-06-01 09:00','2024-06-01 10:00'),
(7,7,'CAR107','2024-06-01 09:15','2024-06-01 11:15'),
(8,8,'CAR108','2024-06-01 10:00','2024-06-01 12:00'),
(9,9,'CAR109','2024-06-01 08:30','2024-06-01 09:30'),
(10,10,'CAR110','2024-06-01 09:00','2024-06-01 11:00'),
(11,11,'CAR111','2024-06-01 10:00','2024-06-01 12:00'),
(12,12,'CAR112','2024-06-01 08:00','2024-06-01 10:00'),
(13,13,'CAR113','2024-06-01 07:00','2024-06-01 11:00'),
(14,14,'CAR114','2024-06-01 09:00','2024-06-01 10:00'),
(15,15,'CAR115','2024-06-01 10:00','2024-06-01 12:00'),
(16,16,'CAR116','2024-06-01 08:00','2024-06-01 09:00'),
(17,17,'CAR117','2024-06-01 09:00','2024-06-01 11:00'),
(18,18,'CAR118','2024-06-01 09:00','2024-06-01 10:00'),
(19,19,'CAR119','2024-06-01 08:00','2024-06-01 10:00'),
(20,20,'CAR120','2024-06-01 08:00','2024-06-01 13:00');

select *from parking_log;

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    person_id INT,
    car_plate VARCHAR(20),
    amount_paid DECIMAL(8,2),
    payment_time DATETIME,
    FOREIGN KEY (person_id) REFERENCES persons(person_id));
    
INSERT INTO payments VALUES
(1,1,'CAR101',200,'2024-06-01 11:05'),
(2,2,'CAR102',300,'2024-06-01 13:05'),
(3,3,'CAR103',100,'2024-06-01 10:35'),
(4,4,'CAR104',300,'2024-06-01 14:10'),
(5,5,'CAR105',400,'2024-06-01 12:05'),
(6,6,'CAR106',100,'2024-06-01 10:05'),
(7,7,'CAR107',200,'2024-06-01 11:20'),
(8,8,'CAR108',200,'2024-06-01 12:10'),
(9,9,'CAR109',100,'2024-06-01 09:35'),
(10,10,'CAR110',200,'2024-06-01 11:10'),
(11,11,'CAR111',200,'2024-06-01 12:05'),
(12,12,'CAR112',200,'2024-06-01 10:10'),
(13,13,'CAR113',400,'2024-06-01 11:15'),
(14,14,'CAR114',100,'2024-06-01 10:10'),
(15,15,'CAR115',200,'2024-06-01 12:05'),
(16,16,'CAR116',100,'2024-06-01 09:10'),
(17,17,'CAR117',200,'2024-06-01 11:10'),
(18,18,'CAR118',100,'2024-06-01 10:05'),
(19,19,'CAR119',200,'2024-06-01 10:10'),
(20,20,'CAR999',200,'2024-06-01 13:05');

CREATE TABLE statements (
    statement_id INT PRIMARY KEY,
    person_id INT,
    claimed_car VARCHAR(20),
    claimed_hours INT,
    reason VARCHAR(100),
    FOREIGN KEY (person_id) REFERENCES persons(person_id));
    
INSERT INTO statements VALUES
(1,1,'CAR101',2,'Shopping'),
(2,2,'CAR102',3,'Office visit'),
(3,3,'CAR103',1,'Quick pickup'),
(4,4,'CAR104',3,'Meeting'),
(5,5,'CAR105',4,'Mall'),
(6,6,'CAR106',1,'ATM visit'),
(7,7,'CAR107',2,'Friend visit'),
(8,8,'CAR108',2,'Shopping'),
(9,9,'CAR109',1,'Drop friend'),
(10,10,'CAR110',2,'Coffee'),
(11,11,'CAR111',2,'Work'),
(12,12,'CAR112',2,'Bank'),
(13,13,'CAR113',4,'Personal work'),
(14,14,'CAR114',1,'Office'),
(15,15,'CAR115',2,'Shopping'),
(16,16,'CAR116',1,'Quick work'),
(17,17,'CAR117',2,'Friend meet'),
(18,18,'CAR118',1,'Pickup'),
(19,19,'CAR119',2,'Shopping'),
(20,20,'CAR120',1,'Just 1 hour, sir');

Select *from statements;

Select *from parking_log where check_in <= '2024-06-01 10:00' 
and check_out >= '2024-06-01 11:00';

Select person_id, Pname, car_plate, check_in, check_out from parking_log
join persons on person_id WHERE check_in between '2024-06-01 10:00' and '2024-06-01 11:00'; 


select  pl.person_id, p.person_id, py.person_id from parking_log pl join persons p
on pl.person_id = p.person_id
join payments py on py.person_id = pl.person_id
WHERE check_out between '2024-06-01 10:00' and '2024-06-01 11:00'; 


select * from parking_log;

select * from payments;

select * from parking_log pl join payments py on pl.person_id = py.person_id
where pl.car_plate != py.car_plate;

Select *from statements;