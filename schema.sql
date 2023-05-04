CREATE TABLE users (
id INTEGER PRIMARY KEY AUTOINCREMENT,
username TEXT NOT NULL,
password TEXT NOT NULL,
email TEXT NOT NULL
);

CREATE TABLE projects (
id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT NOT NULL,
description TEXT NOT NULL,
start_date DATE NOT NULL,
end_date DATE NOT NULL,
user_id INTEGER NOT NULL,
isComplete BOOLEAN DEFAULT false, 
FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE tasks (
id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT NOT NULL,
description TEXT NOT NULL,
due_date DATE NOT NULL,
status TEXT NOT NULL,
project_id INTEGER NOT NULL,
FOREIGN KEY (project_id) REFERENCES projects(id)
);