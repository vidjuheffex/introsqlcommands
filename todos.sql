CREATE TABLE todos (id SERIAL PRIMARY KEY,title VARCHAR(255) NOT NULL,details TEXT NULL,priority INT NOT NULL DEFAULT 1,created_at TIMESTAMP NOT NULL,completed_at TIMESTAMP NULL)

INSERT INTO todos (title, details, priority, created_at) VALUES ('cleanup house', 'make sure to wash dishes', 2, '2017/6/27 10:23:53');

INSERT INTO todos (title, details, priority, created_at) VALUES ('pack lunch', 'eat veggies', 1, '2017/6/27 10:24:53');

INSERT INTO todos (title, details, priority, created_at) VALUES ('pickup friend at airport', 'lands at 5', 3, '2017/6/27 10:25:53');

INSERT INTO todos (title, details, priority, created_at) VALUES ('learn french', 'or dont', 1, '2017/6/27 10:28:53');

INSERT INTO todos (titles, details, priority, created_at, completed_at) VALUES ('learn spanish', 'or dont forget it at least', 2, '2017/5/14 10:12:14', '2017/5/15 10:12:14');

SELECT * FROM todos WHERE completed_at IS NULL;

SELECT * FROM todos WHERE priority > 1;

UPDATE todos SET completed_at = '2018-05-12' WHERE id = 3;

DELETE FROM todos WHERE completed_at IS NOT NULL;
