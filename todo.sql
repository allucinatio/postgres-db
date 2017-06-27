
-- Write the CREATE TABLE statement to make this table.

CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR,
  priority INTEGER NOT NULL DEFAULT 1,
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP
);

-- Write INSERT statements to insert five todos into this table, with one of them completed.

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES
('Do next lecture', 'Do an assessment if it has one', 4, '2017-06-27 12:00:00', '2017-06-27 13:00:00'),
('Work on weekly project', NULL, 3, '2017-06-27 12:00:00', NULL),
('Revisit lecture on express routers', NULL, 1, '2017-06-27 12:00:00', NULL),
('Make food for 06-28', 'No really, do this', 2, '2017-06-27 12:00:00', NULL),
('Have meeting with Kelly at 3:30pm', 'Review your project code before if time allows', 5, '2017-06-27 12:00:00', NULL);

-- Write a SELECT statement to find all incomplete todos.

SELECT id, title, details, priority, created_at FROM todos WHERE completed_at IS NULL;

-- Write a SELECT statement to find all todos with a priority above 1.

SELECT id, title, details, priority, created_at FROM todos WHERE priority > 1;

-- Write an UPDATE statement to complete one todo by its id. Your ids may differ, so you will choose the id to up.

UPDATE todos SET completed_at = '2017-06-27 15:45:00' WHERE id = 5;

-- Write a DELETE statement to delete all completed todos.

DELETE FROM todos WHERE completed_at IS NOT NULL;
