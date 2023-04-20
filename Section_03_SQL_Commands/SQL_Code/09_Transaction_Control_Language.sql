/*
Transaction Control Language

Transaction Control Language Commands are used to manage changes to transactions in a database.

There are three commands you should be aware of:

COMMIT;

ROLLBACK;

SAVEPOINT optional_name;

Note that on Oracle APEX all transactions are automatically committed so you cannot use TCL Commands in Oracle APEX. You should be able to use TCL Commands on the main database management systems including Oracle SQL Developer, MySQL and Microsoft SQL Server.

I will however provide some details and example on the 3 commands in this article.

COMMIT: This command commits the changes made to any transactions in the database. A transactional change could be the INSERT of a new record or the UPDATE or ALTER Commands for example.

In the following example we have commited the changes to Brazil's population and it is now saved as 7000

Example:
*/

UPDATE
    eba_countries
SET
    population = 7000
WHERE
    name = 'Brazil';

COMMIT;

/*
The commit command has commited the update of the population we made in the preceding statement.

ROLLBACK: This command restores the database to its last committed state.

In the following example we will rollback the changes to Brazil's population and it will return to the value it was before we updated it to 7000

Example:
*/

UPDATE
    eba_countres
SET
    population = 7000
WHERE
    name = 'Brazil';

ROLLBACK;

/*
The rollback command has rolled back the update of the population we made in the preceding statement. It essentially undoes the update.

SAVEPOINT: This command creates a state in the database to rollback your transaction to. You have to rollback to the savepoint, a simple rollback command erases all savepoints. Any commits after the savepoint also erase the savepoints.

In the following example we update Brazil's population to 7000, we create a savepoint called 'BRAZIL_POPULATION', we then update Brazil's population again to 10000 but we rollback to the previous save point. So Brazil's population returns to our last updated value of 7000

Example:
*/

UPDATE
    eba_countries
SET
    population = 7000
WHERE
    name = 'Brazil';

SAVEPOINT BRAZIL_POPULATION;


UPDATE
    eba_countries
SET
    population = 10000
WHERE
    name = 'Brazil';

ROLLBACK to BRAZIL_POPULATION;
