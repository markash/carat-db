CREATE TABLE base.item (
  id INT IDENTITY PRIMARY KEY,
  description VARCHAR(100),
  created DATETIME NULL,
  updated DATETIME NULL
);

INSERT INTO base.item (description) VALUES ('Test1');
INSERT INTO base.item (description) VALUES ('Test2');
INSERT INTO base.item (description) VALUES ('Test3');
INSERT INTO base.item (description) VALUES ('Test4');
INSERT INTO base.item (description) VALUES ('Test5');
INSERT INTO base.item (description) VALUES ('Test6');

CREATE TABLE base.app_user (
  id INT IDENTITY PRIMARY KEY,
  password VARCHAR(MAX) NOT NULL,
  username VARCHAR(32) NOT NULL,
  email VARCHAR(MAX) NOT NULL,
  first_name VARCHAR(MAX) NULL,
  last_name VARCHAR(MAX) NULL,
  UNIQUE(username)
);

CREATE TABLE base.app_role (
  role VARCHAR(32) UNIQUE
);

CREATE TABLE base.app_user_role (
  user_id INTEGER NOT NULL,
  user_role VARCHAR(32),
  UNIQUE(user_id, user_role),
  CONSTRAINT fk_user_role_user FOREIGN KEY (user_id) REFERENCES app_user(id),
  CONSTRAINT fk_user_role_role FOREIGN KEY (user_role) REFERENCES app_role(role)
);

INSERT INTO base.app_role (role) VALUES ('EMPLOYEE');
INSERT INTO base.app_role (role) VALUES ('MANAGER');
INSERT INTO base.app_role (role) VALUES ('ADMIN');

INSERT INTO base.app_user (username, password, email, first_name, last_name) VALUES ('admin', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 'admin@localhost', 'Administrator', 'User');
INSERT INTO base.app_user_role (user_id, user_role) values (SCOPE_IDENTITY(), 'ADMIN');
