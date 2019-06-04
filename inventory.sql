create table room (
	room_id INT AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    PRIMARY KEY (room_id)
);

create table item(
    item_id INT auto_increment,
    name varchar(20),
    price INT,
    primary key(item_id)
    );
    
create table room_item(
	RI_id INT auto_increment,
    room INT,
    item INT,
    quantity INT,
    primary key(RI_id),
    foreign key ri_room_fk(room) references room(room_id),
    foreign key ri_item_fk(item) references item(item_id)
    );
insert into room (name) values ('Jack');
insert into item (name,price) value ('notebook', 20);

select * from room

select * from room_item





select * from item

insert into room_item(room, item, quantity) values(1,1,20);

-- join the different tables together by id first, then use table. column method to select exactly information you
-- want from the table ( the order to write code: select first, join after)
select room.name, item.name, room_item.quantity from room_item
join room on room_item.room=room.room_id
join item on room_item.item=item.item_id

insert into item (name, price) values('hammer',5);
select * from item
insert into room_item(room,item,quantity) values(1,2,10);

create table more(
id INT auto_increment,
room INT,
item INT,
quantity INT,
primary key(id),
foreign key more_room_fk(room) references room(room_id),
foreign key more_item_fk(item) references item(item_id)
);

insert into more(room, item, quantity) values(1,2,20);
insert into room(name) values ('Ting');
insert into more(room, item, quantity) values(2,1,500);
select * from room

select * from more

select room.name, item.name, more.quantity from more
join room on more.room=room.room_id
join item on more.item=item.item_id



