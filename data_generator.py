def chooseMonthAndYear():
	year = '\'2018-'
	month = random.randint(1,12)
	month = numberToString(month, '-')
	return year+month

def numberToString(number, end):
	if number < 10:
		number = '0' + str(number) + end
	else:
		number = str(number) + end
	return number

def sqlConvert(word, char = None):
	if char is None:
		return '\'' + word + '\','
	else:
		return '\'' + word + char

import random
import string

nuIterations = 10000

#declaration of collections for columns
#clients
phoneNumbers = set([])
logins = set([])
passwords = set([])
firstNames = ['Michael', 'James', 'John', 'Robert', 'David', 'William', 'Mary', 'Christopher', 'Joseph', 'Richard', 'Daniel', 'Thomas', 'Jennifer', 'Patricia']
lastNames = ['Smith', 'Johnson', 'Williams', 'Brown', 'Jones', 'Garcia', 'Rodriguez', 'Miller', 'Martinez', 'Davis', 'Hernandez', 'Lopez', 'Gonzalez', 'Wilson', 'Anderson', 'Thomas', 'Taylor', 'Lee', 'Moore', ' Jackson']
emails = set([])
#reservations
status = ['inProgress', 'canceledClient', 'canceledSystem', 'before', 'after', 'during']
rooms = ['00101CR','00101GP','00101GT','00101SM','00101UG','00101ZW','00102CR','00102GP','00102GT','00102SM','00102UG','00102ZW','00103CR','00103GP','00103GT','00103SM','00103ZW','00104GT','00104SM','00104ZW','00105GT','00105ZW','00106GT','00106ZW','00107GT','00108GT','00201CR','00201GP','00201GT','00201SM','00201UG','00202CR','00202GP','00202SM','00202UG','00203CR','00203GP','00203SM','00204SM','00301CR','00301GP','00301UG','00302CR','00302GP','00302UG']

#parts of insert statement
firstPartInsertClients = 'INSERT INTO client VALUES'
firstPartInsertReservations = 'INSERT INTO reservation (status, cost, firstDay, lastDay, breakfast, Client_login, Room_idRoom)\nVALUES'
startOfInsertRow = '('
endOfInsertRow = '),\n'
lastPartInsert = ');'

#drawing data (phoneNumber, logins, pass)
while len(phoneNumbers) <= nuIterations:
	number = random.randint(100000000,999999999)
	phoneNumbers = phoneNumbers | set(['\'' + str(number) + '\','])
while len(logins) <= nuIterations:
	login = ''.join(random.choice(string.ascii_letters) for i in range(random.randint(5,10)))
	logins = logins | set(['\'' + login + '\','])
while len(passwords) <= nuIterations:
	password = ''.join(random.choice(string.ascii_lowercase + string.ascii_uppercase + string.digits + '!@$%^&*()_-+=') for i in range(random.randint(7,13)))
	passwords = passwords | set(['\'' + password + '\','])

#file to save open
scriptForClients = open("05. 10000_inserts_clients.sql", "w")
scriptForClients.write(firstPartInsertClients)
scriptForReservations = open("05. 10000_inserts_reservations.sql", "w")
scriptForReservations.write(firstPartInsertReservations)

#drawing data (name, surname), generating email
for i in range (nuIterations):
	name = random.choice(firstNames)
	nameToInsert = sqlConvert(name)
	name = name.lower()

	surname = random.choice(lastNames)
	surnameToInsert = sqlConvert(surname)
	surname = surname.lower()
	
	email = '\'' + name + surname + '@gmail.com\''
	emails = emails | set([email])
	
	login = logins.pop()

	if i != (nuIterations - 1):
		scriptForClients.write(startOfInsertRow + login + passwords.pop() + nameToInsert + surnameToInsert + phoneNumbers.pop() + emails.pop() + endOfInsertRow)
	else:
		scriptForClients.write(startOfInsertRow + login + passwords.pop() + nameToInsert + surnameToInsert + phoneNumbers.pop() + emails.pop() + lastPartInsert)
	
	stat = sqlConvert(random.choice(status))
	price = random.randint(100, 500)
	price = str(price) + ','
	
	dayFirst = random.randint(1,27)
	dayLast = dayFirst + 1
	
	dayFirst = numberToString(dayFirst, '\',')
	dayLast = numberToString(dayLast, '\',')

	monthAndYear = chooseMonthAndYear()

	firstDay = monthAndYear + dayFirst
	lastDay = monthAndYear + dayLast

	board = random.randint(0,1)
	board = str(board) + ','
	room = sqlConvert(random.choice(rooms),'\'')

	if i != (nuIterations - 1):
		scriptForReservations.write(startOfInsertRow + stat + price + firstDay + lastDay + board + login + room + endOfInsertRow)
	else:
		scriptForReservations.write(startOfInsertRow + stat + price + firstDay + lastDay + board + login + room + lastPartInsert)

#result
scriptForClients.close()
scriptForReservations.close()