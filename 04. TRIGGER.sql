#TEORIA:
#BEFORE/AFTER DELETE/INSERT/UPDATE

#CREATE TRIGGER nazwa_trigera
#BEFORE INSERT ON -- zdarzenie określające kiedy triger zostanie wyzwolony
#nazwa_tabeli -- tabela na której triger zostanie założony
#FOR EACH ROW BEGIN
#...  -- skrypt wykonywany przez triger
#END

CREATE TRIGGER give_bonus
BEFORE UPDATE ON
employee
FOR EACH ROW
SET NEW.salary = OLD.salary * (1 + NEW.bonus / 100);

UPDATE employee SET bonus = 25
WHERE salary <= 3000;



CREATE TRIGGER delete_reservations
BEFORE DELETE ON
client
FOR EACH ROW
DELETE FROM reservation WHERE Client_login = OLD.login;

DELETE FROM client WHERE login = 'elkowicz13';