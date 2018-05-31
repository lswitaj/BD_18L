SELECT * FROM client;
SELECT * FROM room;
SELECT * FROM location;
SELECT * FROM employee;
SELECT * FROM employee_has_location;
SELECT * FROM reservation;

SELECT name, surname, login, email
     FROM client
     WHERE email LIKE '%.com';

SELECT *
     FROM reservation
     WHERE cost > 400;

SELECT login, name, surname, telNumber, idReservation
     FROM (client JOIN reservation ON Client_login = login);

SELECT name, surname, PESEL, resortShortName
     FROM (employee AS E
               INNER JOIN employee_has_location AS EHL
                    ON PESEL = Employee_PESEL
               INNER JOIN location AS L
                    ON Location_resortShortName = resortShortName);

SELECT name, surname
     FROM (SELECT name, surname, salary
           FROM employee
           WHERE name LIKE '%a') womenNames
     WHERE salary > 3000;

SELECT name, surname, cost
     FROM (SELECT name, surname, cost, status
           FROM (client JOIN reservation ON Client_login = login)
           WHERE status = 'completed'
          ) reservationCosts
     WHERE cost < 500;

SELECT resortName, SUM(salary), AVG(salary)
     FROM (location
               INNER JOIN employee_has_location
                    ON Location_resortShortName = resortShortName
               INNER JOIN employee
                    ON PESEL = Employee_PESEL)
     GROUP BY resortName
     ORDER BY resortName;

SELECT login, name, surname, COUNT(idReservation)
     FROM (client JOIN reservation ON Client_login = login)
     GROUP BY login
     ORDER BY COUNT(idReservation) DESC;