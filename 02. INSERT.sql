INSERT INTO client
  VALUES  ('marekelko', 'haslo1', 'Staszek', 'Wiosna', '534132652', 'siala@fs.cd'),
          ('Mateusz', 'mojpin2', 'Mateusz', 'Szachewicz', '070030040', 'brabrum@ffa.cd'),
          ('mirek321', 'pass2', 'Jakub', 'Noskiewicz', '214353221', 'raczka21@afa.gs'),
          ('wpustyniityle', 'password4', 'Jakub', 'Sluszny', '153523221', 'misiu33@gf.jk'),
          ('elkowicz13', '1pro2myk', 'Baltazar', 'Slytheryn', '231534111', 'fdgvdsn@tw.pl'),
          ('eltonjohn', 'ptakiptaki', 'Ebenezer', 'Scrooge', '999352321', 'lalama@ala.com'),
          ('miroslawiec', 'toniehaslo', 'Elbrus', 'Elvis', '276433221', 'nosel@elka.mion.pw'),
          ('breakingbad', 'weneedtocook', 'Walter', 'White', '666666666', 'jasie@606.pq'),
          ('my_boy', 'bluestuff', 'Jassie', 'Pinkman', '231643645', 'imgod@bb.com'),
          ('lospolosermanos', 'goodchicken', 'Gustavo', 'Fringe', '744423890', 'secure_email@spicy.chicken');

# add pass
INSERT INTO employee
  VALUES  ('67222843543', 'Maciek', 'Wros', '534132652', '3500'),
          ('42314216372', 'Michał', 'Mirosławowicz', '070030040', '5000'),
          ('75483953623', 'Agnieszka', 'Mojżesz', '214353221', '30'),
          ('98435593245', 'Agata', 'Mareczek', '153523221', '1455'),
          ('45327272721', 'Burek', 'Seweryn', '231534111', '64563'),
          ('87498243474', 'Duafi', 'Giboński', '999352321', '420'),
          ('87456345975', 'Sialek', 'Presley', '276433221', '2'),
          ('76964280987', 'Wenezuelka', 'Black', '666666666', '5340'),
          ('99740943242', 'Blue', 'Mama', '231643645', '1000'),
          ('06847326950', 'Goodie', 'Nosek', '744423890', '5200');

INSERT INTO location
  VALUES  ('GP', 'Golebiewski Pomorze', 'Krynica Morska', '01-666', 'Morska', '22'),
  		  ('ZW', 'Zielona Wolka', 'Mazury Zdroj', '05-442', 'Zagraniczna', '21'),
  		  ('UG', 'Uzdrowisko Gorskie', 'Kanary', '33-321', 'Gondolewska;', '15'),
  		  ('CR', 'Chrobiczowka', 'Polana Zdroj', '43-515', 'Chomikowa', '1'),
  		  ('SM', 'Smietankowo', 'Szczawnica', '99-642', 'Wspolna', '7'),
  		  ('GT', 'Gustavovo', 'Wrzesnia', '53-151', 'Polos Herbanos', '31');

INSERT INTO room (floorNumber, roomNumber, Location_resortShortName)
  VALUES  ('01', '001', 'SM'),
  		  ('02', '001', 'SM'),
  		  ('03', '001', 'SM'),
  		  ('04', '001', 'SM'),
  		  ('01', '002', 'SM'),
  		  ('02', '002', 'SM'),
  		  ('03', '002', 'SM'),
  		  ('04', '002', 'SM'),
  		  ('01', '001', 'GT'),
  		  ('02', '001', 'GT'),
  		  ('03', '001', 'GT'),
  		  ('04', '001', 'GT'),
  		  ('05', '001', 'GT'),
  		  ('06', '001', 'GT'),
  		  ('07', '001', 'GT'),
  		  ('08', '001', 'GT');

INSERT INTO room (floorNumber, roomNumber, price, Location_resortShortName, size)
  VALUES  ('01', '001', 120, 'GP', 1),
  		  ('02', '001', 120, 'GP', 1),
  		  ('03', '001', 120, 'GP', 1),
  		  ('01', '002', 130, 'GP', 1),
  		  ('02', '002', 130, 'GP', 1),
  		  ('03', '002', 200, 'GP', 3),
  		  ('01', '003', 180, 'GP', 2),
  		  ('02', '003', 140, 'GP', 1),
  		  ('01', '001', 100, 'ZW', 1),
  		  ('02', '001', 100, 'ZW', 1),
  		  ('03', '001', 100, 'ZW', 1),
  		  ('04', '001', 150, 'ZW', 2),
  		  ('05', '001', 150, 'ZW', 2),
  		  ('06', '001', 200, 'ZW', 3),
  		  ('01', '001', 150, 'UG', 1),
  		  ('02', '001', 150, 'UG', 1),
  		  ('01', '002', 150, 'UG', 1),
  		  ('02', '002', 150, 'UG', 1),
  		  ('01', '003', 150, 'UG', 1),
  		  ('02', '003', 150, 'UG', 1),
  		  ('01', '001', 120, 'CR', 1),
  		  ('02', '001', 120, 'CR', 1),
  		  ('03', '001', 120, 'CR', 1),
  		  ('01', '002', 130, 'CR', 1),
  		  ('02', '002', 130, 'CR', 1),
  		  ('03', '002', 200, 'CR', 3),
  		  ('01', '003', 180, 'CR', 2),
  		  ('02', '003', 140, 'CR', 1),
  		  ('01', '002', 450, 'GT', 2);

INSERT INTO client
  VALUES  ('marekelko', 'haslo1', 'Staszek', 'Wiosna', '534132652', 'siala@fs.cd'),
          ('Mateusz', 'mojpin2', 'Mateusz', 'Szachewicz', '070030040', 'brabrum@ffa.cd'),
          ('mirek321', 'pass2', 'Jakub', 'Noskiewicz', '214353221', 'raczka21@afa.gs'),
          ('wpustyniityle', 'password4', 'Jakub', 'Sluszny', '153523221', 'misiu33@gf.jk'),
          ('elkowicz13', '1pro2myk', 'Baltazar', 'Slytheryn', '231534111', 'fdgvdsn@tw.pl'),
          ('eltonjohn', 'ptakiptaki', 'Ebenezer', 'Scrooge', '999352321', 'lalama@ala.com'),
          ('miroslawiec', 'toniehaslo', 'Elbrus', 'Elvis', '276433221', 'nosel@elka.mion.pw'),
          ('breakingbad', 'weneedtocook', 'Walter', 'White', '666666666', 'jasie@606.pq'),
          ('my_boy', 'bluestuff', 'Jassie', 'Pinkman', '231643645', 'imgod@bb.com'),
          ('lospolosermanos', 'goodchicken', 'Gustavo', 'Fringe', '744423890', 'secure_email@spicy.chicken');

INSERT INTO employee
  VALUES  ('46546325575', 'Kunegunda', 'Niekonieczna', '997997997', 3000),
          ('16378749822', 'Katarzyna', 'Słuszna', '875765874', 4161),
          ('57548452623', 'Agnieszka', 'Ziemtowicz', '527111321', 500),
          ('03252193245', 'Anastazja', 'Nałęcz', '858168274', 1000),
          ('45327241521', 'Bernadeta', 'Osa', '927436268', 7000),
          ('42314223474', 'Dagmara', 'Kiepska', '746258357', 5321),
          ('87465263175', 'Bogumiła', 'Tracz', '554777263', 5255),
          ('76961561487', 'Bogumił', 'Mrack', '664326853', 5340),
          ('99705051442', 'Bartłomiej', 'Dama', '728833251', 1000),
          ('06845733150', 'Jurek', 'Nosacz', '745223320', 5200);

INSERT INTO employee_has_location
  VALUES  ('46546325575', 'CR'),
  		  ('46546325575', 'GP'),
  		  ('16378749822', 'GP'),
  		  ('57548452623', 'GT'),
  		  ('03252193245', 'SM'),
  		  ('03252193245', 'UG'),
  		  ('45327241521', 'ZW'),
  		  ('42314223474', 'ZW'),
  	      ('87465263175', 'CR'),
  		  ('87465263175', 'ZW'),
  		  ('76961561487', 'SM'),
  		  ('99705051442', 'GT'),
  		  ('06845733150', 'ZW'),
  		  ('06845733150', 'UG');

# status = ('inProgress', 'canceledClient', 'canceledSystem', 'before', 'after', 'during')
DELETE FROM reservation;
ALTER TABLE reservation AUTO_INCREMENT = 1;
INSERT INTO reservation (status, cost, firstDay, lastDay, breakfast, Client_login, Room_idRoom)
  VALUES  ('canceledSystem', 280, '2018-03-24', '2018-03-26', 0, 'my_boy', '00101CR'),
   	      ('inProgress', 280, '2018-03-24', '2018-03-26', 0, 'my_boy', '00101CR'),
          ('canceledClient', 500, '2018-03-21', '2018-03-26', 1, 'elkowicz13', '00201GT'),
          ('after', 230, '2018-02-20', '2018-02-21', 0, 'breakingbad', '00102GP'),
          ('canceledClient', 350, '2018-03-13', '2018-03-15', 0, 'lospolosermanos', '00202SM'),
   	      ('inProgress', 620, '2018-03-04', '2018-03-08', 1, 'Mateusz', '00102UG'),
          ('after', 1000, '2018-02-27', '2018-03-14', 1, 'mirek321', '00106ZW');
