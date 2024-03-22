-- Below is a dummy query, if we leave it empty then the SQLITE package will throw a non-readable error
-- Change the query to pass the test :)

SELECT Users.first_name, Users.last_name FROM
Favorites JOIN Users ON
Favorites.user_id = Users.id
WHERE dog_id = 2;