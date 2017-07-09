--USER ROLES
INSERT INTO periodic_system.user_role (id, role) VALUES (1, 'ROLE_ADMIN');
INSERT INTO periodic_system.user_role (id, role) VALUES (2, 'ROLE_USER');

--USER DATA
INSERT INTO periodic_system.user (first_name, last_name, username, password, role_id, enabled)
VALUES ('Admin', 'Admin', 'ROLE_ADMIN', '$2a$10$KgN3J87rf5kYCG3c0jCKtuessy0YgnrchxGi6ZtA7SV0NTDdShwxi', 1, TRUE);
INSERT INTO periodic_system.user (first_name, last_name, username, password, role_id, enabled)
VALUES ('User', 'User', 'User', '$2a$10$hMr9K2CX8zxgxd195uyBS.ePUWeuQb/3pfPQBJbJ0EUl3Mry2G6m6', 2, TRUE);


