
create table TB_USER(
	user_id int auto_increment,
    username varchar(50) not null,
    password varchar(50) not null,
    primary key(user_id)
);

create table tb_user_details(
	details_id int auto_increment,
    user_id int unique,
    address varchar(100),
    phone_number varchar(15),
    email varchar(50),
    primary key(details_id),
    foreign key(user_id) references tb_user(user_id)
);

-- drop table tb_team;
-- drop table tb_player;

create table tb_team(
	team_id int auto_increment,
    team_name varchar(50),
    home_city varchar(50),
    established_year year,
    primary key(team_id)
);

insert into tb_team(team_name, home_city, established_year)
	values("롯데", "AA", 1990),
		  ("해태", "BB", 1991),
		  ("기아", "CC", 1992),
		  ("넥센", "DD", 1993);


create table tb_player(
	player_id int,
    player_name varchar(20),
    position varchar(20),
    birth_date date,
    team_id int,
    primary key(player_id),
    foreign key(team_id) references tb_team(team_id) 
);

insert into tb_player(player_name, position, birth_date, team_id)
	values("홍OO", 30, "롯데"),
		  ("김OO", 21, "롯데"),
		  ("나OO", 29, "해태"),
		  ("박OO", 25, "넥센"),
		  ("이OO", 19, "기아"),
		  ("최OO", 27, "넥센");
		  
desc tb_team;
desc tb_player;

select * from tb_team;
select * from tb_player;
