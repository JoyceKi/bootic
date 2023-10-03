DROP TABLE IF EXISTS `dbbootic`;

CREATE TABLE `dbbootic` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `id_membre` mediumint,
  `pseudo` TEXT default NULL,
  `mdp` varchar(255),
  `nom` varchar(255) default NULL,
  `prenom` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `civilite` TEXT default NULL,
  `ville` varchar(255),
  `cp` varchar(255),
  `adresse` varchar(255) default NULL,
  `statut` varchar(255) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `dbbootic` (`id_membre`,`pseudo`,`mdp`,`nom`,`prenom`,`email`,`civilite`,`ville`,`cp`,`adresse`,`statut`)
VALUES
  (1,"dignissim","TcY44TlY4NR8","Rodgers","Jorden","in.sodales@aol.couk","Duis","Haridwar","18215","Ap #846-5719 Tristique Rd.","1"),
  (2,"Curabitur","FcQ04GjJ5GR5","Campos","Vielka","malesuada.fames.ac@hotmail.couk","rutrum","Assen","31736","Ap #108-3072 Sociis St.","1"),
  (3,"risus.","PgB43XjE1FL9","Haynes","Medge","aenean.eget.magna@google.couk","a,","New Westminster","18128","421-6973 Metus Avenue","0"),
  (4,"dui.","WlD73MoO5IM8","Reyes","Mara","penatibus.et.magnis@icloud.com","Donec","Joliet","36921","682-8089 Luctus. Road","1"),
  (5,"ridiculus","SzY25LsI1OT3","Avery","Remedios","eros.nam.consequat@hotmail.ca","Mauris","Ashburton","60851","Ap #577-8698 Dictum Road","0"),
  (6,"lacus.","YoZ34AxE0ME5","Tillman","Veronica","vel@yahoo.org","urna.","Lagos","54698","923-8837 Quam. Road","0"),
  (7,"mi","SlJ81UbI1RV4","Stafford","Kareem","maecenas@protonmail.edu","lorem","Casablanca","62528","2469 Elit Avenue","0"),
  (8,"ultrices.","YsJ08GcT3PY2","Hayes","Patience","eu.dui@outlook.net","dolor","Antibes","57094","Ap #168-1818 Rutrum, Street","1"),
  (9,"dis","AbE33WxO3QN5","Greer","Brynne","cras.lorem@aol.ca","tempor,","Kotamobagu","47296","Ap #136-2591 Magna. Rd.","1"),
  (10,"semper","OjH11EuE9IX1","Fields","Coby","nisi.sem@yahoo.ca","aliquet,","Dublin","77165","1616 Aliquam Rd.","1");
INSERT INTO `dbbootic` (`id_membre`,`pseudo`,`mdp`,`nom`,`prenom`,`email`,`civilite`,`ville`,`cp`,`adresse`,`statut`)
VALUES
  (11,"Fusce","BuL64NxD7PF3","Chan","Britanni","non@protonmail.edu","fringilla","Parral","37664","372-8045 Sapien. Street","0"),
  (12,"natoque","EvU67VqN7AH7","Green","Morgan","semper.dui@google.ca","ultrices","Mosjøen","83496","Ap #411-9590 Lorem St.","0"),
  (13,"Donec","TxU47ZmU6IJ6","Shields","Uriel","integer.sem@yahoo.com","malesuada","Ninh Giang","25920","Ap #749-7690 Lorem Av.","0"),
  (14,"metus.","PvQ56FgU1WC8","Stokes","Desirae","rutrum@yahoo.edu","vel,","Joondalup","52389","5430 Dui Rd.","1"),
  (15,"odio,","RxC73NiD2FN8","Green","Kermit","enim.commodo@google.net","nulla","Colombes","14482","173-8210 Tincidunt St.","1"),
  (16,"tempor","RrS14TqQ6TC5","Lawrence","Chadwick","congue.elit@aol.couk","Duis","Saratov","05419","Ap #131-8959 Malesuada Ave","1"),
  (17,"lectus","QvY71WeN9WI3","Morales","Ginger","phasellus.libero@outlook.ca","cursus","Sogamoso","61218","186-8651 Mus. Rd.","0"),
  (18,"congue","VqK04FoI2OL5","Allison","Nolan","lobortis@protonmail.couk","Quisque","Parndorf","61780","Ap #491-7014 Vestibulum Road","0"),
  (19,"libero.","JsJ73HmV3JC1","Shepard","Vera","dui@outlook.ca","dui.","Cần Thơ","20477","P.O. Box 606, 6113 Magna Street","0"),
  (20,"Phasellus","LsW83CnJ5JU7","Bruce","Bryar","quisque.porttitor@google.com","eu","Floridablanca","19988","634-1088 Gravida. Avenue","1");
INSERT INTO `dbbootic` (`id_membre`,`pseudo`,`mdp`,`nom`,`prenom`,`email`,`civilite`,`ville`,`cp`,`adresse`,`statut`)
VALUES
  (21,"non","RbM67QjG3NR3","Hughes","Ima","ultricies.ornare.elit@google.edu","Sed","Afşin","90273","6392 Eget Av.","1"),
  (22,"orci","LhR11MjO5UW5","Hardy","Tyler","euismod@google.ca","natoque","Isla de Pascua","44938","884-4512 Lorem Rd.","1"),
  (23,"Ut","QsF20XbD5JH8","Burke","Gabriel","a.nunc@outlook.couk","dolor","Vancouver","60604","Ap #213-4356 At St.","0"),
  (24,"dignissim","UxR73SpV5RQ4","Robinson","Igor","iaculis.lacus@aol.com","diam.","Lerum","23641","P.O. Box 376, 9631 Cum Rd.","1"),
  (25,"vitae","OiW23SmY8PV2","Hawkins","David","vivamus.sit.amet@google.ca","orci.","Sandviken","65792","213-6945 Porttitor St.","1"),
  (26,"mauris,","EcQ50IsN0EL8","Fields","Preston","quis.pede.praesent@outlook.org","sagittis","Bến Tre","56231","109-5187 Penatibus St.","1"),
  (27,"nascetur","EpD91JwG3SX3","Orr","Yvette","in.scelerisque@protonmail.net","nisl","Vladimir","81142","945-4550 Dolor Street","1"),
  (28,"sodales","XvJ02TlW6VY5","Mckinney","Hilda","nulla.tincidunt@aol.com","pharetra.","Zwickau","58458","P.O. Box 669, 2618 Pharetra Avenue","1"),
  (29,"lectus","QcN10JsM2MV1","Suarez","Erich","lorem@yahoo.edu","Cras","Mount Gambier","74823","Ap #483-1525 Nec, Ave","0"),
  (30,"orci.","KnN82YwL3CL9","Cooley","Eliana","aptent.taciti@yahoo.couk","ad","Kerikeri","14258","2893 Ut Road","0");
INSERT INTO `dbbootic` (`id_membre`,`pseudo`,`mdp`,`nom`,`prenom`,`email`,`civilite`,`ville`,`cp`,`adresse`,`statut`)
VALUES
  (31,"tellus","KmQ35AkS6GT2","Clay","Iris","pede.nonummy.ut@hotmail.couk","sodales","Barranca","26647","703-8935 Vitae, Av.","1"),
  (32,"augue.","OfN99ZjW6UO1","England","Fleur","suspendisse@outlook.edu","sit","Guápiles","13671","P.O. Box 150, 1128 Velit Av.","1"),
  (33,"eget","VhO52BtB2YI6","Kim","Hall","curabitur.vel.lectus@google.com","nisl","Jacobabad","84130","Ap #549-2885 Quisque Rd.","0"),
  (34,"Morbi","VeD67GqI0US6","Wood","Asher","quis@aol.net","et","Santander de Quilichao","84765","2316 Dui, Rd.","1"),
  (35,"lectus.","BnG56RmR5RW8","Langley","Brody","augue.eu@aol.edu","Quisque","Mobile","47408","P.O. Box 657, 9298 Vel Rd.","1"),
  (36,"ut","PdB07SjW5EG3","Norman","Pamela","lectus.nullam.suscipit@yahoo.com","non","Chepén","75439","576-4502 Risus. Rd.","1"),
  (37,"placerat","CvM40YdM2SK1","Bradshaw","Xandra","egestas.lacinia@google.couk","velit","Cáceres","22597","7264 Gravida Ave","0"),
  (38,"Nam","WlO86IiW2JX9","Madden","Regan","risus.duis@aol.org","a,","Amsterdam","44418","Ap #286-8591 In Street","1"),
  (39,"sit","GbM50XgT2BO0","Wilkerson","Palmer","lectus.convallis.est@yahoo.edu","Donec","Phát Diệm","64786","P.O. Box 820, 878 Aliquet, Rd.","1"),
  (40,"Cum","OyN76PdZ8LM7","Sims","Chadwick","quis.pede.suspendisse@icloud.net","risus","Valenzuela","42655","Ap #645-5069 Lobortis, Road","0");
INSERT INTO `dbbootic` (`id_membre`,`pseudo`,`mdp`,`nom`,`prenom`,`email`,`civilite`,`ville`,`cp`,`adresse`,`statut`)
VALUES
  (41,"eros.","WnB31LiY6RX8","Hamilton","Rhiannon","sed@outlook.org","justo.","Rajkot","85439","561-4357 Sagittis. Street","0"),
  (42,"semper","GgN33GpO3XQ3","Rasmussen","Wilma","hymenaeos.mauris@icloud.couk","dui","Western Water Catchment","74558","P.O. Box 265, 6044 Vestibulum St.","1"),
  (43,"Sed","PxW34BpD1FQ0","Cash","Jennifer","elit.elit@protonmail.net","nec","Lanklaar","86793","P.O. Box 539, 8563 Aliquam St.","1"),
  (44,"fringilla","UjM58SxK7SA4","Bentley","Maxwell","sit@icloud.org","non,","Cartago","47347","6443 Elit. Ave","0"),
  (45,"pellentesque","QoK34VwW8RX8","Shields","Anjolie","mauris.ut@hotmail.com","Donec","Ivangorod","47160","418-9201 Erat. Rd.","0"),
  (46,"Maecenas","RwM94GiP4LE5","Estes","Xenos","lacus.nulla@icloud.edu","pharetra","Valparaíso de Goiás","68647","5066 Dui, St.","0"),
  (47,"iaculis","TlN65FkP6EQ1","Whitfield","Moses","nunc.ullamcorper.eu@hotmail.ca","nunc.","Bạc Liêu","51671","653-751 Orci Avenue","1"),
  (48,"Quisque","KrA61VfJ6FY1","Rose","Uma","nec.metus.facilisis@outlook.org","ut","Halifax","96543","445-2441 Neque Road","0"),
  (49,"suscipit,","RdS30XrB2ZO3","Garcia","Alvin","quisque.ornare@hotmail.couk","sociosqu","Ilhéus","62253","Ap #970-2601 Sit Av.","1"),
  (50,"tortor.","UrQ73MqF7ML2","Mcguire","Yen","bibendum.sed@hotmail.couk","Suspendisse","Dampremy","77167","2876 Amet, St.","1");
INSERT INTO `dbbootic` (`id_membre`,`pseudo`,`mdp`,`nom`,`prenom`,`email`,`civilite`,`ville`,`cp`,`adresse`,`statut`)
VALUES
  (51,"eleifend","VvW62FhH3FH1","Watts","Abraham","montes.nascetur@icloud.edu","In","Førde","38323","Ap #229-3252 Ante. Rd.","1"),
  (52,"Suspendisse","EuT88HfY6XW6","Mathis","Glenna","vulputate@icloud.ca","aliquet","Hạ Long","73374","784-3522 Libero. Rd.","0"),
  (53,"erat","ToN13BsY4FP9","Ashley","Calista","ipsum.suspendisse.sagittis@hotmail.com","non","Gunsan","33711","Ap #757-7226 Adipiscing Street","1"),
  (54,"lorem","UiE02ZcH5RM8","Lindsey","Elaine","urna@yahoo.edu","eu","Amritsar","43786","Ap #353-1050 Blandit Ave","1"),
  (55,"tellus","EwF38LnF7VD6","Hester","Tana","dolor.nonummy@google.com","velit.","Lasbela","32871","773 Magna, Rd.","0"),
  (56,"vestibulum","QbJ55YkH9MH2","Johns","Abdul","ut@aol.net","quam","Lipetsk","71553","Ap #659-6188 Arcu Rd.","0"),
  (57,"congue.","SsP21MpN5SL4","Hodge","August","hymenaeos.mauris@aol.ca","a","Hameln","12688","814-3033 Ligula. Avenue","0"),
  (58,"luctus","FxB08NcU8UK4","Lester","Elvis","natoque.penatibus@aol.couk","sed","Bursa","63531","P.O. Box 296, 793 Sapien. St.","1"),
  (59,"tellus.","PnJ35QwJ8XW1","Cantrell","Moses","pede.sagittis@google.edu","Duis","San Diego","46253","P.O. Box 566, 8110 Commodo Ave","0"),
  (60,"orci.","WgW53VxG3SL9","Phelps","Jolie","sodales@google.com","egestas","Agartala","85528","5750 At Ave","1");
INSERT INTO `dbbootic` (`id_membre`,`pseudo`,`mdp`,`nom`,`prenom`,`email`,`civilite`,`ville`,`cp`,`adresse`,`statut`)
VALUES
  (61,"a","WsQ36PfN3IT5","Stuart","Edan","pellentesque@protonmail.org","fames","Blenheim","32791","Ap #320-128 Penatibus Road","1"),
  (62,"eget","DjU71OvP8XK2","Singleton","Kennedy","lorem.sit.amet@protonmail.edu","Suspendisse","Huaraz","17195","Ap #315-1291 Tellus St.","0"),
  (63,"Aliquam","SkL50UsR4JT7","Clarke","Tamara","nulla.eu@hotmail.ca","egestas.","Solok","35602","Ap #540-7677 Amet Rd.","0"),
  (64,"Proin","RtC11BeE4LX9","Caldwell","Rhona","aliquet.odio@aol.net","diam","Montluçon","35098","418-7398 Erat. Avenue","1"),
  (65,"gravida.","DkS46PtM7TX4","Miranda","Aline","aenean.eget@outlook.ca","elit,","Attert","21629","Ap #475-5991 Nec Avenue","0"),
  (66,"et","IqY54HdZ5FW7","Battle","Jordan","est.arcu@outlook.couk","feugiat","Palangka Raya","22689","Ap #710-8314 Mollis. Av.","0"),
  (67,"vulputate,","AbC52NvY7ZD3","Andrews","Daniel","et.ultrices@google.edu","sem.","Vienna","33189","795-6047 Quam St.","1"),
  (68,"sit","MlW42VfN4IV2","Hayden","Haviva","quisque@hotmail.net","dolor.","McCallum","51572","4644 Lobortis. St.","1"),
  (69,"diam.","DbM35JnY7OC8","Thomas","Abbot","morbi.tristique@aol.couk","Quisque","Logroño","31436","P.O. Box 812, 2396 Cursus Street","0"),
  (70,"malesuada.","IuH38LpO6GD6","Rodriguez","Macaulay","nisi@google.ca","sociis","Secunda","65337","163-1547 Ligula. Rd.","0");
INSERT INTO `dbbootic` (`id_membre`,`pseudo`,`mdp`,`nom`,`prenom`,`email`,`civilite`,`ville`,`cp`,`adresse`,`statut`)
VALUES
  (71,"ut","UpC46WkU7AQ2","Cooke","Ivory","phasellus.in@protonmail.org","arcu","Emines","84066","Ap #135-1553 Mus. Ave","0"),
  (72,"mi","YvO68HqQ7VK2","Cruz","Maryam","amet.diam@google.edu","pellentesque","Sechura","33049","566-6562 Et St.","1"),
  (73,"feugiat.","QlN69RiI2CY3","Atkins","Simone","lorem.semper@google.org","nec","Hainan","13585","P.O. Box 278, 456 Risus. Avenue","1"),
  (74,"dolor,","DmQ89YxM4SP5","Snow","Giacomo","sed.eu@icloud.edu","malesuada","Piura","50403","P.O. Box 929, 2938 Nunc St.","1"),
  (75,"ac","EpF14EfI3IE0","Ewing","Joel","ipsum.curabitur.consequat@aol.com","Sed","Peterhead","87461","Ap #813-1026 Libero Rd.","1"),
  (76,"parturient","EkG76CrK5RG1","Randall","Hedley","turpis@protonmail.com","placerat.","Kherson","77619","P.O. Box 966, 8047 Molestie. Avenue","0"),
  (77,"montes,","MkY48YdN3BJ3","Ray","Nora","turpis@yahoo.edu","erat.","New Haven","64567","Ap #147-3311 Fermentum Av.","1"),
  (78,"Nunc","GrM63UeB2RB9","Lamb","Adena","conubia.nostra@google.net","dolor.","Baardegem","04032","Ap #806-5944 Mauris St.","0"),
  (79,"euismod","ShO48XcO5UB6","Eaton","Prescott","nec.orci.donec@google.net","Nam","Leoben","85886","4948 Hendrerit Street","1"),
  (80,"ipsum","CeC83EeK8DC1","Cherry","Gail","ornare@protonmail.net","Donec","Quesada","91815","Ap #319-1010 Molestie Road","1");
INSERT INTO `dbbootic` (`id_membre`,`pseudo`,`mdp`,`nom`,`prenom`,`email`,`civilite`,`ville`,`cp`,`adresse`,`statut`)
VALUES
  (81,"nulla.","NjY36UiL5RV6","Sutton","Ashely","arcu.vel@google.com","sodales","Andacollo","53555","Ap #773-3166 Semper Street","1"),
  (82,"orci.","MsH12BjL5ZN3","O'connor","Teagan","tincidunt.congue.turpis@yahoo.couk","Maecenas","Guadalupe","16514","5756 Quis Road","0"),
  (83,"nec","HxS66MuP1YL0","Hood","Kiara","donec@outlook.couk","Suspendisse","Viddalba","17837","Ap #738-6402 Ligula. St.","0"),
  (84,"lorem","KlM63UkV4MW4","Riley","Lois","quis.lectus@icloud.org","a","Envigado","79811","761-3835 Eget Rd.","0"),
  (85,"eu","QrZ27UkX1PB2","Harmon","Gloria","ipsum.nunc.id@aol.com","mollis","Lexington","62325","Ap #970-1747 Aliquam Rd.","0"),
  (86,"diam","InH46SxI3FF1","Mcdonald","Alfonso","lectus.sit@google.net","ornare.","Macau","46354","P.O. Box 982, 8197 Ultrices. Rd.","1"),
  (87,"fringilla","BfU88IvV5YR0","Sexton","Darryl","curabitur.massa@aol.ca","ultricies","Nizhny","17796","Ap #857-5626 Non Road","0"),
  (88,"nunc","UrE98CwP6JV6","Hodges","Cameron","nisi.magna@yahoo.com","dui.","Jhelum","84574","Ap #891-1393 Odio. Rd.","1"),
  (89,"eleifend.","TuR23MeP9ZI7","Callahan","Brenna","aliquam.gravida@google.org","sit","Giyani","30437","P.O. Box 172, 7724 Cras St.","1"),
  (90,"sit","YzJ79VxH9IB0","Malone","Zane","ut@icloud.org","sagittis","Chishtian Mandi","50888","P.O. Box 925, 3156 Donec St.","1");
INSERT INTO `dbbootic` (`id_membre`,`pseudo`,`mdp`,`nom`,`prenom`,`email`,`civilite`,`ville`,`cp`,`adresse`,`statut`)
VALUES
  (91,"tortor","TeS01ImK9GF6","Murray","Bianca","eu@protonmail.edu","molestie","Curacautín","28448","Ap #452-2586 Sodales. Ave","0"),
  (92,"id,","HvW42EuY6MF1","Todd","Zenia","montes.nascetur@protonmail.edu","diam.","Tehuacán","52281","Ap #907-9885 Quam. Rd.","1"),
  (93,"Integer","QhI67PsL7WG4","Rollins","Melvin","lectus.rutrum@google.couk","mi.","Mokpo","84123","Ap #826-9576 Aliquam Rd.","1"),
  (94,"placerat","NpR68LjM8HO7","Frederick","Stacy","libero.mauris@google.org","ligula.","Oyo","48248","853-8094 Diam Av.","0"),
  (95,"nulla","IvS18HxF6UO1","Salinas","Martin","aenean.gravida@protonmail.edu","augue","Oslo","76732","703-3746 Amet Street","1"),
  (96,"vulputate","OtD69EmH9MM7","Rosales","Chancellor","torquent.per@protonmail.org","placerat","Sumy","05454","Ap #246-8050 Erat St.","0"),
  (97,"cursus","HvZ28BhQ5BC1","Ewing","Stephen","erat.volutpat@aol.com","torquent","Chattanooga","20156","Ap #211-6478 Vel St.","1"),
  (98,"sapien,","XkN24UwY3SM5","Ryan","Brendan","porta.elit.a@google.com","Nullam","Delicias","88152","4388 Lobortis St.","1"),
  (99,"ac","JbR57UcW5QT8","Delacruz","Zane","montes.nascetur.ridiculus@protonmail.edu","metus.","El Retorno","85714","Ap #570-6491 Nec Av.","0"),
  (100,"lectus","UkD73JqY9MO3","Browning","Fiona","ac.orci@aol.net","libero","Tocopilla","98613","223-9726 Integer St.","1");
