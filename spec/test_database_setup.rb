p 'setting up the database'

require 'pg'
# connect to database
conn = PG.connect(dbname: 'bookmark_manager_test')
# truncate database
conn.exec("TRUNCATE links")
# Add the test data
conn.exec("INSERT INTO links VALUES(1, 'http://www.makersacademy.com');")
conn.exec("INSERT INTO links VALUES(2, 'http://www.google.com');")
conn.exec("INSERT INTO links VALUES(3, 'http://www.facebook.com');")
