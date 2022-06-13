drop table Theater;
drop table Movie;
drop table AvailableMovies;

create table Theater(
	name varchar(50),	
	zipcode int,
	primary key (name)
);

create table Movie(
	title varchar(25),
	description varchar(1000),
	primary key (title)
); 

create table AvailableMovies(
        id int,
	name varchar(50),
	title varchar(25),
	listtimes varchar(100),
        primary key (id)
);


insert into Theater(name, zipcode)
	values('Cinemark 10', 75214);
insert into Theater(name,  zipcode)
	values('Studio Movie Grill', 75214); 
insert into Theater(name,  zipcode)
	values('AMC 12',75655);
insert into Theater(name,  zipcode)
	values('Village On The Parkway 7',75655);
insert into Theater(name, zipcode)
	values('Galazy Theatres GrandScape',75040);
insert into Theater(name,  zipcode)
	values('Moviehouse & Eatery', 75040); 
insert into Theater(name, zipcode)
	values('Cinemark 15', 75049);
insert into Theater(name,  zipcode)
	values('Studio Movie Grill 2', 75049); 
insert into Theater(name,  zipcode)
	values('Village On The Parkway',75013);    
insert into Theater(name,  zipcode)
	values('AMC 22', 75013);     	


insert into Movie(title, description)
	values('Deadpool', 'Deadpool tells the origin story of former Special Forces operative turned mercenary Wade Wilson, who after being subjected to a rogue experiment that leaves him with accelerated healing powers, adopts the alter ego Deadpool. Armed with his new abilities and a dark, twisted sense of humor, Deadpool hunts down the man who nearly destroyed his life.');
insert into Movie(title, description)
	values('Baby Driver','After being coerced into working for a crime boss, a young getaway driver finds himself taking part in a heist doomed to fail.');
insert into Movie(title, description)
	values('Godzilla vs. Kong','In a time when monsters walk the Earth, humanitys fight for its future sets Godzilla and Kong on a collision course that will see the two most powerful forces of nature on the planet collide in a spectacular battle for the ages.');
insert into Movie(title, description)
	values('Crazy Rich Asians','An American-born Chinese economics professor accompanies her boyfriend to Singapore for his best friends wedding, only to get thrust into the lives of Asias rich and famous.');
insert into Movie(title, description)
	values('Jurassic Park','A wealthy entrepreneur secretly creates a theme park featuring living dinosaurs drawn from prehistoric DNA. Before opening day, he invites a team of experts and his two eager grandchildren to experience the park and help calm anxious investors. However, the park is anything but amusing as the security systems go off-line and the dinosaurs escape.');
insert into Movie(title, description)
	values('I Robot','In 2035, where robots are commonplace and abide by the three laws of robotics, a technophobic cop investigates an apparent suicide. Suspecting that a robot may be responsible for the death, his investigation leads him to believe that humanity may be in danger.');
insert into Movie(title, description)
	values('Spider-Man 2','Spider-Man saves New York from Doctor Octopus');
insert into Movie(title, description)
	values('A Quiet Place','A family is forced to live in silence while hiding from creatures that hunt by sound.');
insert into Movie(title, description)
	values('Captain America','Captain America becomes a super soldier to defeat the Nazis');
insert into Movie(title, description)
	values('Onward','In a suburban fantasy world, two teenage elf brothers embark on an extraordinary quest to discover if there is still a little magic left out there.');

    
insert into AvailableMovies(id, name, title, listtimes)
        values(1, 'Cinemark 10','Deadpool','11:00AM,12:00PM,1:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(2, 'Cinemark 10','Godzilla vs Kong','12:00PM,2:00PM,4:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(3, 'Cinemark 10','Crazy Rich Asians','1:00PM,3:00PM,5:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(4, 'Cinemark 10','Jurassic Park','2:00PM,4:00PM,6:00PM');
insert into AvailableMovies(id, name, title, listtimes)
		values(5, 'Cinemark 10','I Robot','3:00PM,5:00PM,7:00PM');

insert into AvailableMovies(id, name, title, listtimes)
        values(6, 'Studio Movie Grill','Spider-Man 2','11:00AM,12:00PM,1:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(7, 'Studio Movie Grill','Onward','12:00PM,2:00PM,4:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(8, 'Studio Movie Grill','Baby Driver','1:00PM,3:00PM,5:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(9, 'Studio Movie Grill','Captain America','2:00PM,4:00PM,6:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(10, 'Studio Movie Grill','A Quiet Place','3:00PM,5:00PM,7:00PM');

insert into AvailableMovies(id, name, title, listtimes)
        values(11, 'AMC 12','Deadpool','11:00AM,12:00PM,1:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(12, 'AMC 12','Godzilla vs Kong','12:00PM,2:00PM,4:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(13, 'AMC 12','Crazy Rich Asians','1:00PM,3:00PM,5:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(14, 'AMC 12','Jurassic Park','2:00PM,4:00PM,6:00PM');
insert into AvailableMovies(id, name, title, listtimes)
		values(15, 'AMC 12','I Robot','3:00PM,5:00PM,7:00PM');
		

insert into AvailableMovies(id, name, title, listtimes)
        values(16, 'Village On The Parkway 7','Spider-Man 2','11:00AM,12:00PM,1:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(17, 'Village On The Parkway 7','Onward','12:00PM,2:00PM,4:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(18, 'Village On The Parkway 7','Baby Driver','1:00PM,3:00PM,5:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(19, 'Village On The Parkway 7','Captain America','2:00PM,4:00PM,6:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(20, 'Village On The Parkway 7','A Quiet Place','3:00PM,5:00PM,7:00PM');

insert into AvailableMovies(id, name, title, listtimes)
        values(21, 'Galazy Theatres GrandScape','Deadpool','11:00AM,12:00PM,1:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(22, 'Galazy Theatres GrandScape','Godzilla vs Kong','12:00PM,2:00PM,4:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(23, 'Galazy Theatres GrandScape','Crazy Rich Asians','1:00pm,3:00pm,5:00pm');
insert into AvailableMovies(id, name, title, listtimes)
        values(24, 'Galazy Theatres GrandScape','Jurassic Park','2:00PM,4:00PM,6:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(25, 'Galazy Theatres GrandScape','I Robot','3:00PM,5:00PM,7:00PM');

insert into AvailableMovies(id, name, title, listtimes)
        values(26, 'Moviehouse & Eatery','Spider-Man 2','11:00AM,12:00PM,1:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(27, 'Moviehouse & Eatery','Onward','12:00PM,2:00PM,4:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(28, 'Moviehouse & Eatery','Baby Driver','1:00pm,3:00pm,5:00pm');
insert into AvailableMovies(id, name, title, listtimes)
        values(29, 'Moviehouse & Eatery','Captain America','2:00PM,4:00PM,6:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(30, 'Moviehouse & Eatery','A Quiet Place','3:00PM,5:00PM,7:00PM');

insert into AvailableMovies(id, name, title, listtimes)
        values(31, 'Cinemark 15','Deadpool','11:00AM,12:00PM,1:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(32, 'Cinemark 15','Godzilla vs Kong','12:00PM,2:00PM,4:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(33, 'Cinemark 15','Crazy Rich Asians','1:00PM,3:00PM,5:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(34, 'Cinemark 15','Jurassic Park','2:00PM,4:00PM,6:00PM');
insert into AvailableMovies(id, name, title, listtimes)
	     values(35, 'Cinemark 15','I Robot','3:00PM,5:00PM,7:00PM');

insert into AvailableMovies(id, name, title, listtimes)
        values(36, 'Studio Movie Grill 2','Spider-Man 2','11:00AM,12:00PM,1:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(37, 'Studio Movie Grill 2','Onward','12:00PM,2:00PM,4:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(38, 'Studio Movie Grill 2','Baby Driver','1:00PM,3:00PM,5:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(39, 'Studio Movie Grill 2','Captain America','2:00PM,4:00PM,6:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(40, 'Studio Movie Grill 2','A Quiet Place','3:00PM,5:00PM,7:00PM');
		
insert into AvailableMovies(id, name, title, listtimes)
        values(41, 'Village On The Parkway','Deadpool','11:00AM,12:00PM,1:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(42, 'Village On The Parkway','Godzilla vs Kong','12:00PM,2:00PM,4:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(43, 'Village On The Parkway','Crazy Rich Asians','1:00PM,3:00PM,5:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(44, 'Village On The Parkway','Jurassic Park','2:00PM,4:00PM,6:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(45, 'Village On The Parkway','I Robot','3:00PM,5:00PM,7:00PM');

insert into AvailableMovies(id, name, title, listtimes)
        values(46, 'AMC 22','Spider-Man 2','11:00AM,12:00PM,1:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(47, 'AMC 22','Onward','12:00PM,2:00PM,4:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(48, 'AMC 22','Baby Driver','1:00pm,3:00pm,5:00pm');
insert into AvailableMovies(id, name, title, listtimes)
        values(49, 'AMC 22','Captain America','2:00PM,4:00PM,6:00PM');
insert into AvailableMovies(id, name, title, listtimes)
        values(50, 'AMC 22','A Quiet Place','3:00PM,5:00PM,7:00PM');