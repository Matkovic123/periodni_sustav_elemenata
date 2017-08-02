DROP TABLE  IF EXISTS periodic_system.user CASCADE;
DROP TABLE  IF EXISTS periodic_system.user_role CASCADE;
DROP TABLE  IF EXISTS periodic_system.key_isotope CASCADE;
DROP TABLE  IF EXISTS periodic_system.chemical_element CASCADE;

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
  FOREIGN KEY (role_id) REFERENCES periodic_system.user_role (id)
);

CREATE TABLE periodic_system.chemical_element (
  atomic_number           SERIAL UNIQUE PRIMARY KEY   NOT NULL,
  name                    VARCHAR(25) UNIQUE NOT NULL,
  symbol                  CHAR(2) UNIQUE     NOT NULL,
  block                   CHAR(1)            NOT NULL,
  state_at_20C            VARCHAR(15)        NOT NULL,
  electron_configuration  VARCHAR(50),
  melting_point_in_C      FLOAT8,
  boiling_point_in_C      FLOAT8,
  atomic_mass             FLOAT8,
  atomic_radius           FLOAT8,
  electronegativity       FLOAT8,
  common_oxidation_states VARCHAR(15)
);

CREATE TABLE periodic_system.key_isotope(
  id                  SERIAL UNIQUE PRIMARY KEY,
  symbol              VARCHAR(25) UNIQUE NOT NULL,
  chemical_element_atomic_number BIGINT             NOT NULL,
  FOREIGN KEY (chemical_element_atomic_number) REFERENCES periodic_system.chemical_element (atomic_number)
);
