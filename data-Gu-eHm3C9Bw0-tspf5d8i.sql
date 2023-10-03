DROP TABLE IF EXISTS `dbbootic`;

CREATE TABLE `dbbootic` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `id_produit` mediumint,
  `reference` TEXT default NULL,
  `id_categorie` mediumint default NULL,
  `titre` TEXT default NULL,
  `description` TEXT default NULL,
  `couleur` TEXT default NULL,
  `taille` TEXT default NULL,
  `public` TEXT default NULL,
  `photo` varchar(255),
  `prix` varchar(100) default NULL,
  `stock` mediumint default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `dbbootic` (`id_produit`,`reference`,`id_categorie`,`titre`,`description`,`couleur`,`taille`,`public`,`photo`,`prix`,`stock`)
VALUES
  (1,"vehicula",91,"Aliquam erat volutpat.","nascetur ridiculus mus. Proin vel nisl. Quisque","euismod","lorem.","Duis","http://reddit.com/sub?page=1&offset=1","436€",109),
  (2,"sem",72,"diam at pretium","elit, pellentesque a, facilisis non, bibendum sed,","conubia","est","nec","http://walmart.com/settings?g=1","103€",946),
  (3,"Donec",68,"Quisque imperdiet, erat","luctus et ultrices posuere cubilia Curae Donec","lacus.","Mauris","Fusce","http://zoom.us/sub?q=11","200€",214),
  (4,"Aenean",93,"Aliquam vulputate ullamcorper","consectetuer adipiscing elit. Curabitur sed tortor. Integer","sem,","Nam","arcu.","http://walmart.com/group/9?g=1","483€",548),
  (5,"augue",24,"sociosqu ad litora","luctus aliquet odio. Etiam ligula tortor, dictum","neque","Proin","euismod","https://naver.com/group/9?page=1&offset=1","328€",501),
  (6,"nibh",76,"luctus ut, pellentesque","Nulla interdum. Curabitur dictum. Phasellus in felis.","non,","in,","Nullam","http://yahoo.com/one?q=0","267€",450),
  (7,"et",11,"Aenean gravida nunc","non massa non ante bibendum ullamcorper. Duis","amet","sit","eros","http://wikipedia.org/fr?search=1","163€",169),
  (8,"sed",22,"eleifend egestas. Sed","vel pede blandit congue. In scelerisque scelerisque","facilisis","malesuada","eleifend","https://twitter.com/one?k=0","221€",207),
  (9,"non",29,"arcu. Morbi sit","aliquet. Phasellus fermentum convallis ligula. Donec luctus","ut","est","rutrum","https://walmart.com/site?page=1&offset=1","280€",811),
  (10,"ante",65,"est. Nunc laoreet","faucibus lectus, a sollicitudin orci sem eget","Pellentesque","interdum.","justo","https://pinterest.com/en-us?search=1","350€",827);
INSERT INTO `dbbootic` (`id_produit`,`reference`,`id_categorie`,`titre`,`description`,`couleur`,`taille`,`public`,`photo`,`prix`,`stock`)
VALUES
  (11,"urna.",8,"elit, pharetra ut,","scelerisque scelerisque dui. Suspendisse ac metus vitae","amet,","Phasellus","venenatis","https://baidu.com/one?ad=115","214€",182),
  (12,"Phasellus",33,"eget ipsum. Suspendisse","massa. Quisque porttitor eros nec tellus. Nunc","porta","Integer","penatibus","http://nytimes.com/user/110?str=se","144€",961),
  (13,"mi.",1,"In condimentum. Donec","Nulla interdum. Curabitur dictum. Phasellus in felis.","non,","arcu.","conubia","https://cnn.com/group/9?q=4","228€",777),
  (14,"ut",4,"Aliquam gravida mauris","molestie sodales. Mauris blandit enim consequat purus.","mauris","in","Vestibulum","http://nytimes.com/sub?search=1","110€",415),
  (15,"venenatis",31,"Suspendisse sed dolor.","ac facilisis facilisis, magna tellus faucibus leo,","mauris","risus.","sed","http://cnn.com/en-us?client=g","209€",575),
  (16,"nunc",52,"dis parturient montes,","Proin vel nisl. Quisque fringilla euismod enim.","lobortis","Aliquam","eget","https://ebay.com/group/9?client=g","213€",836),
  (17,"sem",98,"augue id ante","gravida sit amet, dapibus id, blandit at,","Integer","tristique","Duis","https://pinterest.com/sub?client=g","306€",670),
  (18,"Quisque",77,"eu neque pellentesque","faucibus orci luctus et ultrices posuere cubilia","lobortis","Proin","dui,","http://yahoo.com/site?ad=115","349€",889),
  (19,"velit.",78,"iaculis quis, pede.","nec urna suscipit nonummy. Fusce fermentum fermentum","lacus.","pede.","sed","https://whatsapp.com/en-ca?q=test","343€",888),
  (20,"est.",8,"euismod est arcu","Maecenas iaculis aliquet diam. Sed diam lorem,","eu","amet,","taciti","http://whatsapp.com/sub/cars?search=1&q=de","407€",58);
INSERT INTO `dbbootic` (`id_produit`,`reference`,`id_categorie`,`titre`,`description`,`couleur`,`taille`,`public`,`photo`,`prix`,`stock`)
VALUES
  (21,"lectus",37,"Sed id risus","natoque penatibus et magnis dis parturient montes,","Donec","aliquam","Suspendisse","https://instagram.com/fr?q=test","134€",355),
  (22,"facilisi.",64,"Sed eu nibh","egestas. Aliquam nec enim. Nunc ut erat.","pretium","enim.","magnis","http://twitter.com/one?client=g","263€",830),
  (23,"et",61,"mattis. Cras eget","ligula. Nullam feugiat placerat velit. Quisque varius.","non","nisi","convallis","http://yahoo.com/en-us?str=se","299€",284),
  (24,"Phasellus",95,"ipsum cursus vestibulum.","Nunc mauris sapien, cursus in, hendrerit consectetuer,","tristique","dui","In","http://twitter.com/fr?q=test","250€",539),
  (25,"magna",99,"nibh sit amet","Quisque fringilla euismod enim. Etiam gravida molestie","dignissim","ipsum","tempus","http://pinterest.com/one?g=1","187€",829),
  (26,"convallis",81,"mi enim, condimentum","lorem tristique aliquet. Phasellus fermentum convallis ligula.","sodales","pede","vestibulum,","http://youtube.com/group/9?client=g","482€",682),
  (27,"rutrum",90,"a nunc. In","mi, ac mattis velit justo nec ante.","gravida","Cras","litora","http://guardian.co.uk/settings?gi=100","308€",123),
  (28,"Vivamus",18,"interdum. Sed auctor","blandit mattis. Cras eget nisi dictum augue","est","amet,","posuere","https://walmart.com/one?page=1&offset=1","282€",898),
  (29,"et",89,"Fusce mi lorem,","volutpat ornare, facilisis eget, ipsum. Donec sollicitudin","Vivamus","auctor","erat,","https://google.com/en-us?ab=441&aad=2","487€",666),
  (30,"Nulla",40,"libero at auctor","consequat purus. Maecenas libero est, congue a,","erat.","aliquam","molestie","https://youtube.com/en-us?q=0","268€",776);
INSERT INTO `dbbootic` (`id_produit`,`reference`,`id_categorie`,`titre`,`description`,`couleur`,`taille`,`public`,`photo`,`prix`,`stock`)
VALUES
  (31,"mus.",97,"Integer vitae nibh.","nisi dictum augue malesuada malesuada. Integer id","sociis","Fusce","Aliquam","https://guardian.co.uk/sub/cars?q=11","152€",648),
  (32,"sit",87,"mollis. Phasellus libero","a mi fringilla mi lacinia mattis. Integer","massa.","in","orci","https://reddit.com/one?ad=115","230€",955),
  (33,"sem",23,"Aliquam nec enim.","diam. Proin dolor. Nulla semper tellus id","fames","odio","accumsan","https://yahoo.com/one?client=g","252€",872),
  (34,"dolor",78,"euismod ac, fermentum","nibh dolor, nonummy ac, feugiat non, lobortis","mi","lorem","Fusce","https://twitter.com/sub?q=0","418€",276),
  (35,"Donec",32,"auctor ullamcorper, nisl","interdum. Nunc sollicitudin commodo ipsum. Suspendisse non","mauris.","montes,","arcu.","https://zoom.us/sub/cars?ad=115","245€",782),
  (36,"sem",4,"mattis semper, dui","nunc interdum feugiat. Sed nec metus facilisis","Morbi","ultricies","at,","http://yahoo.com/group/9?q=4","196€",58),
  (37,"vulputate,",18,"sed pede. Cum","dapibus id, blandit at, nisi. Cum sociis","sem.","enim.","lectus","https://ebay.com/fr?q=11","418€",50),
  (38,"Nunc",42,"Nunc ut erat.","dui. Suspendisse ac metus vitae velit egestas","Curabitur","Morbi","nec","http://zoom.us/settings?ab=441&aad=2","152€",243),
  (39,"sapien",66,"nibh. Quisque nonummy","Lorem ipsum dolor sit amet, consectetuer adipiscing","auctor,","leo","non","http://twitter.com/one?k=0","459€",108),
  (40,"placerat,",55,"pharetra sed, hendrerit","justo eu arcu. Morbi sit amet massa.","sem.","orci","et,","http://reddit.com/site?p=8","491€",436);
INSERT INTO `dbbootic` (`id_produit`,`reference`,`id_categorie`,`titre`,`description`,`couleur`,`taille`,`public`,`photo`,`prix`,`stock`)
VALUES
  (41,"et",32,"pede sagittis augue,","risus. Donec egestas. Duis ac arcu. Nunc","iaculis","sed,","eu","http://ebay.com/group/9?str=se","115€",997),
  (42,"natoque",40,"erat, in consectetuer","Pellentesque habitant morbi tristique senectus et netus","sed","sit","fermentum","https://pinterest.com/sub/cars?k=0","294€",150),
  (43,"quis,",52,"quis, tristique ac,","vehicula risus. Nulla eget metus eu erat","in","molestie","non,","https://baidu.com/one?search=1&q=de","189€",216),
  (44,"ante,",25,"dignissim tempor arcu.","pharetra nibh. Aliquam ornare, libero at auctor","Duis","dolor","quam","https://zoom.us/sub?q=4","310€",321),
  (45,"risus",82,"vehicula risus. Nulla","justo faucibus lectus, a sollicitudin orci sem","orci","nec","non,","https://wikipedia.org/user/110?k=0","470€",818),
  (46,"luctus",100,"lorem, eget mollis","Proin velit. Sed malesuada augue ut lacus.","dolor","dictum","risus.","http://whatsapp.com/sub?search=1&q=de","418€",651),
  (47,"Nunc",26,"libero dui nec","Nunc mauris. Morbi non sapien molestie orci","sapien,","pharetra","egestas","https://bbc.co.uk/sub?search=1","493€",186),
  (48,"vitae",100,"dolor egestas rhoncus.","enim. Curabitur massa. Vestibulum accumsan neque et","egestas.","consectetuer","varius","http://pinterest.com/user/110?gi=100","225€",355),
  (49,"Quisque",63,"felis, adipiscing fringilla,","fermentum fermentum arcu. Vestibulum ante ipsum primis","non","dignissim.","pharetra","http://twitter.com/group/9?q=4","486€",918),
  (50,"Proin",3,"interdum enim non","pharetra nibh. Aliquam ornare, libero at auctor","Aenean","Nunc","diam.","https://walmart.com/sub/cars?p=8","449€",935);
INSERT INTO `dbbootic` (`id_produit`,`reference`,`id_categorie`,`titre`,`description`,`couleur`,`taille`,`public`,`photo`,`prix`,`stock`)
VALUES
  (51,"Duis",8,"molestie. Sed id","auctor vitae, aliquet nec, imperdiet nec, leo.","orci","tincidunt,","iaculis,","https://walmart.com/group/9?g=1","292€",177),
  (52,"tincidunt,",86,"Nunc sollicitudin commodo","lacus, varius et, euismod et, commodo at,","Aenean","porta","Mauris","https://twitter.com/group/9?q=0","252€",420),
  (53,"Nunc",81,"enim. Etiam imperdiet","nisi a odio semper cursus. Integer mollis.","sodales","In","aliquam","http://yahoo.com/en-us?page=1&offset=1","291€",933),
  (54,"risus.",73,"sagittis placerat. Cras","velit. Aliquam nisl. Nulla eu neque pellentesque","enim","amet,","Nunc","https://facebook.com/group/9?search=1","148€",686),
  (55,"sed",91,"dis parturient montes,","Donec egestas. Duis ac arcu. Nunc mauris.","lobortis,","convallis,","purus","http://nytimes.com/en-us?q=test","101€",746),
  (56,"neque",23,"scelerisque scelerisque dui.","tincidunt, nunc ac mattis ornare, lectus ante","est.","eu","dolor,","https://baidu.com/en-us?ad=115","307€",441),
  (57,"Aliquam",96,"aliquet lobortis, nisi","turpis non enim. Mauris quis turpis vitae","enim","neque","luctus","http://youtube.com/en-ca?p=8","151€",538),
  (58,"Cras",88,"scelerisque, lorem ipsum","vel est tempor bibendum. Donec felis orci,","sed,","adipiscing","nonummy","http://netflix.com/one?g=1","100€",358),
  (59,"dapibus",83,"Fusce dolor quam,","sem. Pellentesque ut ipsum ac mi eleifend","velit.","velit.","mauris","http://wikipedia.org/group/9?k=0","145€",923),
  (60,"dignissim",61,"neque sed sem","arcu ac orci. Ut semper pretium neque.","sollicitudin","Vestibulum","sed","http://walmart.com/group/9?g=1","150€",323);
INSERT INTO `dbbootic` (`id_produit`,`reference`,`id_categorie`,`titre`,`description`,`couleur`,`taille`,`public`,`photo`,`prix`,`stock`)
VALUES
  (61,"nunc,",2,"pellentesque a, facilisis","varius orci, in consequat enim diam vel","massa","leo,","lacinia","https://youtube.com/user/110?g=1","238€",462),
  (62,"dui,",2,"dolor. Donec fringilla.","libero mauris, aliquam eu, accumsan sed, facilisis","tempor","elit,","dapibus","http://ebay.com/en-ca?client=g","437€",558),
  (63,"risus",75,"eu sem. Pellentesque","dictum augue malesuada malesuada. Integer id magna","placerat,","eu","ipsum","http://youtube.com/fr?str=se","377€",504),
  (64,"ornare,",95,"Quisque ornare tortor","enim. Nunc ut erat. Sed nunc est,","Duis","eget,","id,","https://ebay.com/sub/cars?search=1","249€",608),
  (65,"Nunc",59,"nec metus facilisis","Cum sociis natoque penatibus et magnis dis","mollis.","amet","interdum","https://instagram.com/user/110?ad=115","320€",74),
  (66,"risus.",11,"metus eu erat","Ut sagittis lobortis mauris. Suspendisse aliquet molestie","at","diam","magna.","https://naver.com/site?client=g","497€",730),
  (67,"quis",37,"luctus, ipsum leo","Mauris ut quam vel sapien imperdiet ornare.","nisi","Praesent","sem","https://pinterest.com/fr?q=test","312€",806),
  (68,"iaculis",7,"eu elit. Nulla","pretium neque. Morbi quis urna. Nunc quis","laoreet","blandit","Morbi","https://facebook.com/settings?p=8","369€",476),
  (69,"velit.",14,"facilisis, magna tellus","ligula. Aenean euismod mauris eu elit. Nulla","dis","felis","ultricies","https://google.com/user/110?k=0","176€",328),
  (70,"Donec",39,"at, velit. Cras","dolor egestas rhoncus. Proin nisl sem, consequat","Phasellus","in","Suspendisse","https://pinterest.com/en-ca?str=se","181€",45);
INSERT INTO `dbbootic` (`id_produit`,`reference`,`id_categorie`,`titre`,`description`,`couleur`,`taille`,`public`,`photo`,`prix`,`stock`)
VALUES
  (71,"laoreet,",54,"mauris ipsum porta","nulla. Cras eu tellus eu augue porttitor","faucibus","varius","magnis","http://naver.com/one?client=g","220€",441),
  (72,"metus.",97,"Sed neque. Sed","Nullam nisl. Maecenas malesuada fringilla est. Mauris","hendrerit","a","In","http://naver.com/en-ca?page=1&offset=1","196€",936),
  (73,"ipsum.",11,"per conubia nostra,","ipsum. Curabitur consequat, lectus sit amet luctus","facilisis.","at","amet","http://cnn.com/site?q=test","198€",936),
  (74,"eu,",35,"quis diam. Pellentesque","Etiam vestibulum massa rutrum magna. Cras convallis","Nulla","magnis","fringilla.","http://zoom.us/group/9?q=4","399€",695),
  (75,"orci.",87,"eget, venenatis a,","purus. Duis elementum, dui quis accumsan convallis,","consectetuer","hendrerit.","Cras","https://instagram.com/one?page=1&offset=1","303€",598),
  (76,"luctus",24,"Donec non justo.","arcu. Vivamus sit amet risus. Donec egestas.","interdum.","nisi.","non,","https://reddit.com/en-us?q=11","140€",804),
  (77,"metus",48,"egestas, urna justo","tincidunt, neque vitae semper egestas, urna justo","vel","pharetra","arcu.","http://netflix.com/settings?p=8","282€",503),
  (78,"turpis.",43,"arcu iaculis enim,","lacinia mattis. Integer eu lacus. Quisque imperdiet,","Cras","facilisi.","Curabitur","http://instagram.com/fr?search=1&q=de","462€",730),
  (79,"magnis",42,"risus. Duis a","ac turpis egestas. Fusce aliquet magna a","ut,","Suspendisse","ultricies","http://yahoo.com/en-ca?p=8","415€",75),
  (80,"et",14,"gravida non, sollicitudin","enim nec tempus scelerisque, lorem ipsum sodales","Integer","vulputate","in","http://facebook.com/fr?g=1","309€",402);
INSERT INTO `dbbootic` (`id_produit`,`reference`,`id_categorie`,`titre`,`description`,`couleur`,`taille`,`public`,`photo`,`prix`,`stock`)
VALUES
  (81,"Sed",17,"consectetuer adipiscing elit.","nec tempus mauris erat eget ipsum. Suspendisse","interdum","malesuada","fringilla.","https://nytimes.com/en-us?client=g","104€",353),
  (82,"convallis",44,"nisl. Nulla eu","at, velit. Pellentesque ultricies dignissim lacus. Aliquam","luctus","lorem,","Sed","http://facebook.com/sub/cars?client=g","336€",815),
  (83,"lorem.",64,"magna et ipsum","id, mollis nec, cursus a, enim. Suspendisse","ut","purus,","velit","http://youtube.com/group/9?q=4","291€",158),
  (84,"id,",34,"Mauris nulla. Integer","at auctor ullamcorper, nisl arcu iaculis enim,","vitae,","in,","tellus","http://google.com/group/9?client=g","222€",307),
  (85,"natoque",17,"ornare, elit elit","lacus. Etiam bibendum fermentum metus. Aenean sed","id","mauris","Nunc","http://wikipedia.org/user/110?ab=441&aad=2","138€",145),
  (86,"vestibulum",95,"Vivamus molestie dapibus","Cras eget nisi dictum augue malesuada malesuada.","eu","non,","in","http://baidu.com/sub/cars?client=g","498€",182),
  (87,"eget,",50,"In condimentum. Donec","placerat. Cras dictum ultricies ligula. Nullam enim.","mattis","Aliquam","egestas.","http://cnn.com/fr?p=8","452€",216),
  (88,"nunc",49,"risus. Donec egestas.","dui. Cras pellentesque. Sed dictum. Proin eget","montes,","nisi","Aenean","http://reddit.com/user/110?q=11","485€",149),
  (89,"dapibus",91,"neque. Nullam nisl.","est, vitae sodales nisi magna sed dui.","vel,","sem.","Quisque","https://cnn.com/en-us?gi=100","312€",672),
  (90,"augue",58,"senectus et netus","orci luctus et ultrices posuere cubilia Curae","accumsan","ultricies","gravida","https://facebook.com/settings?page=1&offset=1","166€",229);
INSERT INTO `dbbootic` (`id_produit`,`reference`,`id_categorie`,`titre`,`description`,`couleur`,`taille`,`public`,`photo`,`prix`,`stock`)
VALUES
  (91,"Mauris",7,"eget, dictum placerat,","Proin eget odio. Aliquam vulputate ullamcorper magna.","vestibulum,","lectus","facilisis","https://facebook.com/group/9?client=g","199€",398),
  (92,"amet,",6,"sit amet massa.","Donec at arcu. Vestibulum ante ipsum primis","diam","at,","sem,","https://cnn.com/sub?search=1&q=de","327€",943),
  (93,"scelerisque",87,"lacus. Quisque imperdiet,","convallis erat, eget tincidunt dui augue eu","sit","in,","nulla.","https://instagram.com/one?search=1","102€",90),
  (94,"faucibus",74,"in aliquet lobortis,","odio. Aliquam vulputate ullamcorper magna. Sed eu","urna","imperdiet","Maecenas","https://wikipedia.org/sub?gi=100","118€",588),
  (95,"Nullam",9,"Vivamus non lorem","purus, in molestie tortor nibh sit amet","Pellentesque","Nulla","id","https://zoom.us/site?k=0","396€",703),
  (96,"fermentum",72,"quis diam. Pellentesque","magna. Duis dignissim tempor arcu. Vestibulum ut","Nullam","sem","montes,","https://walmart.com/en-us?ab=441&aad=2","292€",38),
  (97,"Donec",34,"eget odio. Aliquam","elementum, dui quis accumsan convallis, ante lectus","nisi.","scelerisque","nonummy.","http://bbc.co.uk/sub?str=se","244€",784),
  (98,"Cum",39,"sapien, gravida non,","rhoncus. Proin nisl sem, consequat nec, mollis","sem.","Suspendisse","orci,","https://whatsapp.com/site?gi=100","327€",784),
  (99,"lorem.",51,"sed dictum eleifend,","metus sit amet ante. Vivamus non lorem","diam","aliquet.","tellus,","http://naver.com/settings?page=1&offset=1","181€",289),
  (100,"sed",4,"nulla magna, malesuada","interdum. Nunc sollicitudin commodo ipsum. Suspendisse non","lectus","dui,","pede.","http://reddit.com/fr?ab=441&aad=2","202€",886);
INSERT INTO `dbbootic` (`id_produit`,`reference`,`id_categorie`,`titre`,`description`,`couleur`,`taille`,`public`,`photo`,`prix`,`stock`)
VALUES
  (101,"vitae",38,"metus urna convallis","Mauris quis turpis vitae purus gravida sagittis.","odio","Duis","commodo","https://reddit.com/en-ca?k=0","313€",568),
  (102,"et",76,"dignissim lacus. Aliquam","cursus non, egestas a, dui. Cras pellentesque.","egestas.","non","ipsum.","https://ebay.com/en-ca?q=0","483€",192),
  (103,"pellentesque",96,"magnis dis parturient","Integer vitae nibh. Donec est mauris, rhoncus","pharetra","lacinia","quam","https://walmart.com/group/9?search=1&q=de","366€",273),
  (104,"aliquet",96,"ligula eu enim.","Nulla dignissim. Maecenas ornare egestas ligula. Nullam","Ut","Duis","Phasellus","http://zoom.us/site?str=se","381€",139),
  (105,"adipiscing",25,"elit fermentum risus,","adipiscing lobortis risus. In mi pede, nonummy","arcu.","hymenaeos.","Integer","http://cnn.com/en-us?q=0","148€",370),
  (106,"augue",66,"tincidunt tempus risus.","Ut tincidunt orci quis lectus. Nullam suscipit,","dui,","massa.","ullamcorper,","https://bbc.co.uk/sub/cars?q=4","357€",637),
  (107,"lorem",45,"vitae erat vel","Aliquam ultrices iaculis odio. Nam interdum enim","libero","nunc,","sollicitudin","http://reddit.com/settings?g=1","110€",206),
  (108,"vel,",23,"vestibulum, neque sed","Fusce dolor quam, elementum at, egestas a,","nibh.","risus.","mi,","https://baidu.com/user/110?ab=441&aad=2","252€",629),
  (109,"sem",40,"sit amet ante.","ac sem ut dolor dapibus gravida. Aliquam","sed","erat","arcu.","https://bbc.co.uk/sub/cars?q=test","469€",648),
  (110,"Mauris",33,"adipiscing. Mauris molestie","molestie arcu. Sed eu nibh vulputate mauris","lorem","feugiat","magna","https://whatsapp.com/site?g=1","425€",105);
INSERT INTO `dbbootic` (`id_produit`,`reference`,`id_categorie`,`titre`,`description`,`couleur`,`taille`,`public`,`photo`,`prix`,`stock`)
VALUES
  (111,"Integer",14,"Mauris molestie pharetra","pede. Suspendisse dui. Fusce diam nunc, ullamcorper","gravida","semper","mi","http://bbc.co.uk/site?q=test","330€",763),
  (112,"arcu.",64,"et magnis dis","tellus. Suspendisse sed dolor. Fusce mi lorem,","placerat","metus.","Integer","http://cnn.com/group/9?client=g","137€",967),
  (113,"purus",97,"Nunc pulvinar arcu","eu metus. In lorem. Donec elementum, lorem","scelerisque,","dolor,","elit.","http://naver.com/en-ca?ad=115","171€",25),
  (114,"pretium",75,"Integer in magna.","Sed nec metus facilisis lorem tristique aliquet.","amet,","non","eleifend,","https://naver.com/fr?q=11","442€",458),
  (115,"a,",42,"Morbi vehicula. Pellentesque","hendrerit neque. In ornare sagittis felis. Donec","dui.","non,","ligula","http://wikipedia.org/one?search=1&q=de","470€",911),
  (116,"a,",20,"orci sem eget","est. Nunc laoreet lectus quis massa. Mauris","Praesent","mattis","sociosqu","http://facebook.com/en-us?ad=115","196€",444),
  (117,"diam",2,"non quam. Pellentesque","velit. Quisque varius. Nam porttitor scelerisque neque.","odio.","eget","montes,","http://baidu.com/en-us?client=g","108€",558),
  (118,"dolor",77,"sed turpis nec","gravida nunc sed pede. Cum sociis natoque","id,","Pellentesque","ut,","https://naver.com/site?q=4","495€",461),
  (119,"quam.",51,"mi, ac mattis","ipsum ac mi eleifend egestas. Sed pharetra,","odio.","id,","vulputate","https://naver.com/settings?search=1","428€",399),
  (120,"non",2,"fermentum vel, mauris.","magna. Cras convallis convallis dolor. Quisque tincidunt","vulputate","Quisque","nonummy","http://youtube.com/sub/cars?gi=100","298€",681);
INSERT INTO `dbbootic` (`id_produit`,`reference`,`id_categorie`,`titre`,`description`,`couleur`,`taille`,`public`,`photo`,`prix`,`stock`)
VALUES
  (121,"Proin",19,"lacus. Nulla tincidunt,","rutrum. Fusce dolor quam, elementum at, egestas","egestas.","porttitor","scelerisque","http://wikipedia.org/settings?search=1&q=de","403€",527),
  (122,"Donec",70,"Nulla tempor augue","Donec tempus, lorem fringilla ornare placerat, orci","eget,","dignissim","in","http://twitter.com/settings?gi=100","319€",191),
  (123,"iaculis,",53,"Proin velit. Sed","sagittis semper. Nam tempor diam dictum sapien.","Lorem","vitae,","penatibus","http://twitter.com/sub/cars?search=1&q=de","335€",928),
  (124,"ac",76,"purus sapien, gravida","parturient montes, nascetur ridiculus mus. Proin vel","massa.","et","Suspendisse","http://instagram.com/sub/cars?g=1","407€",32),
  (125,"mauris",76,"enim. Nunc ut","In scelerisque scelerisque dui. Suspendisse ac metus","blandit","ornare.","Cras","https://instagram.com/sub/cars?search=1&q=de","207€",987),
  (126,"libero",52,"dignissim magna a","Proin dolor. Nulla semper tellus id nunc","facilisis","penatibus","nec","https://bbc.co.uk/user/110?ab=441&aad=2","205€",560),
  (127,"Aenean",15,"vestibulum, neque sed","eget metus eu erat semper rutrum. Fusce","sed","neque","varius.","http://instagram.com/one?q=test","219€",945),
  (128,"et,",75,"ipsum dolor sit","ut cursus luctus, ipsum leo elementum sem,","luctus","a,","magnis","https://wikipedia.org/sub/cars?ad=115","412€",581),
  (129,"adipiscing",34,"velit. Pellentesque ultricies","mattis. Cras eget nisi dictum augue malesuada","orci","erat,","egestas","https://instagram.com/fr?k=0","266€",467),
  (130,"mauris",76,"elit, dictum eu,","ridiculus mus. Proin vel nisl. Quisque fringilla","Nunc","dolor","felis","https://guardian.co.uk/fr?q=4","165€",22);
INSERT INTO `dbbootic` (`id_produit`,`reference`,`id_categorie`,`titre`,`description`,`couleur`,`taille`,`public`,`photo`,`prix`,`stock`)
VALUES
  (131,"amet",52,"nisl. Quisque fringilla","ornare sagittis felis. Donec tempor, est ac","dictum","at","erat","https://pinterest.com/group/9?g=1","469€",933),
  (132,"nonummy",62,"tincidunt nibh. Phasellus","auctor ullamcorper, nisl arcu iaculis enim, sit","sed","Integer","Curabitur","http://netflix.com/user/110?k=0","237€",213),
  (133,"arcu",61,"sagittis placerat. Cras","Vivamus sit amet risus. Donec egestas. Aliquam","elit","quis","ligula.","http://naver.com/group/9?page=1&offset=1","439€",504),
  (134,"luctus",82,"lectus rutrum urna,","lobortis tellus justo sit amet nulla. Donec","In","risus","Nulla","https://baidu.com/site?gi=100","237€",896),
  (135,"neque",22,"rutrum urna, nec","eget laoreet posuere, enim nisl elementum purus,","ipsum","id","in","http://pinterest.com/sub?str=se","263€",912),
  (136,"nisi",5,"ac mi eleifend","urna. Nullam lobortis quam a felis ullamcorper","posuere","eget,","semper","https://whatsapp.com/sub?ad=115","150€",437),
  (137,"ac",97,"Vestibulum ante ipsum","Nullam velit dui, semper et, lacinia vitae,","lectus","enim","Proin","https://bbc.co.uk/settings?client=g","133€",606),
  (138,"ligula.",66,"eleifend, nunc risus","congue. In scelerisque scelerisque dui. Suspendisse ac","vitae","a,","orci.","http://facebook.com/settings?client=g","395€",471),
  (139,"Mauris",41,"sociis natoque penatibus","arcu ac orci. Ut semper pretium neque.","Nam","sapien.","Aenean","http://twitter.com/user/110?gi=100","154€",997),
  (140,"velit",3,"sed dictum eleifend,","hendrerit. Donec porttitor tellus non magna. Nam","non,","Nullam","ac","https://twitter.com/group/9?q=0","339€",793);
INSERT INTO `dbbootic` (`id_produit`,`reference`,`id_categorie`,`titre`,`description`,`couleur`,`taille`,`public`,`photo`,`prix`,`stock`)
VALUES
  (141,"eu",28,"montes, nascetur ridiculus","Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse","scelerisque,","Mauris","a,","http://bbc.co.uk/sub/cars?g=1","240€",183),
  (142,"Cras",76,"orci lobortis augue","primis in faucibus orci luctus et ultrices","erat","velit","Duis","http://zoom.us/settings?str=se","391€",614),
  (143,"ultricies",21,"id, mollis nec,","turpis nec mauris blandit mattis. Cras eget","ultricies","iaculis","Cras","https://walmart.com/group/9?gi=100","398€",212),
  (144,"orci",14,"ipsum primis in","dui. Cum sociis natoque penatibus et magnis","et","amet","tristique","https://walmart.com/site?q=11","212€",84),
  (145,"quis,",93,"quam dignissim pharetra.","eu, placerat eget, venenatis a, magna. Lorem","fames","Fusce","at,","https://whatsapp.com/site?q=0","489€",649),
  (146,"non,",17,"Praesent eu dui.","Duis mi enim, condimentum eget, volutpat ornare,","sed","In","dolor,","https://guardian.co.uk/group/9?page=1&offset=1","195€",67),
  (147,"eros.",78,"felis, adipiscing fringilla,","fringilla cursus purus. Nullam scelerisque neque sed","mauris.","sed,","Curabitur","https://wikipedia.org/sub/cars?page=1&offset=1","371€",521),
  (148,"odio.",2,"metus. Aenean sed","eu metus. In lorem. Donec elementum, lorem","Etiam","Vivamus","quis","https://cnn.com/user/110?p=8","341€",433),
  (149,"mi",34,"Integer mollis. Integer","Cras eget nisi dictum augue malesuada malesuada.","auctor.","Duis","sem","http://baidu.com/user/110?k=0","454€",425),
  (150,"erat",42,"hendrerit a, arcu.","est, congue a, aliquet vel, vulputate eu,","sed,","scelerisque,","sagittis.","http://walmart.com/sub?ab=441&aad=2","462€",813);
