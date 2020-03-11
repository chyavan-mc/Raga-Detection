CREATE TABLE Swara (
  'id' int,
  's_name' char,
  'vikruti' int,
  'name' varchar(255),
  'step' int,
  'modified_on' datetime,
  PRIMARY KEY(s_name, vikruti)
);

CREATE TABLE Raga (
  'id' int,
  'name' varchar(255) PRIMARY KEY,
  'mode' int,
  'modified_on' datetime
);

CREATE TABLE Mela (
  'id' int PRIMARY KEY,
  'name' varchar(255),
  'chakra_id' int,
  'group_id' int,
  'chakra_name' varchar(255),
  'group_name' varchar(255),
  'modified_on' datetime,
  'raga_type' varchar(255),
  'shadja_name' varchar(255),
  'shadja_vikruti' int,
  'rishabha_name' varchar(255),
  'rishabha_vikruti' int,
  'gandhara_name' varchar(255),
  'gandhara_vikruti' int,
  'panchama_name' varchar(255),
  'panchama_vikruti' int,
  'daivata_name' varchar(255),
  'daivata_vikruti' int,
  'nishada_name' varchar(255),
  'nishada_vikruti' int,
  'shadja_t_name' varchar(255),
  'shadja_t_vikruti' int,
  
  FOREIGN KEY (raga_type) REFERENCES Raga(name),
  FOREIGN KEY (shadja_name) REFERENCES Swara(s_name)
  FOREIGN KEY (shadja_vikruti) REFERENCES Swara(vikruti),
  FOREIGN KEY (rishabha_name) REFERENCES Swara(s_name),
  FOREIGN KEY (rishabha_vikruti) REFERENCES Swara(vikruti),
  FOREIGN KEY (gandhara_name) REFERENCES Swara(s_name),
  FOREIGN KEY (gandhara_vikruti) REFERENCES Swara(vikruti),
  FOREIGN KEY (panchama_name) REFERENCES Swara(s_name),
  FOREIGN KEY (panchama_vikruti) REFERENCES Swara(vikruti),
  FOREIGN KEY (daivata_name) REFERENCES Swara(s_name),
  FOREIGN KEY (daivata_vikruti) REFERENCES Swara(vikruti),
  FOREIGN KEY (nishada_name) REFERENCES Swara(s_name),
  FOREIGN KEY (nishada_vikruti) REFERENCES Swara(vikruti),
  FOREIGN KEY (shadja_t_name) REFERENCES Swara(s_name),
  FOREIGN KEY (shadja_t_vikruti) REFERENCES Swara(vikruti)
  );''')


insert into Raga VALUES(1,'Janaka',1,DATETIME('now'));
insert into Raga VALUES(2,'Janya',2,DATETIME('now'));

insert into Swara VALUES(1,'S',0,'Shadja',0,DATETIME('now'));
insert into Swara VALUES(2,'R',1,'Rishabha',1,DATETIME('now'));
insert into Swara VALUES(3,'R',2,'Rishabha',2,DATETIME('now'));
insert into Swara VALUES(4,'R',3,'Rishabha',3,DATETIME('now'));
insert into Swara VALUES(5,'G',1,'Gandhara',2,DATETIME('now'));
insert into Swara VALUES(6,'G',2,'Gandhara',3,DATETIME('now'));
insert into Swara VALUES(7,'G',3,'Gandhara',4,DATETIME('now'));
insert into Swara VALUES(8,'M',1,'Madhyama',5,DATETIME('now'));
insert into Swara VALUES(9,'M',2,'Madhyama',6,DATETIME('now'));
insert into Swara VALUES(10,'P',0,'Panchama',7,DATETIME('now'));
insert into Swara VALUES(11,'D',1,'Daivatha',8,DATETIME('now'));
insert into Swara VALUES(12,'D',2,'Daivatha',9,DATETIME('now'));
insert into Swara VALUES(13,'D',3,'Daivatha',10,DATETIME('now'));
insert into Swara VALUES(14,'N',1,'Nishada',9,DATETIME('now'));
insert into Swara VALUES(15,'N',2,'Nishada',10,DATETIME('now'));
insert into Swara VALUES(16,'N',3,'Nishada',11,DATETIME('now'));
insert into Swara VALUES(17,"S'",0,'Shadja_t',12,DATETIME('now'));

insert into Mela VALUES(1,"Kanakangi",1,1,"Indu","Purva",DATETIME('now'),"Janaka","S",0,"R",1,"G",1,"M",1,"P", 0 ,"D",1,"N",1,"S'", 0);
insert into Mela VALUES(37,"Salagam",7,2,"Rishi","Uttara",DATETIME('now'),"Janaka","S",0,"R",1,"G",1,"M",2,"P", 0 ,"D",1,"N",1,"S'", 0);
insert into Mela VALUES(2,"Ratnangi",1,1,"Indu","Purva",DATETIME('now'),"Janaka","S",0,"R",1,"G",1,"M",1,"P", 0 ,"D",1,"N",2,"S'", 0);
insert into Mela VALUES(38,"Jalarnavam",7,2,"Rishi","Uttara",DATETIME('now'),"Janaka","S",0,"R",1,"G",1,"M",2,"P", 0 ,"D",1,"N",2,"S'", 0);
insert into Mela VALUES(3,"Ganamurti",1,1,"Indu","Purva",DATETIME('now'),"Janaka","S",0,"R",1,"G",1,"M",1,"P", 0 ,"D",1,"N",3,"S'", 0);
insert into Mela VALUES(39,"Jhalavarali",7,2,"Rishi","Uttara",DATETIME('now'),"Janaka","S",0,"R",1,"G",1,"M",2,"P", 0 ,"D",1,"N",3,"S'", 0);
insert into Mela VALUES(4,"Vanaspati",1,1,"Indu","Purva",DATETIME('now'),"Janaka","S",0,"R",1,"G",1,"M",1,"P", 0 ,"D",2,"N",2,"S'", 0);
insert into Mela VALUES(40,"Navaneetam",7,2,"Rishi","Uttara",DATETIME('now'),"Janaka","S",0,"R",1,"G",1,"M",2,"P", 0 ,"D",2,"N",2,"S'", 0);
insert into Mela VALUES(5,"Manavati",1,1,"Indu","Purva",DATETIME('now'),"Janaka","S",0,"R",1,"G",1,"M",1,"P", 0 ,"D",2,"N",3,"S'", 0);
insert into Mela VALUES(41,"Pavani",7,2,"Rishi","Uttara",DATETIME('now'),"Janaka","S",0,"R",1,"G",1,"M",2,"P", 0 ,"D",2,"N",3,"S'", 0);
insert into Mela VALUES(6,"Tanarupi",1,1,"Indu","Purva",DATETIME('now'),"Janaka","S",0,"R",1,"G",1,"M",1,"P", 0 ,"D",3,"N",3,"S'", 0);
insert into Mela VALUES(42,"Raghupriya",7,2,"Rishi","Uttara",DATETIME('now'),"Janaka","S",0,"R",1,"G",1,"M",2,"P", 0 ,"D",3,"N",3,"S'", 0);
insert into Mela VALUES(7,"Senavati",2,1,"Netra","Purva",DATETIME('now'),"Janaka","S",0,"R",1,"G",2,"M",1,"P", 0 ,"D",1,"N",1,"S'", 0);
insert into Mela VALUES(43,"Gavambhodi",8,2,"Vasu","Uttara",DATETIME('now'),"Janaka","S",0,"R",1,"G",2,"M",2,"P", 0 ,"D",1,"N",1,"S'", 0);
insert into Mela VALUES(8,"Hanumatodi",2,1,"Netra","Purva",DATETIME('now'),"Janaka","S",0,"R",1,"G",2,"M",1,"P", 0 ,"D",1,"N",2,"S'", 0);
insert into Mela VALUES(44,"Bhavapriya",8,2,"Vasu","Uttara",DATETIME('now'),"Janaka","S",0,"R",1,"G",2,"M",2,"P", 0 ,"D",1,"N",2,"S'", 0);
insert into Mela VALUES(9,"Dhenuka",2,1,"Netra","Purva",DATETIME('now'),"Janaka","S",0,"R",1,"G",2,"M",1,"P", 0 ,"D",1,"N",3,"S'", 0);
insert into Mela VALUES(45,"Shubhapantuvarali",8,2,"Vasu","Uttara",DATETIME('now'),"Janaka","S",0,"R",1,"G",2,"M",2,"P", 0 ,"D",1,"N",3,"S'", 0);
insert into Mela VALUES(10,"Natakapriya",2,1,"Netra","Purva",DATETIME('now'),"Janaka","S",0,"R",1,"G",2,"M",1,"P", 0 ,"D",2,"N",2,"S'", 0);
insert into Mela VALUES(46,"Shadvidamargini",8,2,"Vasu","Uttara",DATETIME('now'),"Janaka","S",0,"R",1,"G",2,"M",2,"P", 0 ,"D",2,"N",2,"S'", 0);
insert into Mela VALUES(11,"Kokilapriya",2,1,"Netra","Purva",DATETIME('now'),"Janaka","S",0,"R",1,"G",2,"M",1,"P", 0 ,"D",2,"N",3,"S'", 0);
insert into Mela VALUES(47,"Suvarnangi",8,2,"Vasu","Uttara",DATETIME('now'),"Janaka","S",0,"R",1,"G",2,"M",2,"P", 0 ,"D",2,"N",3,"S'", 0);
insert into Mela VALUES(12,"Rupavati",2,1,"Netra","Purva",DATETIME('now'),"Janaka","S",0,"R",1,"G",2,"M",1,"P", 0 ,"D",3,"N",3,"S'", 0);
insert into Mela VALUES(48,"Divyamani",8,2,"Vasu","Uttara",DATETIME('now'),"Janaka","S",0,"R",1,"G",2,"M",2,"P", 0 ,"D",3,"N",3,"S'", 0);
insert into Mela VALUES(13,"Gayakapriya",3,1,"Agni","Purva",DATETIME('now'),"Janaka","S",0,"R",1,"G",3,"M",1,"P", 0 ,"D",1,"N",1,"S'", 0);
insert into Mela VALUES(49,"Dhavalambari",9,2,"Brahma","Uttara",DATETIME('now'),"Janaka","S",0,"R",1,"G",3,"M",2,"P", 0 ,"D",1,"N",1,"S'", 0);
insert into Mela VALUES(14,"Vakulabharanam",3,1,"Agni","Purva",DATETIME('now'),"Janaka","S",0,"R",1,"G",3,"M",1,"P", 0 ,"D",1,"N",2,"S'", 0);
insert into Mela VALUES(50,"Namanarayani",9,2,"Brahma","Uttara",DATETIME('now'),"Janaka","S",0,"R",1,"G",3,"M",2,"P", 0 ,"D",1,"N",2,"S'", 0);
insert into Mela VALUES(15,"Mayamalavagowla",3,1,"Agni","Purva",DATETIME('now'),"Janaka","S",0,"R",1,"G",3,"M",1,"P", 0 ,"D",1,"N",3,"S'", 0);
insert into Mela VALUES(51,"Kamavardhini",9,2,"Brahma","Uttara",DATETIME('now'),"Janaka","S",0,"R",1,"G",3,"M",2,"P", 0 ,"D",1,"N",3,"S'", 0);
insert into Mela VALUES(16,"Chakravakam",3,1,"Agni","Purva",DATETIME('now'),"Janaka","S",0,"R",1,"G",3,"M",1,"P", 0 ,"D",2,"N",2,"S'", 0);
insert into Mela VALUES(52,"Ramapriya",9,2,"Brahma","Uttara",DATETIME('now'),"Janaka","S",0,"R",1,"G",3,"M",2,"P", 0 ,"D",2,"N",2,"S'", 0);
insert into Mela VALUES(17,"Suryakantam",3,1,"Agni","Purva",DATETIME('now'),"Janaka","S",0,"R",1,"G",3,"M",1,"P", 0 ,"D",2,"N",3,"S'", 0);
insert into Mela VALUES(53,"Gamanashrama",9,2,"Brahma","Uttara",DATETIME('now'),"Janaka","S",0,"R",1,"G",3,"M",2,"P", 0 ,"D",2,"N",3,"S'", 0);
insert into Mela VALUES(18,"Hatakambari",3,1,"Agni","Purva",DATETIME('now'),"Janaka","S",0,"R",1,"G",3,"M",1,"P", 0 ,"D",3,"N",3,"S'", 0);
insert into Mela VALUES(54,"Vishwambari",9,2,"Brahma","Uttara",DATETIME('now'),"Janaka","S",0,"R",1,"G",3,"M",2,"P", 0 ,"D",3,"N",3,"S'", 0);
insert into Mela VALUES(19,"Jhankaradhwani",4,1,"Veda","Purva",DATETIME('now'),"Janaka","S",0,"R",2,"G",2,"M",1,"P", 0 ,"D",1,"N",1,"S'", 0);
insert into Mela VALUES(55,"Shamalangi",10,2,"Disi","Uttara",DATETIME('now'),"Janaka","S",0,"R",2,"G",2,"M",2,"P", 0 ,"D",1,"N",1,"S'", 0);
insert into Mela VALUES(20,"Natabhairavi",4,1,"Veda","Purva",DATETIME('now'),"Janaka","S",0,"R",2,"G",2,"M",1,"P", 0 ,"D",1,"N",2,"S'", 0);
insert into Mela VALUES(56,"Shanmukhapriya",10,2,"Disi","Uttara",DATETIME('now'),"Janaka","S",0,"R",2,"G",2,"M",2,"P", 0 ,"D",1,"N",2,"S'", 0);
insert into Mela VALUES(21,"Keeravani",4,1,"Veda","Purva",DATETIME('now'),"Janaka","S",0,"R",2,"G",2,"M",1,"P", 0 ,"D",1,"N",3,"S'", 0);
insert into Mela VALUES(57,"Simhendramadhyamam",10,2,"Disi","Uttara",DATETIME('now'),"Janaka","S",0,"R",2,"G",2,"M",2,"P", 0 ,"D",1,"N",3,"S'", 0);
insert into Mela VALUES(22,"Kharaharapriya",4,1,"Veda","Purva",DATETIME('now'),"Janaka","S",0,"R",2,"G",2,"M",1,"P", 0 ,"D",2,"N",2,"S'", 0);
insert into Mela VALUES(58,"Hemavati",10,2,"Disi","Uttara",DATETIME('now'),"Janaka","S",0,"R",2,"G",2,"M",2,"P", 0 ,"D",2,"N",2,"S'", 0);
insert into Mela VALUES(23,"Gourimanohari",4,1,"Veda","Purva",DATETIME('now'),"Janaka","S",0,"R",2,"G",2,"M",1,"P", 0 ,"D",2,"N",3,"S'", 0);
insert into Mela VALUES(59,"Dharmavati",10,2,"Disi","Uttara",DATETIME('now'),"Janaka","S",0,"R",2,"G",2,"M",2,"P", 0 ,"D",2,"N",3,"S'", 0);
insert into Mela VALUES(24,"Varunapriya",4,1,"Veda","Purva",DATETIME('now'),"Janaka","S",0,"R",2,"G",2,"M",1,"P", 0 ,"D",3,"N",3,"S'", 0);
insert into Mela VALUES(60,"Neetimati",10,2,"Disi","Uttara",DATETIME('now'),"Janaka","S",0,"R",2,"G",2,"M",2,"P", 0 ,"D",3,"N",3,"S'", 0);
insert into Mela VALUES(25,"Mararanjani",5,1,"Bana","Purva",DATETIME('now'),"Janaka","S",0,"R",2,"G",3,"M",1,"P", 0 ,"D",1,"N",1,"S'", 0);
insert into Mela VALUES(61,"Kantamani",11,2,"Rudra","Uttara",DATETIME('now'),"Janaka","S",0,"R",2,"G",3,"M",2,"P", 0 ,"D",1,"N",1,"S'", 0);
insert into Mela VALUES(26,"Charukesi",5,1,"Bana","Purva",DATETIME('now'),"Janaka","S",0,"R",2,"G",3,"M",1,"P", 0 ,"D",1,"N",2,"S'", 0);
insert into Mela VALUES(62,"Rishabhapriya",11,2,"Rudra","Uttara",DATETIME('now'),"Janaka","S",0,"R",2,"G",3,"M",2,"P", 0 ,"D",1,"N",2,"S'", 0);
insert into Mela VALUES(27,"Sarasangi",5,1,"Bana","Purva",DATETIME('now'),"Janaka","S",0,"R",2,"G",3,"M",1,"P", 0 ,"D",1,"N",3,"S'", 0);
insert into Mela VALUES(63,"Latangi",11,2,"Rudra","Uttara",DATETIME('now'),"Janaka","S",0,"R",2,"G",3,"M",2,"P", 0 ,"D",1,"N",3,"S'", 0);
insert into Mela VALUES(28,"Harikambhoji",5,1,"Bana","Purva",DATETIME('now'),"Janaka","S",0,"R",2,"G",3,"M",1,"P", 0 ,"D",2,"N",2,"S'", 0);
insert into Mela VALUES(64,"Vachaspati",11,2,"Rudra","Uttara",DATETIME('now'),"Janaka","S",0,"R",2,"G",3,"M",2,"P", 0 ,"D",2,"N",2,"S'", 0);
insert into Mela VALUES(29,"Dheerasankarabaranam",5,1,"Bana","Purva",DATETIME('now'),"Janaka","S",0,"R",2,"G",3,"M",1,"P", 0 ,"D",2,"N",3,"S'", 0);
insert into Mela VALUES(65,"Mechakalyani",11,2,"Rudra","Uttara",DATETIME('now'),"Janaka","S",0,"R",2,"G",3,"M",2,"P", 0 ,"D",2,"N",3,"S'", 0);
insert into Mela VALUES(30,"Naganandini",5,1,"Bana","Purva",DATETIME('now'),"Janaka","S",0,"R",2,"G",3,"M",1,"P", 0 ,"D",3,"N",3,"S'", 0);
insert into Mela VALUES(66,"Chitrambari",11,2,"Rudra","Uttara",DATETIME('now'),"Janaka","S",0,"R",2,"G",3,"M",2,"P", 0 ,"D",3,"N",3,"S'", 0);
insert into Mela VALUES(31,"Yagapriya",6,1,"Rutu","Purva",DATETIME('now'),"Janaka","S",0,"R",3,"G",3,"M",1,"P", 0 ,"D",1,"N",1,"S'", 0);
insert into Mela VALUES(67,"Sucharitra",12,2,"Aditya","Uttara",DATETIME('now'),"Janaka","S",0,"R",3,"G",3,"M",2,"P", 0 ,"D",1,"N",1,"S'", 0);
insert into Mela VALUES(32,"Ragavardhini",6,1,"Rutu","Purva",DATETIME('now'),"Janaka","S",0,"R",3,"G",3,"M",1,"P", 0 ,"D",1,"N",2,"S'", 0);
insert into Mela VALUES(68,"Jyoti",12,2,"Aditya","Uttara",DATETIME('now'),"Janaka","S",0,"R",3,"G",3,"M",2,"P", 0 ,"D",1,"N",2,"S'", 0);
insert into Mela VALUES(33,"Gangeyabhushani",6,1,"Rutu","Purva",DATETIME('now'),"Janaka","S",0,"R",3,"G",3,"M",1,"P", 0 ,"D",1,"N",3,"S'", 0);
insert into Mela VALUES(69,"Dhatuvardani",12,2,"Aditya","Uttara",DATETIME('now'),"Janaka","S",0,"R",3,"G",3,"M",2,"P", 0 ,"D",1,"N",3,"S'", 0);
insert into Mela VALUES(34,"Vagadheeswari",6,1,"Rutu","Purva",DATETIME('now'),"Janaka","S",0,"R",3,"G",3,"M",1,"P", 0 ,"D",2,"N",2,"S'", 0);
insert into Mela VALUES(70,"Nasikabhushini",12,2,"Aditya","Uttara",DATETIME('now'),"Janaka","S",0,"R",3,"G",3,"M",2,"P", 0 ,"D",2,"N",2,"S'", 0);
insert into Mela VALUES(35,"Shulini",6,1,"Rutu","Purva",DATETIME('now'),"Janaka","S",0,"R",3,"G",3,"M",1,"P", 0 ,"D",2,"N",3,"S'", 0);
insert into Mela VALUES(71,"Kosalam",12,2,"Aditya","Uttara",DATETIME('now'),"Janaka","S",0,"R",3,"G",3,"M",2,"P", 0 ,"D",2,"N",3,"S'", 0);
insert into Mela VALUES(36,"Chalanata",6,1,"Rutu","Purva",DATETIME('now'),"Janaka","S",0,"R",3,"G",3,"M",1,"P", 0 ,"D",3,"N",3,"S'", 0);
insert into Mela VALUES(72,"Rasikapriya",12,2,"Aditya","Uttara",DATETIME('now'),"Janaka","S",0,"R",3,"G",3,"M",2,"P", 0 ,"D",3,"N",3,"S'", 0);