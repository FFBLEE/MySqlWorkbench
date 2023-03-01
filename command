/* การสร้างตาราง
create table testtable( 
a int auto_increment not null, 
b varchar(30) character set utf8 collate utf8_general_ci not null,
PRIMARY KEY (a)

)ENGINE=InnoDB DEFAULT charset=utf8;

การเพิ่ม column
alter table testtable 
add column c int after bebe not null; (after bebe คือไปอยู่หลังcolumn bebe)

การลบ column
alter table testtable
  drop column c; ( drop column c,
                   drop column bebe;) 

การแก้ไข column การเปลี่ยนชื่อ 
ALTER TABLE testtable
CHANGE COLUMN `alpha` `a` INT NOT NULL AUTO_INCREMENT ;

การเชื่อม foreign key
ALTER table testtable
ADD	constraint FK_Profile_Prefixname		foreign key (prefid)
	REFERENCES tbprefixname	(prefid)		ON UPDATE CASCADE;
  
การเพิ่ม Primary Key
alter table testtable
  add constraint primary key (a);
  
 การเลือกเเสดงข้อมูล
 
 USE aquaculturedb;
SELECT * FROM tbgeographies; (เเสดงทั้งหมด)

SELECT geographid, geographthname FROM tbgeographies; (ระบุ)

SELECT geographid as 'รหัสภูมิภาค', geographthname as 'ภูมิภาค' FROM tbgeographies; (เเสดงข้อมูลด้วยเปลี่ยนชื่อหัวข้อได้)

SELECT * FROM tbgeographies
WHERE geographid = 1;      (เลือกฟิวที่มีไอดีเท่ากับ 1 )

SELECT * FROM tbgeographies
WHERE geographid = 1 or geographid = 3;

SELECT * FROM tbgeographies
WHERE geographenname LIKE 'North%'; (ไว้ค้าหาคำการเพิ่ม % ไว้เเทนคำที่เราจำไม่ได้)

SELECT * FROM tbgeographies
WHERE geographthname LIKE 'ภา%'

SELECT * FROM tbprovince
ORDER BY provincethname; (เรียกใช้แบบเรียงตามตัวอักษร)

SELECT * FROM tbprovince
ORDER BY provincethname ASC; (เรียงจากน้อยไปมาก)

SELECT * FROM tbprovince
ORDER BY provincethname DESC; (จากมากไปน้อย)

SELECT * FROM tbgeographies
WHERE geographid IN (1,5); (เอาเเค่ตัวที่มี 1 และ 5)

SELECT * FROM tbgeographies
WHERE geographid NOT IN (1,5); (เอาทุกตัวยกเว้น 1 และ 5)

SELECT geographid, provincecode, provincethname FROM tbprovince
WHERE geographid between 3 and 5 
ORDER BY provinceenname; (เลิอกข้อมูลจากฟิวด้านบน หาไอดี ระหว่าง 3 และ 5 และเรียงตามตัวอักษร)

SELECT MAX(geographid) from tbprovince; (หาค่าที่มากที่สุด)

SELECT sum(geographid) as 'ผลรวม' from tbprovince;
SELECT MAX(geographid) as 'ค่าสูงสุด' from tbprovince;

SELECT sum(geographid) as 'ผลรวม' from tbprovince
group by geographid; (เลิอกให้รวมตามกลุ่ม )          
SELECT geographid, sum(geographid) as 'ผลรวม' from tbprovince
group by geographid;

 
 insert into tbgeographies(geographthname) values('ภาคเสมมุติ');
 
 select * from tbgeographies;
 
 select * from tbprovince inner join tbgeographies
 on tbprovince.geographid = tbgeographies.geographid
where tbgeographies.geographid in (2,4,6)
 order by tbprovince.geographid;

 select * from tbprovince as a inner join tbgeographies as b
 on a.geographid = b.geographid
where a.geographid in (2,4,6)
 order by b.geographid;
 
 select a.provinceid , a.provincethname, b.geographthname
 from tbprovince as a inner join tbgeographies as b
 on a.geographid = b.geographid
where a.geographid not in (2,4,6)
 order by b.geographid;
 
 select a.provinceid , a.provincethname, b.geographid, b.geographthname
 from tbprovince as a left join tbgeographies as b
 on a.geographid = b.geographid
 order by b.provinceid;
 
 select a.provinceid , a.provincethname, b.geographid, b.geographthname
 from tbprovince as a right join tbgeographies as b
 on a.geographid = b.geographid
 order by a.provinceid;
 
 select a.provinceid , a.provincethname, b.geographid, b.geographthname
 from tbprovince as a right join tbgeographies as b
 on a.geographid = b.geographid
 where a.provincethname is not null
 order by a.provinceid;
 
 select a.provinceid , a.provincethname, b.geographid, b.geographthname
 from tbprovince as a right join tbgeographies as b
 on a.geographid = b.geographid
 where a.provinceid >= 40 
 order by a.provinceid;
 
 select a.provinceid , a.provincethname, b.geographid, b.geographthname
 from tbprovince as a right join tbgeographies as b
 on a.geographid = b.geographid
 where not( a.provinceid >= 40) 
 order by a.provinceid;
 
 select a.provinceid , a.provincethname, b.geographid, b.geographthname
 from tbprovince as a right join tbgeographies as b
 on a.geographid = b.geographid
 where a.provinceid < 40 
 order by a.provinceid;



อัพเดท
UPDATE tbgeographies set geographenname ='Assume'
where geographid = 7;
การลบ
delete from  tbgeographies
where geographid = 8;



*/
