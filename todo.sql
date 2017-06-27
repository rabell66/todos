
--Write a DELETE statement to delete all completed todos.

--Write the CREATE TABLE statement to make this table.
CREATE TABLE todos (id SERIAL PRIMARY KEY, title VARCHAR(255) NOT NULL, detail TEXT NULL, priority INTEGER NOT NULL DEFAULT 1, created_at TIMESTAMP  NOT NULL, completed_at TIMESTAMP NULL);
--Write INSERT statements to insert five todos into this table, with one of them completed.
INSERT INTO todos (title, priority, created_at) VALUES ('Project A', 10, '1999-01-08 04:05:06');
INSERT INTO todos (title, priority, created_at) VALUES ('Project B', 1, '2000-01-08 04:05:06');
INSERT INTO todos (title, priority, created_at) VALUES  ('Project C', 5, '2001-01-08 04:05:06');
INSERT INTO todos (title, priority, created_at) VALUES  ('Project D', 1, '2002-01-08 04:05:06');
INSERT INTO todos (title, priority, created_at, completed_at) VALUES ('Project E', 10, '2003-01-08 04:05:06', '2004-01-08 04:05:06');

--Write a SELECT statement to find all incomplete todos.
 SELECT * FROM todos WHERE completed_at IS NULL;

--Write a SELECT statement to find all todos with a priority above 1.
 SELECT * FROM todos WHERE  priority > 1;

--Write an UPDATE statement to complete one todo by its id. Your ids may differ, so you will choose the id to up.
 UPDATE todos SET completed_at = '2004-01-08 04:05:06' WHERE id = 2;

--Write a DELETE statement to delete all completed todos.

  DELETE FROM todos WHERE completed_at IS NOT NULL;



