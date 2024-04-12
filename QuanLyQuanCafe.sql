create database QuanLySanPham;

use QuanLySanPham;

create table categoryProduct(
idCategory int auto_increment primary key not null,
nameCategory varchar(50) not null
);

create table product(
idProduct int auto_increment primary key not null,
nameProduct varchar(50) not null,
idCategory int not null,
quantity double not null,
price double not null,
Foreign key(idCategory) references categoryProduct(idCategory)
);

drop table product;

insert into categoryProduct (nameCategory) values('CAFE VIỆT'),('CAFE MÁY'),('CAFE ĐÁ XAY');
insert into categoryProduct (nameCategory) value ('TRÀ-HOA QUẢ DẦM');
truncate table categoryProduct;


select * from categoryProduct;

insert into product (nameProduct,idCategory,quantity,price) value ('Sữa chua cafe',1,10,25000);
insert into product (nameProduct,idCategory,quantity,price) value ('Cafe Sữa',1,10,25000);
insert into product (nameProduct,idCategory,quantity,price) value ('Bạc Xỉu',1,10,29000);
insert into product (nameProduct,idCategory,quantity,price) value ('Capucino/Latte',2,10,35000);
insert into product (nameProduct,idCategory,quantity,price) value ('Espresso/Americano',2,10,29000);
insert into product (nameProduct,idCategory,quantity,price) value ('Cafe Cốt Dừa Đá Xay',3,10,35000);
insert into product (nameProduct,idCategory,quantity,price) value ('Caramen Đá Xay',3,10,39000);
insert into product (nameProduct,idCategory,quantity,price) value ('Cafe Kem Dừa Đá Xay',3,10,39000);
insert into product (nameProduct,idCategory,quantity,price) value ('Trà Đào Nhiệt Đới',4,10,35000);
insert into product (nameProduct,idCategory,quantity,price) value ('Sữa Chua Hoa Quả Dầm',4,10,35000);
truncate table product;
alter table product add status boolean;
alter table product drop column status;
alter table product modify quantity int not null;
truncate table product;

select idProduct,nameProduct,quantity,price from product;
select * from product;
select idProduct,nameProduct,nameCategory,quantity,price from product inner join categoryProduct on product.idCategory=categoryProduct.idCategory;
select idproduct,nameproduct,namecategory,quantity,price from product inner join categoryproduct on product.idcategory=categoryproduct.idcategory;

SELECT * FROM product WHERE price=25000;

SELECT * FROM product WHERE price>25000;

SELECT * FROM product WHERE price=35000 AND idCategory=4;

SELECT * FROM product WHERE idCategory=1 OR idCategory=2;

SELECT * FROM product WHERE idCategory IN (1,2);

SELECT * FROM product WHERE price BETWEEN 25000 AND 35000;

SELECT * FROM product WHERE nameProduct LIKE '%cafe%';
select * from product;
SELECT * FROM product WHERE idCategory NOT IN (1,2);

SELECT * FROM product WHERE price NOT BETWEEN 25000 AND 35000;

SELECT * FROM product WHERE nameProduct NOT LIKE '%cafe%';


drop database quanlysanpham;


