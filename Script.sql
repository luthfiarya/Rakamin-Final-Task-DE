create table Inventory(
	Item_code INT(5) not null primary key,
	Item_name VARCHAR(255) not null,
	Item_price INT(50) not null,
	Item_total INT(20) not null
);

insert into inventory (Item_code, Item_name, Item_price, Item_total)
values 
(2341, 'Promag Tablet', 3000, 100),
(2342, 'Hydro Coco 250 Ml', 7000, 20),
(2343, 'Nutrive Benecol 100 Ml', 20000, 30),
(2344, 'Blackmores Vit C 500 Mg', 95000, 45),
(2345, 'Entrasol Gold 370G', 90000, 120);

select Item_name from inventory having max(Item_total)

update inventory 
set Item_price = 5000
where Item_code = 2341

insert into inventory (Item_code, Item_name, Item_price, Item_total)
values
(2347, 'Prenagen', 100000, 50);


delete from inventory where Item_name = (
select Item_name from inventory having min(Item_total))

select * from dataset_final_project_kn_de
where purchase_amount < 100 or order_date <= "2022-08-25" and customer_id > 2001
