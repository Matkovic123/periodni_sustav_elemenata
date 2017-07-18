DROP TABLE IF EXISTS periodic_system.user;
DROP TABLE IF EXISTS periodic_system.user_role;
DROP TABLE IF EXISTS periodic_system.isotope;
DROP TABLE IF EXISTS periodic_system.chemical_element;

DROP SCHEMA IF EXISTS periodic_system;
CREATE SCHEMA periodic_system
  AUTHORIZATION "chemist";

CREATE TABLE periodic_system.user_role (
  id   SERIAL PRIMARY KEY,
  role VARCHAR(45) NOT NULL
);

CREATE TABLE periodic_system.user (
  id         SERIAL PRIMARY KEY,
  username   VARCHAR(45)  NOT NULL,
  first_name VARCHAR(50)  NOT NULL,
  last_name  VARCHAR(50)  NOT NULL,
  password   VARCHAR(100) NOT NULL,
  enabled    BOOL         NOT NULL DEFAULT TRUE,
  role_id    BIGINT       NOT NULL,
  FOREIGN KEY (role_id) REFERENCES periodic_system.user_role(id)
);

CREATE TABLE periodic_system.chemical_element (
  id                      SERIAL PRIMARY KEY,
  name                    VARCHAR(25) NOT NULL,
  symbol                  CHAR(2)     NOT NULL,
  atomic_number           INT         NOT NULL,
  block                   CHAR(1)     NOT NULL,
  state_at_20C            VARCHAR(15) NOT NULL,
  electron_configuration  VARCHAR(50) NOT NULL,
  melting_point_in_C            FLOAT8 NOT NULL,
  boiling_point_in_C           FLOAT8 NOT NULL,
  atomic_mass             FLOAT8 NOT NULL,
  atomic_radius           FLOAT8 NOT NULL,
  electronegativity       FLOAT8,
  common_oxidation_states VARCHAR(15)
);

CREATE TABLE periodic_system.isotope (
  id                  SERIAL UNIQUE ,
  symbol                VARCHAR(25) NOT NULL,
  chemical_element_id BIGINT      NOT NULL,
  FOREIGN KEY (chemical_element_id) REFERENCES periodic_system.chemical_element(id)
);
