--USER ROLES
INSERT INTO periodic_system.user_role (id, role) VALUES (1, 'ROLE_ADMIN');
INSERT INTO periodic_system.user_role (id, role) VALUES (2, 'ROLE_USER');

--USER DATA
INSERT INTO periodic_system.user (id, username, password, enabled)
VALUES (1, 'Admin', '$2a$10$KgN3J87rf5kYCG3c0jCKtuessy0YgnrchxGi6ZtA7SV0NTDdShwxi', TRUE);
INSERT INTO periodic_system.user (id, username, password, enabled)
VALUES (2, 'User', '$2a$10$bnnVt3Gx4C.PZGADKRa0EeuLcJaotxkNhu7pUOUcYYOVfY0spyWMa', TRUE);
INSERT INTO periodic_system.user (id, username, password, enabled)
VALUES (3, 'Crobelia', '$2a$10$361Xa9kae0W5dkJfUer3bOeEqZTZEBat1lvoGwfd2XYxQCJ8cUP6u', TRUE);

--USER AND THEIR ROLES
INSERT INTO periodic_system.user_roles (user_id, user_role_id) VALUES (1, 1);
INSERT INTO periodic_system.user_roles (user_id, user_role_id) VALUES (1, 2);
INSERT INTO periodic_system.user_roles (user_id, user_role_id) VALUES (2, 2);
INSERT INTO periodic_system.user_roles (user_id, user_role_id) VALUES (3, 1);
INSERT INTO periodic_system.user_roles (user_id, user_role_id) VALUES (3, 2);



-- CHEMICAL ELEMENTS & ISOTOPES
INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Hydrogen', 'H', 'diatomic-nonmetal', 1, 's', 'Gas', U&'1s\00B9', -259.14, -252.87, 1.008, 1.10, 2.20, '1, -1');

INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number) VALUES (U&'\00B9H', 1);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number) VALUES (U&'\00B2H', 1);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius)
VALUES ('Helium', 'He', 'noble-gas', 2, 's', 'Gas', U&'1s\00B2', -272.2, -268.93, 4.003, 1.4);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number) VALUES (U&'\2074He', 2);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Lithium', 'Li', 'alkali-metal', 3, 's', 'Solid', U&'[He]2s\00B9', 182.54, 1342, 6.9414, 1.82, 0.98, '+1');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number) VALUES (U&'\2077Li', 3);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Beryllium', 'Be', 'alkaline-earth-metal', 4, 's', 'Solid', U&'[He]2s\00B2', 1287, 2469, 9.012, 1.53, 1.57, '+2');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2079Be', 4);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Boron', 'B', 'metalloid', 5, 'p', 'Solid', U&'[He]2s\00B22p\00B9', 2076, 3927, 10.811, 1.92, 2.04, '+3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\00B9B', 5);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Carbon', 'C', 'polyatomic-nonmetal', '6', 'p', 'Solid', U&'[He]2s\00B22p\00B2', 3500, 4827, 12.011, 1.7, 2.55,
   '+4 +2 -4');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\00B2C', 6);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\00B3C', 6);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2074C', 6);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Nitrogen', 'N', 'diatomic-nonmetal', 7, 'p', 'Gas', U&'[He]2s\00B22p\00B3', -210, -195.79, 14.007, 1.55, 3.04,
        '+5 +4 +3 +2 -3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2074N', 7);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Oxygen', 'O', 'diatomic-nonmetal', 8, 'p', 'Gas', U&'[He]2s\00B22p\2074', -218.79, -182.96, 15.99, 1.52, 3.44,
        '-1 -2');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2076O', 8);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Fluorine', 'F', 'diatomic-nonmetal', 9, 'p', 'Gas', U&'[He]2s\00B22p\2075', -219.67, -188.11, 18.998, 1.47, 3.98,
   '-1');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2079F', 9);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius)
VALUES ('Neon', 'Ne', 'noble-gas', 10, 'p', 'Gas', U&'[He]2s\00B22p\2076', -248.59, -246.046, 20.180, 1.54);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2070Ne', 10);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Sodium', 'Na', 'alkali-metal', 11, 's', 'Solid', U&'[Ne]3s\00B9', 97.794, 882.94, 22.99, 2.27, 0.93, '+1');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\00B3Na', 11);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Magnesium', 'Mg', 'alkaline-earth-metal', 12, 's', 'Solid', U&'[Ne]3s\00B2', 650, 1090, 24.31, 1.73, 1.31, '+2');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2074Mg', 12);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Aluminium', 'Al', 'post-transition-metal', 13, 'p', 'Solid', U&'[Ne]3s\00B23p\00B9', 660.323, 2519, 26.98, 1.84,
   1.61, '+3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2077Al', 13);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Silicon', 'Si', 'metalloid', 14, 'p', 'Solid', U&'[Ne]3s\00B23p\00B2', 1414, 3265, 28.085, 2.10, 1.9, '+4 -4');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2078Si', 14);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B3\2070Si', 14);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Phosphorus', 'P', 'polyatomic-nonmetal', 15, 'p', 'Solid', U&'[Ne]3s\00B23p\00B3', 44.15, 280.5, 30.974, 1.80, 2.19,
   '+5 +3 -3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B3\00B9P', 15);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Sulfur', 'S', 'polyatomic-nonmetal', 16, 'p', 'Solid', U&'[Ne]3s\00B23p\2074', 115.21, 444.61, 32.06, 1.80, 2.58,
   '+6 +4 +2 -2');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B3\00B2S', 16);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Chlorine', 'Cl', 'diatomic-nonmetal', 17, 'p', 'Gas', U&'[Ne]3s\00B23p\2075', -101.5, -34.04, 35.45, 1.75, 3.16,
   '+7 +5 +3 +1 -1');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B3\2075Cl', 17);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B3\2077Cl', 17);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius)
VALUES ('Argon', 'Ar', 'noble-gas', 18, 'p', 'Gas', U&'[Ne]3s\00B23p\2076', -189.34, -185.85, 39.95, 1.88);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2074\2070Ar', 18);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Potassium', 'K', 'alkali-metal', 19, 's', 'Solid', U&'[Ar]4s\00B9', 63.5, 759, 39.098, 2.75, 0.82, '+1');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B3\2079K', 19);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Calcium', 'Ca', 'alkaline-earth-metal', 20, 's', 'Solid', U&'[Ar]4s\00B2', 842, 1484, 40.078, 2.31, 1.00, '+2');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2074\2070Ca', 20);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Scandium', 'Sc', 'transition-metal', 21, 'd', 'Solid', U&'[Ar]3d\00B94s\00B2', 1541, 2836, 44.956, 2.15, 1.36,
        '+3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2074\2075Sc', 21);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Titanium', 'Ti', 'transition-metal', 22, 'd', 'Solid', U&'[Ar]3d\00B24s\00B2', 1670, 3287, 47.956, 2.11, 1.54,
        '+4 +3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2074\2078Ti', 22);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Vanadium', 'V', 'transition-metal', 23, 'd', 'Solid', U&'[Ar]3d\00B34s\00B2', 1910, 3407, 50.942, 2.07, 1.63,
        '+5 +4 +3 +2 0');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2075\00B9V', 23);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Chromium', 'Cr', 'transition-metal', 24, 'd', 'Solid', U&'[Ar]3d\20754s\00B9', 1906.85, 2670.85, 51.996, 206, 1.66,
   '6,3,2,0');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2075\00B2Cr', 24);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Manganese', 'Mn', 'transition-metal', 25, 'd', 'Solid', U&'[Ar]3d\20754s\00B2', 1245.85, 2060.85, 54.938, 205, 1.55,
   '7,6,4,3,2,0,-1');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2075\2075Mn', 25);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Iron', 'Fe', 'transition-metal', 26, 'd', 'Solid', U&'[Ar]3d\20764s\00B2', 1537.85, 2860.85, 55.845, 204, 1.83,
        '6,3,2,0,-2');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2075\2076Fe', 26);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Cobalt', 'Co', 'transition-metal', 27, 'd', 'Solid', U&'[Ar]3d\20774s\00B2', 1494.85, 2926.85, 58.933, 200, 1.88,
   '3,2,0,-1');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2075\2079Co', 27);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Nickel', 'Ni', 'transition-metal', 28, 'd', 'Solid', U&'[Ar]3d\20784s\00B2', 1454.85, 2912.85, 58.693, 197, 1.91,
   '3,2,0');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2075\2078Ni', 28);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Copper', 'Cu', 'transition-metal', 29, 'd', 'Solid', U&'[Ar]3d\00B9\20704s\00B9', 1084.62, 2561.85, 63.546, 196,
   1.9, '2,1');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2076\00B3Cu', 29);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Zinc', 'Zn', 'transition-metal', 30, 'd', 'Solid', U&'[Ar]3d\00B9\20704s\00B2', 419.73, 906.85, 65.409, 201, 1.65,
   '2');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2076\2074Zn', 30);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Gallium', 'Ga', 'post-transition-metal', 31, 'd', 'Solid', U&'[Ar]3d\00B9\20704s\00B24p\00B9', 29.7646, 2203.85,
              69.723, 187, 1.81, '3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2076\2079Ga', 31);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Germanium', 'Ge', 'metalloid', 32, 'd', 'Solid', U&'[Ar]3d\00B9\20704s\00B24p\00B2', 938.25, 2832.85, 72.64, 211,
   2.01, '4');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2077\00B3Ge', 32);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2077\2074Ge', 32);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Arsenic', 'As', 'metalloid', 33, 'd', 'Solid', U&'[Ar]3d\00B9\20704s\00B24p\00B3', 816.85, 613.85, 74.922, 185,
   2.18, '5,3,-3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2077\2075As', 33);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Selenium', 'Se', 'polyatomic-nonmetal', 34, 'd', 'Solid', U&'[Ar]3d\00B9\20704s\00B24p\2074', 179.85, 684.85, 78.96,
               190, 2.55, '6,4,-2');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2078\2070Se', 34);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Bromine', 'Br', 'diatomic-nonmetal', 35, 'd', 'Liquid', U&'[Ar]3d\00B9\20704s\00B24p\2075', -7.35, 58.85, 79.904,
              185, 2.96,
   '7,5,3,1,-1');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2077\2079Br', 35);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Krypton', 'Kr', 'noble-gas', 36, 'd', 'Gas', U&'[Ar]3d\00B9\20704s\00B24p\2076', -157.36, -153.22, 83.798, 202, 3,
   '2');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2078\2074Kr', 36);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Rubidium', 'Rb', 'alkali-metal', 37, 's', 'Solid', U&'[Kr]5s\00B9', 39.31, 687.85, 85.468, 303, 0.82, '1');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2078\2075Rb', 37);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2078\2077Rb', 37);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Strontium', 'Sr', 'alkaline-earth-metal', 38, 's', 'Solid', U&'[Kr]5s\00B2', 776.85, 1381.85, 87.62, 249, 0.95,
        '2');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2078\2076Sr', 38);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2078\2077Sr', 38);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2078\2078Sr', 38);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Yttrium', 'Y', 'transition-metal', 39, 'd', 'Solid', U&'[Kr]4d\00B95s\00B2', 1525.85, 3335.85, 88.906, 232, 1.22,
   '3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2078\2079Y', 39);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Zirconium', 'Zr', 'transition-metal', 40, 'd', 'Solid', U&'[Kr]4d\00B25s\00B2', 1854.85, 4408.85, 91.224, 223, 1.33,
   '4');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2079\2070Zr', 40);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2079\00B2Zr', 40);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2079\2074Zr', 40);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Niobium', 'Nb', 'transition-metal', 41, 'd', 'Solid', U&'[Kr]4d\20745s\00B9', 2476.85, 4743.85, 92.906, 218, 1.6,
   '5,3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2079\00B3Nb', 41);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Molybdenum', 'Mo', 'transition-metal', 42, 'd', 'Solid', U&'[Kr]4d\20755s\00B9', 2622.85, 4638.85, 95.94, 217, 2.16,
   '6,5,4,3,2,0');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2079\2075Mo', 42);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2079\2076Mo', 42);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\2079\2078Mo', 42);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Technetium', 'Tc', 'transition-metal', 43, 'd', 'Solid', U&'[Kr]4d\20755s\00B2', 2156.85, 4264.85, 97.907, 216, 1.9,
   '7');


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Ruthenium', 'Ru', 'transition-metal', 44, 'd', 'Solid', U&'[Kr]4d\20775s\00B9', 2333.85, 4149.85, 101.07, 213, 2.2,
   '8,6,4,3,2,0,-2');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2070\00B9Ru', 44);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2070\00B2Ru', 44);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2070\2074Ru', 44);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Rhodium', 'Rh', 'transition-metal', 45, 'd', 'Solid', U&'[Kr]4d\20785s\00B9', 1963.85, 3694.85, 12.91, 210, 2.28,
   '5,4,3,2,1,0');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2070\00B3Rh', 45);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Palladium', 'Pd', 'transition-metal', 46, 'd', 'Solid', U&'[Kr]4d\00B9\2070', 1554.9, 2962.85, 106.42, 210, 2.2,
   '4,2');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2070\2076Pd', 46);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Silver', 'Ag', 'transition-metal', 47, 'd', 'Solid', U&'[Kr]4d\00B9\20705s\00B9', 961.78, 2161.85, 107.87, 211,
        1.93, '2,1');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2070\2077Ag', 47);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Cadmium', 'Cd', 'transition-metal', 48, 'd', 'Solid', U&'[Kr]4d\00B9\20705s\00B2', 321.07, 766.85, 112.41, 218,
        1.69, '2');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\00B9\2074Cd', 48);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Indium', 'In', 'post-transition-metal', 49, 'd', 'Solid', U&'[Kr]4d\00B9\20705s\00B25p\00B9', 156.6, 2071.85,
                  114.82, 193, 1.78, '3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\00B9\2075In', 49);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Tin', 'Sn', 'post-transition-metal', 50, 'd', 'Solid', U&'[Kr]4d\00B9\20705s\00B25p\00B2', 231.93, 2601.85, 118.71,
          217, 1.96, '4,2');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\00B2\2070Sn', 50);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Antimony', 'Sb', 'metalloid', 51, 'd', 'Solid', U&'[Kr]4d\00B9\20705s\00B25p\00B3', 630.63, 1586.85, 121.76, 206,
   2.05,
   '5,3,-3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\00B2\00B9Sb', 51);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Tellurium', 'Te', 'metalloid', 52, 'd', 'Solid', U&'[Kr]4d\00B9\20705s\00B25p\2074', 449.51, 987.85, 127.6, 206,
   2.1, '6,4,-2');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\00B3\2070Te', 52);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Iodine', 'I', 'diatomic-nonmetal', 53, 'd', 'Solid', U&'[Kr]4d\00B9\20705s\00B25p\2075', 113.7, 184.25, 126.91, 198,
   2.66, '7,5,1,-1');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\00B2\2077I', 53);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Xenon', 'Xe', 'noble-gas', 54, 'd', 'Gas', U&'[Kr]4d\00B9\20705s\00B25p\2076', -111.75, -108.12, 131.29, 216, 2.6,
   '6,4,2');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\00B3\00B2Xe', 54);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Caesium', 'Cs', 'alkali-metal', 55, 's', 'Solid', U&'[Xe]6s\00B9', 28.44, 670.85, 132.91, 343, 0.79, '1');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\00B3\00B3Cs', 55);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Barium', 'Ba', 'alkaline-earth-metal', 56, 's', 'Solid', U&'[Xe]6s\00B2', 726.85, 1896.85, 137.33, 268, 0.89, '2');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\00B3\2078Ba', 56);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Lanthanum', 'La', 'lanthanide', 57, 'd', 'Solid', U&'[Xe]5d\00B96s\00B2', 919.85, 3463.85, 138.91, 243, 1.1, '3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\00B3\2079La', 57);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Cerium', 'Ce', 'lanthanide', 58, 'f', 'Solid', U&'[Xe]4f\00B95d\00B96s\00B2', 794.85, 3442.85, 140.12, 242, 1.12,
   '4,3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2074\2070Ce', 58);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Praseodymium', 'Pr', 'lanthanide', 59, 'f', 'Solid', U&'[Xe]4f\00B36s\00B2', 934.85, 3519.85, 140.91, 240, 1.13,
   '4,3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2074\00B9Pr', 59);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Neodymium', 'Nd', 'lanthanide', 60, 'f', 'Solid', U&'[Xe]4f\20746s\00B2', 1023.85, 3073.85, 144.24, 239, 1.14, '3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2074\00B9Nd', 60);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Promethium', 'Pm', 'lanthanide', 61, 'f', 'Solid', U&'[Xe]4f\20756s\00B2', 1041.85, 2999.85, NULL, 238, 1.13, '3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2074\2075Pm', 61);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2074\2077Pm', 61);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Samarium', 'Sm', 'lanthanide', 62, 'f', 'Solid', U&'[Xe]4f\20766s\00B2', 1071.85, 1793.85, 150.36, 236, 1.17,
        '3,2');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2075\00B2Sm', 62);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Europium', 'Eu', 'lanthanide', 63, 'f', 'Solid', U&'[Xe]4f\20776s\00B2', 825.85, 1528.85, 151.96, 235, 1.2, '3,2');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2075\00B3Eu', 63);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Gadolinium', 'Gd', 'lanthanide', 64, 'f', 'Solid', U&'[Xe]4f\20775d\00B96s\00B2', 1311.85, 3272.85, 157.25, 234,
   1.2, '3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2075\2078Gd', 64);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Terbium', 'Tb', 'lanthanide', 65, 'f', 'Solid', U&'[Xe]4f\20796s\00B2', 1355.85, 3229.85, 158.93, 233, 1.2, '4,3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2075\2079Tb', 65);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Dysprosium', 'Dy', 'lanthanide', 66, 'f', 'Solid', U&'[Xe]4f\00B9\20706s\00B2', 1406.85, 2566.85, 162.5, 231, 1.22,
   '3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2076\2074Dy', 66);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Holmium', 'Ho', 'lanthanide', 67, 'f', 'Solid', U&'[Xe]4f\00B9\00B96s\00B2', 1460.85, 2719.85, 164.93, 23, 1.23,
   '3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2076\2075Ho', 67);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Erbium', 'Er', 'lanthanide', 68, 'f', 'Solid', U&'[Xe]4f\00B9\00B26s\00B2', 1528.85, 2867.85, 167.26, 229, 1.24,
   '3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2076\2076Er', 68);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Thulium', 'Tm', 'lanthanide', 69, 'f', 'Solid', U&'[Xe]4f\00B9\20736s\00B2', 1544.85, 1949.85, 168.93, 227, 1.25,
   '3,2');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2076\2079Tm', 69);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Ytterbium', 'Yb', 'lanthanide', 70, 'f', 'Solid', U&'[Xe]4f\00B9\20746s\00B2', 823.85, 1195.85, 173.05, 226, 1.1,
   '3,2');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2077\00B2Yb', 70);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2077\00B3Yb', 70);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2077\2074Yb', 70);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Lutetium', 'Lu', 'lanthanide', 71, 'f', 'Solid', U&'[Xe]4f\00B9\20745d\00B96s\00B2', 1651.85, 3401.85, 174.97, 224,
   1.27, '3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2077\2075Lu', 71);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Hafnium', 'Hf', 'transition-metal', 72, 'f', 'Solid', U&'[Xe]4f\00B9\20745d\00B26s\00B2', 2232.85, 4602.85, 178.49,
              223, 1.3, '4');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2077\2077Hf', 72);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2077\2078Hf', 72);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2078\2070Hf', 72);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Tantalum', 'Ta', 'transition-metal', 73, 'f', 'Solid', U&'[Xe]4f\00B9\20745d\00B36s\00B2', 3016.85, 5457.85, 180.95,
               222, 1.5, '5');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2078\2070Ta', 73);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2078\00B9Ta', 73);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Tungsten', 'W', 'transition-metal', 74, 'f', 'Solid', U&'[Xe]4f\00B9\20745d\20746s\00B2', 3421.85, 5554.85, 183.84,
               218, 2.36,
   '6,5,4,3,2,0');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2078\00B2W', 74);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2078\2074W', 74);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2078\2076W', 74);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Rhenium', 'Re', 'transition-metal', 75, 'f', 'Solid', U&'[Xe]4f\00B9\20745d\20756s\00B2', 3185.85, 5595.85, 186.21,
              216, 1.9,
   '7,6,4,2,-1');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2078\2077Re', 75);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Osmium', 'Os', 'transition-metal', 76, 'f', 'Solid', U&'[Xe]4f\00B9\20745d\20766s\00B2', 3032.85, 5011.85, 190.23,
             216, 2.2,
   '8,6,4,3,2,0,-2');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2079\00B2Os', 76);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Iridium', 'Ir', 'transition-metal', 77, 'f', 'Solid', U&'[Xe]4f\00B9\20745d\20776s\00B2', 2445.85, 4427.85, 192.22,
              213, 2.2,
   '6,4,3,2,1,0,-1');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2079\00B3Ir', 77);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Platinum', 'Pt', 'transition-metal', 78, 'f', 'Solid', U&'[Xe]4f\00B9\20745d\20796s\00B9', 1768.25, 3824.85, 195.08,
               213, 2.28,
   '4,2,0');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2079\2075Pt', 78);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Gold', 'Au', 'transition-metal', 79, 'f', 'Solid', U&'[Xe]4f\00B9\20745d\00B9\20706s\00B9', 1064.18, 2855.85,
           196.97, 214, 2.54, '3,1');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B9\2079\2077Au', 79);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Mercury', 'Hg', 'transition-metal', 80, 'f', 'Liquid', U&'[Xe]4f\00B9\20745d\00B9\20706s\00B2', -38.72, 356.73,
              200.59, 223, 2, '2,1');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2070\00B2Hg', 80);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Thallium', 'Tl', 'post-transition-metal', 81, 'f', 'Solid', U&'[Xe]4f\00B9\20745d\00B9\20706s\00B26p\00B9', 303.85,
               1472.85, 204.38, 196,
   1.62, '3,1');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2070\2075Tl', 81);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Lead', 'Pb', 'post-transition-metal', 82, 'f', 'Solid', U&'[Xe]4f\00B9\20745d\00B9\20706s\00B26p\00B2', 327.46,
           1748.85, 207.2, 202, 1.87,
   '4,2');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2070\2075Pb', 82);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Bismuth', 'Bi', 'post-transition-metal', 83, 'f', 'Solid', U&'[Xe]4f\00B9\20745d\00B9\20706s\00B26p\00B3', 271.55,
              1563.85, 208.98, 207,
   2.02, '5,3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2070\2079Bi', 83);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Polonium', 'Po', 'post-transition-metal', 84, 'f', 'Solid', U&'[Xe]4f\00B9\20745d\00B9\20706s\00B2p\2074', 253.85,
               961.85, 208.98, 197, 2,
   '6,4,2');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2070\2079Po', 84);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\00B9\00B9Po', 84);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Astatine', 'At', 'metalloid', 85, 'f', 'Solid', U&'[Xe]4f\00B9\20745d\00B9\20706s\00B2p\2075', 301.85, 336.85,
               209.99, 202, 2.2,
   '7,5,3,1,-1');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\00B9\2070At', 85);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\00B9\00B9At', 85);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Radon', 'Rn', 'noble-gas', 86, 'f', 'Gas', U&'[Xe]4f\00B9\20745d\00B9\20706s\00B2p\2075', -71.15, -61.85, 222.02,
            220, 2.2, '2');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\00B9\00B9Rn', 86);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\00B2\2070Rn', 86);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\00B2\00B2Rn', 86);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Francium', 'Fr', 'alkali-metal', 87, 's', 'Solid', U&'[Rn]7s\00B9', 26.85, 676.85, 223.02, 348, 0.7, '1');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\00B2\00B3Fr', 87);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Radium', 'Ra', 'alkaline-earth-metal', 88, 's', 'Solid', U&'[Rn]7s\00B2', 699.85, 1736.85, 226.03, 283, 0.9, '2');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\00B2\2076Ra', 88);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Actinium', 'Ac', 'actinide', 89, 'd', 'Solid', U&'[Rn]6d\00B97s\00B2', 1049.85, 3197.85, 227.03, 247, 1.1, '3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\00B2\2077Ac', 89);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Thorium', 'Th', 'actinide', 90, 'd', 'Solid', U&'[Rn]6d\00B27s\00B2', 1841.85, 4787.85, 232.04, 245, 1.3, '4');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\00B3\2070Th', 90);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\00B3\00B2Th', 90);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Protactinium', 'Pa', 'actinide', 91, 'f', 'Solid', U&'[Rn]5f\00B26d\00B97s\00B2', 1567.85, 4026.85, 234.04, 243,
   1.5, '5,4');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\00B3\00B9Pa', 91);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Uranium', 'U', 'actinide', 92, 'f', 'Solid', U&'[Rn]5f\00B36d\00B97s\00B2', 1132.15, 4130.85, 238.03, 241, 1.38,
   '6,5,4,3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\00B3\2074U', 92);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\00B3\2075U', 92);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\00B3\2078U', 92);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Neptunium', 'Np', 'actinide', 93, 'f', 'Solid', U&'[Rn]5f\20746d\00B97s\00B2', 643.85, 3999.85, 237.05, 239, 1.36,
   '6,5,4,3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\00B3\2077Np', 93);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Plutonium', 'Pu', 'actinide', 94, 'f', 'Solid', U&'[Rn]5f\20767s\00B2', 639.35, 3227.85, 244.06, 243, 1.28,
        '6,5,4,3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\00B3\2078Pu', 94);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\00B3\2079Pu', 94);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2074\2070Pu', 94);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Americium', 'Am', 'actinide', 95, 'f', 'Solid', U&'[Rn]5f\20777s\00B2', 1175.85, 2606.85, 243.06, 244, 1.13,
        '6,5,4,3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2074\00B9Am', 95);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2074\00B3Am', 95);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Curium', 'Cm', 'actinide', 96, 'f', 'Solid', U&'[Rn]5f\20776d\00B97s\00B2', 1339.85, 3109.85, 247.07, 245, 1.28,
   '4,3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2074\00B3Cm', 96);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2074\2078Cm', 96);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Berkelium', 'Bk', 'actinide', 97, 'f', 'Solid', U&'[Rn]5f\20797s\00B2', 985.85, 2626.85, 247.07, 244, 1.3, '4,3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2074\2077Bk', 97);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2074\2079Bk', 97);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Californium', 'Cf', 'actinide', 98, 'f', 'Solid', U&'[Rn]5f\00B9\20707s\00B2', 899.85, NULL, 251.08, 245, 1.3,
        '4,3,2');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2074\2079Cf', 98);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2075\00B2Cf', 98);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Einsteinium', 'Es', 'actinide', 99, 'f', 'Solid', U&'[Rn]5f\00B9\00B97s\00B2', 859.85, NULL, 252.08, 245, 1.3,
        '4,3,2');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2075\00B2Es', 99);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Fermium', 'Fm', 'actinide', 100, 'f', 'Solid', U&'[Rn]5f\00B9\00B27s\00B2', NULL, NULL, 257.1, 245, 1.3, '3,2');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2075\2077Fm', 100);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Mendelevium', 'Md', 'actinide', 101, 'f', 'Solid', U&'[Rn]5f\00B9\00B37s\00B2', NULL, NULL, 258.1, 246, 1.3,
        '3,2,1');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2075\2078Md', 101);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2076\2070Md', 101);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Nobelium', 'No', 'actinide', 102, 'f', 'Solid', U&'[Rn]5f\00B9\20747s\00B2', NULL, NULL, 259.1, 245, 1.3, '3,2');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2075\2079No', 102);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Lawrencium', 'Lr', 'actinide', 103, 'f', 'Solid', U&'[Rn]5f\00B9\20747s\00B27p\00B9', NULL, NULL, 262.11, 246, 1.3,
   '3');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2076\00B2Lr', 103);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Rutherfordium', 'Rf', 'transition-metal', 104, 'f', 'Solid', U&'[Rn]5f\00B9\20746d\00B27s\00B2', NULL, NULL, 267.12,
                    NULL, NULL, '4');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2076\2075Rf', 104);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Dubnium', 'Db', 'transition-metal', 105, 'f', 'Solid', U&'[Rn]5f\00B9\20746d\00B37s\00B2', NULL, NULL, 268.13, NULL,
   NULL, '5');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2076\2078Db', 105);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Seaborgium', 'Sg', 'transition-metal', 106, 'f', 'Solid', U&'[Rn]5f\00B9\20746d\20747s\00B2', NULL, NULL, 271.13,
                 NULL, NULL, '6');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2077\00B9Sg', 106);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Bohrium', 'Bh', 'transition-metal', 107, 'f', 'Solid', U&'[Rn]5f\00B9\20746d\20757s\00B2', NULL, NULL, 272.14, NULL,
   NULL, '7');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2077\00B2Bh', 107);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Hassium', 'Hs', 'transition-metal', 108, 'f', 'Solid', U&'[Rn]5f\00B9\20746d\20767s\00B2', NULL, NULL, 277.15, NULL,
   NULL, '8');
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2077\2070Hs', 108);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Meitnerium', 'Mt', 'unknown-type', 109, 'f', 'Solid', U&'[Rn]5f\00B9\20746d\20777s\00B2', NULL, NULL, 276.15, NULL,
   NULL,
   NULL);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2077\2076Mt', 109);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Darmstadtium', 'Ds', 'unknown-type', 110, 'f', 'Solid', U&'[Rn]5f\00B9\20746d\20797s\00B9', NULL, NULL, 281.16,
                   NULL,
   NULL, NULL);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2078\00B9Ds', 110);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Roentgenium', 'Rg', 'unknown-type', 111, 'f', 'Solid', U&'[Rn]5f\00B9\20746d\00B9\20707s\00B9', NULL, NULL, 280.17,
                  NULL,
   NULL,
   NULL);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2078\2070Rg', 111);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Copernicium', 'Cn', 'transition-metal', 112, 'f', 'Solid', U&'[Rn]5f\00B9\20746d\20767s\00B2', NULL, NULL, 285.17,
                  NULL, NULL, NULL);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2078\2075Cn', 112);

INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Nihonium', 'Nh', 'unknown-type', 113, 'p', 'Solid', U&'[Rn]5f\00B9\20746d\00B9\20707s\00B27p\00B9', NULL, NULL, 286,
               NULL, NULL, NULL);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2078\2076Nh', 113);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Flerovium', 'Fl', 'unknown-type', 114, 'p', 'Solid', U&'[Rn]5f\00B9\20746d\00B9\20707s\00B27p\00B2', NULL, NULL,
                289,
                NULL, NULL, NULL);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2078\2079Fl', 114);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Moscovium', 'Mc', 'unknown-type', 115, 'p', 'Solid', U&'[Rn]5f\00B9\20746d\00B9\20707s\00B27p\00B3', NULL, NULL,
                289,
                NULL, NULL, NULL);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2078\2079Mc', 115);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Livermorium', 'Lv', 'unknown-type', 116, 'p', 'Solid', U&'[Rn]5f\00B9\20746d\00B9\20707s\00B27p\2074', NULL, NULL,
                  293,
                  NULL, NULL, NULL);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2079\00B3Lv', 116);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Tennessine', 'Ts', 'unknown-type', 117, 'p', 'Solid', U&'[Rn]5f\00B9\20746d\00B9\20707s\00B27p\2075', NULL, NULL,
                 294,
                 NULL, NULL, NULL);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2079\2074Ts', 117);


INSERT INTO periodic_system.chemical_element (name, symbol, type, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Oganesson', 'Og', 'unknown-type', 118, 'p', 'Solid', U&'[Rn]5f\00B9\20746d\00B9\20707s\00B27p\2076', NULL, NULL,
                294,
                NULL, NULL, NULL);
INSERT INTO periodic_system.key_isotope (symbol, chemical_element_atomic_number)
VALUES (U&'\00B2\2079\2074Og', 118);

--QUIZES
INSERT INTO periodic_system.quiz (description, difficulty, name)
VALUES ('The easiest quiz. Shouldn''t be hard even without revising.', 1, 'Beginner''s quiz');

INSERT INTO periodic_system.quiz (description, difficulty, name)
VALUES ('A bit more complex. Some of the basic things learned in a high school.', 2, 'Highschool 101');

INSERT INTO periodic_system.quiz (description, difficulty, name)
VALUES ('Quite a challenge if you are not versatile with chemistry knowledge!', 3, 'Almost a pro');

INSERT INTO periodic_system.quiz (description, difficulty, name)
VALUES ('The hardest quiz regarding high school chemistry content! Good luck!', 4, 'Brainiac');


--QUESTIONS & ANSWERS

--DIFFICULTY 1
INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (1, 1, 1, 'Which scientist came up with the concept of a periodic table?');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'Dmitri Mendeleev', 1);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Ernest Rutherford', 1);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Antoine Lavoisier', 1);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Niels Bohr', 1);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (2, 2, 1, 'What is the first element in the periodic table?');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'Hydrogen (H)', 2);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Helium (He)', 2);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Lithium (Li)', 2);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (3, 3, 1, 'The rows of the periodic table are called periods and the columns are called groups.');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'True', 3);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'False', 3);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (4, 4, 1, 'Which of these choices is NOT a family of elements?');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'Molecules', 4);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Alkali metals', 4);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Halogens', 4);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Noble gases', 4);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (5, 5, 1, 'How many periodes and groups are in PSE?');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, '7 & 18', 5);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, '8 & 16', 5);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, '9 & 18', 5);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (6, 6, 1, 'You will find non-metals on the far left columns of the periodic table.');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'False', 6);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'True', 6);


INSERT INTO periodic_system.question (id, number, difficulty, text) VALUES (7, 7, 1, 'What is the symbol for Lead?');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'Pb', 7);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'La', 7);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Li', 7);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Hg', 7);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (8, 8, 1, 'What 3 elements are the most abundant in the Earth''s atmosphere?');
INSERT INTO periodic_system.answer (correct, text, question_id)
VALUES (TRUE, 'Nitrogen (N), Oxygen (O) & Argon (Ar)', 8);
INSERT INTO periodic_system.answer (correct, text, question_id)
VALUES (FALSE, 'Hydrogen (H), Oxygen (O) & Nitrogen (N)', 8);
INSERT INTO periodic_system.answer (correct, text, question_id)
VALUES (FALSE, 'Neon (Ne), Helium (He) & Oxygen (O)', 8);
INSERT INTO periodic_system.answer (correct, text, question_id)
VALUES (FALSE, 'Oxygen (O), Hydrogen (H) & Carbon dioxide (CO2)', 8);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (9, 9, 1, 'Which 2 elements are in liquid state at 20°C?');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'Bromine (Br) & Mercury (Hg)', 9);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Chlorine (Cl) & Fluorine (F)', 9);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Antimony (Sb) & Sodium (Na)', 9);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (10, 10, 1, 'Atomic number 27 represents which element?');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'Cobalt (Co)', 10);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Aluminium (Al)', 10);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Argon (Ar)', 10);

-- Difficulty 2


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (11, 1, 2, 'Which 2 elements are the most abundant in Universe?');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'Hydrogen (H) & Helium (He)', 11);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Hydrogen (H) & Oxygen (O)', 11);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Helium (He) & Krypton (Kr)', 11);


INSERT INTO periodic_system.question (id, number, difficulty, text) VALUES
  (12, 2, 2, 'Which element was used as „flash powder“ for subject illumination in the early days of photography?');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'Magnesium (Mg)', 12);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Calcium (Ca)', 12);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Strontium (Sr)', 12);

INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (13, 3, 2, 'What is the symbol for Rhodium?');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'Rh', 13);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Ru', 13);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Rn', 13);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (14, 4, 2, 'How many elements represent noble gases?');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, '7', 14);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, '6', 14);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, '8', 14);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (15, 5, 2, 'Elements in the periodic table are arranged by...');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'Atomic number', 15);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Relative atomic mass', 15);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Chemical reactivity', 15);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (16, 6, 2, 'The atomic number of an element tells you the number of _____ in a neutral atom.');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'Protons & electrons', 16);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Neutrons & protons', 16);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Protons', 16);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (17, 7, 2, 'Which of these elements is a noble gas?');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'Neon (Ne)', 17);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Gallium (Ga)', 17);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Fluorine (F)', 17);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Yttrium (Y)', 17);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (18, 8, 2, 'Hydrogen atom (H) only has one proton and one electron.');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'True', 18);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'False', 18);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (19, 9, 2, 'The element with atomic number 12 is...');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'Magnesium (Mg)', 19);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Manganese (Mn)', 19);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Carbon (C)', 19);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (20, 10, 2, 'All of the following are in the same rows/periods of the periodic table EXCEPT...');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'Sodium(Na),Carbon(C), Chlorine(Cl)', 20);
INSERT INTO periodic_system.answer (correct, text, question_id)
VALUES (FALSE, 'Beryllium(Be), Oxygen(O), Fluorine (F)', 20);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Lithium(Li), Boron(B), Neon(Ne)', 20);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Hydrogen(H), Helium(He)', 20);

-- Difficulty 3


INSERT INTO periodic_system.question (id, number, difficulty, text) VALUES (21, 1, 3, 'How many groups are in PSE?');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, '18', 21);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, '16', 21);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, '8', 21);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (22, 2, 3, 'The atomic number of phosphorus (P) is...');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, '16', 22);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, '15', 22);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, '30,97', 22);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (23, 3, 3, 'The order of elements in groups is based on similar chemical properties.?');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'True', 23);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'False', 23);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (24, 4, 3, 'Silicon (Si) and carbon (C) share some similar characteristics.');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'True', 24);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'False', 24);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (25, 5, 3, 'Which symbol stands for Antimony & Tin?');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'Sb & Sn', 25);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Mo & Ti', 25);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Am & In', 25);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'At & Ti', 25);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (26, 6, 3, 'Na-K pump serves as an active transport system in animal cells, and it transports ions of:');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'Sodium & Potassium', 26);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Nickel & Copper', 26);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Niobium & Chrome ', 26);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (27, 7, 3, 'Which element is present in every organic molecule?');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'Carbon (C)', 27);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Hydrogen (H)', 27);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Oxygen (O)', 27);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Nitrogen (N)', 27);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (28, 8, 3, 'The majority of the elements in the periodic table are...');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'Metals', 28);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Non-metals', 28);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Metalloids', 28);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (29, 9, 3, 'Elements that have properties of both metals and nonmetals are...');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'Metalloids', 29);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Noble gases', 29);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Transition metals', 29);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (30, 10, 3, 'Of the following 3 elements, which is a metalloid ');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'Selenium (Se)', 30);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Vanadium (V)', 30);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Platinum (Pt)', 30);

-- Difficulty 4


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (31, 1, 4, 'Nitrogen (N) has a greater mass than Bromine (Br).');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'False', 31);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'True', 31);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (32, 2, 4, 'You might find boron (B) in the soap in your bathtub.');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'True', 32);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'False', 32);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (33, 3, 4, 'Which element is used the most for making medical implants?');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'Titanium (Ti)', 33);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Aluminium (Al)', 33);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Nickel (Ni)', 33);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (34, 4, 4, 'What is the symbol for Astatine?');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'At', 34);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'As', 34);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Ac', 34);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (35, 5, 4, 'An isotope is a form of an atom with a different number of...');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'Neutrons', 35);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Protons', 35);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Electrons', 35);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'All of the above', 35);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (36, 6, 4, 'The number of electrons in the outermost energy level are called the ______ electrons.');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'Valence', 36);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Atomic mass', 36);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Atomic number', 36);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (37, 7, 4, 'The valence electrons determine the _______ properties of the element.');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'Chemical', 37);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Physical', 37);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'None of the above', 37);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (38, 8, 4, 'How many valence electrons contains Iodine (I) atom?');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, '7', 38);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, '6', 38);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, '5', 38);


INSERT INTO periodic_system.question (id, number, difficulty, text) VALUES (39, 9, 4,
                                                                            'Electronegativity is a chemical property that describes the tendency of an atom to _____ electrons towards itself.');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'Attract', 39);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Repulse', 39);


INSERT INTO periodic_system.question (id, number, difficulty, text)
VALUES (40, 10, 4, 'Which element in Periodic table has the greatest electronegativity value?');
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (TRUE, 'Fluorine (F)', 40);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Chlorine (Cl)', 40);
INSERT INTO periodic_system.answer (correct, text, question_id) VALUES (FALSE, 'Iodine (I)', 40);




















