import random
import string

nuIterations = 10000

#declaration of collections for columns
phoneNumbers = set([])
logins = set([])
passwords = set([])
firstNames = ['Michael', 'James', 'John', 'Robert', 'David', 'William', 'Mary', 'Christopher', 'Joseph', 'Richard', 'Daniel', 'Thomas', 'Jennifer', 'Patricia']
lastNames = ['Smith', 'Johnson', 'Williams', 'Brown', 'Jones', 'Garcia', 'Rodriguez', 'Miller', 'Martinez', 'Davis', 'Hernandez', 'Lopez', 'Gonzalez', 'Wilson', 'Anderson', 'Thomas', 'Taylor', 'Lee', 'Moore', ' Jackson']
emails = set([])

#parts of insert statement
firstPartInsert = 'INSERT INTO client VALUES'
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
createdscript = open("05. 10000_inserts_clients.sql", "w")
createdscript.write(firstPartInsert)

#drawing data (name, surname), generating email
for i in range (nuIterations):
	name = random.choice(firstNames)
	nameToInsert = '\'' + name + '\','
	name = name.lower()

	surname = random.choice(lastNames)
	surnameToInsert = '\'' + surname + '\','
	surname = surname.lower()
	
	email = '\'' + name + surname + '@gmail.com\''
	emails = emails | set([email])
	
	if i != (nuIterations - 1):
		createdscript.write(startOfInsertRow + logins.pop() + passwords.pop() + nameToInsert + surnameToInsert + phoneNumbers.pop() + emails.pop() + endOfInsertRow)
	else:
		createdscript.write(startOfInsertRow + logins.pop() + passwords.pop() + nameToInsert + surnameToInsert + phoneNumbers.pop() + emails.pop() + lastPartInsert)

#result
createdscript.close()