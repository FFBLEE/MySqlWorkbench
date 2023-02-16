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
  
  
*/
