--USER ROLES
INSERT INTO periodic_system.user_role (id, role) VALUES (1, 'ROLE_ADMIN');
INSERT INTO periodic_system.user_role (id, role) VALUES (2, 'ROLE_USER');

--USER DATA
INSERT INTO periodic_system.user (first_name, last_name, username, password, role_id, enabled)
VALUES ('Admin', 'Admin', 'ROLE_ADMIN', '$2a$10$KgN3J87rf5kYCG3c0jCKtuessy0YgnrchxGi6ZtA7SV0NTDdShwxi', 1, TRUE);
INSERT INTO periodic_system.user (first_name, last_name, username, password, role_id, enabled)
VALUES ('User', 'User', 'ROLE_USER', '$2a$10$hMr9K2CX8zxgxd195uyBS.ePUWeuQb/3pfPQBJbJ0EUl3Mry2G6m6', 2, TRUE);

-- CHEMICAL ELEMENTS
INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Hydrogen', 'H', 1, 's', 'Gas', U&'1s\00B9', -259.14, -252.87, 1.008, 1.10, 2.20, '1, -1');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B9H', 1);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B2H', 1);

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius)
VALUES ('Helium', 'He', 2, 's', 'Gas', U&'1s\00B2', -272.2, -268.93, 4.003, 1.4);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B3He', 2);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2074He', 2);

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Lithium', 'Li', 3, 's', 'Solid', U&'[He]2s\00B9', 182.54, 1342, 6.9414, 1.82, 0.98, '+1');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2076Li', 3);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2077Li', 3);


INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Beryllium', 'Be', 4, 's', 'Solid', U&'[He]2s\00B2', 1287, 2469, 9.012, 1.53, 1.57, '+2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2079Be', 4);


INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Boron', 'B', 5, 'p', 'Solid', U&'[He]2s\00B22p\00B9', 2076, 3927, 10.811, 1.92, 2.04, '+3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B9\2070B', 5);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B9\00B9', 5);


INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Carbon', 'C', '6', 'p', 'Solid', U&'[He]2s\00B22p\00B2', 3500, 4827, 12.011, 1.7, 2.55, '+4 +2 -4');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B9\00B2C', 6);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B9\00B3C', 6);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B9\2074C', 6);


INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Nitrogen', 'N', 7, 'p', 'Gas', U&'[He]2s\00B22p\00B3', -210, -195.79, 14.007, 1.55, 3.04,
        '+5 +4 +3 +2 -3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B9\2074N', 7);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B9\2075N', 7);


INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Oxygen', 'O', 8, 'p', 'Gas', U&'[He]2s\00B22p\2074', -218.79, -182.96, 15.99, 1.52, 3.44, '-1 -2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B9\2076O', 8);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B9\2077O', 8);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B9\2078O', 8);


INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Fluorine', 'F', 9, 'p', 'Gas', U&'[He]2s\00B22p\2075', -219.67, -188.11, 18.998, 1.47, 3.98, '-1');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B9\2079F', 9);


INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius)
VALUES ('Neon', 'Ne', 10, 'p', 'Gas', U&'[He]2s\00B22p\2076', -248.59, -246.046, 20.180, 1.54);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B2\2070Ne', 10);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B2\00B9Ne', 10);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B2\00B2Ne', 10);


INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Sodium', 'Na', 11, 's', 'Solid', U&'[Ne]3s\00B9', 97.794, 882.94, 22.99, 2.27, 0.93, '+1');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B2\00B3Na', 11);


INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Magnesium', 'Mg', 12, 's', 'Solid', U&'[Ne]3s\00B2', 650, 1090, 24.31, 1.73, 1.31, '+2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B2\2074Mg', 12);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B2\2075Mg', 12);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B2\2076Mg', 12);


INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Aluminium', 'Al', 13, 'p', 'Solid', U&'[Ne]3s\00B23p\00B9', 660.323, 2519, 26.98, 1.84, 1.61, '+3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B2\2077Al', 13);


INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Silicon', 'Si', 14, 'p', 'Solid', U&'[Ne]3s\00B23p\00B2', 1414, 3265, 28.085, 2.10, 1.9, '+4 -4');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B2\2078Si', 14);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B2\2079Si', 14);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B3\2070Si', 14);


INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Phosphorus', 'P', 15, 'p', 'Solid', U&'[Ne]3s\00B23p\00B3', 44.15, 280.5, 30.974, 1.80, 2.19, '+5 +3 -3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B3\00B9P', 15);


INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Sulfur', 'S', 16, 'p', 'Solid', U&'[Ne]3s\00B23p\2074', 115.21, 444.61, 32.06, 1.80, 2.58, '+6 +4 +2 -2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B3\00B2S', 16);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B3\00B3S', 16);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B3\2074S', 16);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B3\2076S', 16);


INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Chlorine', 'Cl', 17, 'p', 'Gas', U&'[Ne]3s\00B23p\2075', -101.5, -34.04, 35.45, 1.75, 3.16, '+7 +5 +3 +1 -1');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B3\2075Cl', 17);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B3\2077Cl', 17);


INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius)
VALUES ('Argon', 'Ar', 18, 'p', 'Gas', U&'[Ne]3s\00B23p\2076', -189.34, -185.85, 39.95, 1.88);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B3\2076Ar', 18);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B3\2078Ar', 18);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2074\2070Ar', 18);


INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Potassium', 'K', 19, 's', 'Solid', U&'[Ar]4s\00B9', 63.5, 759, 39.098, 2.75, 0.82, '+1');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B3\2079K', 19);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2074\2070K', 19);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2074\00B9K', 19);


INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Calcium', 'Ca', 20, 's', 'Solid', U&'[Ar]4s\00B2', 842, 1484, 40.078, 2.31, 1.00, '+2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2074\2070Ca', 20);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2074\00B2Ca', 20);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2074\00B3Ca', 20);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2074\2074Ca', 20);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2074\2076Ca', 20);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2074\2078Ca', 20);


INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Scandium', 'Sc', 21, 'd', 'Solid', U&'[Ar]3d\00B94s\00B2', 1541, 2836, 44.956, 2.15, 1.36, '+3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2074\2075Sc', 21);


INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Titanium', 'Ti', 22, 'd', 'Solid', U&'[Ar]3d\00B24s\00B2', 1670, 3287, 47.956, 2.11, 1.54, '+4 +3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2074\2076Ti', 22);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2074\2077Ti', 22);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2074\2078Ti', 22);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2074\2079Ti', 22);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2070Ti', 22);


INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Vanadium', 'V', 23, 'd', 'Solid', U&'[Ar]3d\00B34s\00B2', 1910, 3407, 50.942, 2.07, 1.63, '+5 +4 +3 +2 0');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2070V', 23);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\00B9V', 23);


INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Chromium', 'Cr', 24, 'd', 'Solid', U&'[Ar]3d\20754s\00B9', 1906.85, 2670.85, 51.996, 206, 1.66, '6,3,2,0');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2070Cr', 24);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\00B2Cr', 24);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\00B3Cr', 24);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2074Cr', 24);

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Manganese', 'Mn', 25, 'd', 'Solid', U&'[Ar]3d\20754s\00B2', 1245.85, 2060.85, 54.938, 205, 1.55, '7,6,4,3,2,0,-1');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075Mn', 25);

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Iron', 'Fe', 26, 'd', 'Solid', U&'[Ar]3d\20764s\00B2', 1537.85, 2860.85, 55.845, 204, 1.83, '6,3,2,0,-2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2074Fe',26 );
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2076Fe',26 );
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2077Fe',26 );
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2078Fe',26 );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Cobalt', 'Co', 27, 'd', 'Solid', U&'[Ar]3d\20774s\00B2', 1494.85, 2926.85, 58.933, 200, 1.88, '3,2,0,-1');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2079Co',27 );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Nickel', 'Ni', 28, 'd', 'Solid', U&'[Ar]3d\20784s\00B2', 1454.85, 2912.85, 58.693, 197, 1.91, '3,2,0');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2078Ni', 28);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2076\2070Ni', 28);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2076\00B9Ni', 28);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2076\00B2Ni', 28);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2076\00B4Ni', 28);

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Copper', 'Cu', 29, 'd', 'Solid', U&'[Ar]3d\00B9\20704s\00B9', 1084.62, 2561.85, 63.546, 196, 1.9, '2,1');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2076\00B3Cu', 29);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2076\2075Cu', 29);

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Zinc', 'Zn', 30, 'd', 'Solid', U&'[Ar]3d\00B9\20704s\00B2', 419.73, 906.85, 65.409, 201, 1.65, '2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2076\2074Zn',30 );
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2076\2076Zn',30 );
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2076\2077Zn',30 );
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2076\2078Zn',30 );
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2077\2070Zn',30 );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Gallium', 'Ga', 31, 'd', 'Solid', U&'[Ar]3d\00B9\20704s\00B24p\00B9', 29.7646, 2203.85, 69.723, 187, 1.81, '3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2076\2079Ga',31 );
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2077\00B9Ga',31 );


-- TODO: isotopes
INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Germanium', 'Ge', 32, 'd', 'Solid', U&'[Ar]3d\00B9\20704s\00B24p\00B2', 938.25, 2832.85, 72.64, 211, 2.01, '4');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Arsenic', 'As', 33, 'd', 'Solid', U&'[Ar]3d\00B9\20704s\00B24p\00B3', 816.85, 613.85, 74.922, 185, 2.18, '5,3,-3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Selenium', 'Se', 34, 'd', 'Solid', U&'[Ar]3d\00B9\20704s\00B24p\2074', 179.85, 684.85, 78.96, 190, 2.55, '6,4,-2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Bromine', 'Br', 35, 'd', 'Liquid', U&'[Ar]3d\00B9\20704s\00B24p\2075', -7.35, 58.85, 79.904, 185, 2.96,
        '7,5,3,1,-1');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Krypton', 'Kr', 36, 'd', 'Gas', U&'[Ar]3d\00B9\20704s\00B24p\2076', -157.36, -153.22, 83.798, 202, 3, '2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Rubidium', 'Rb', 37, 's', 'Solid', U&'[Kr]5s\00B9', 39.31, 687.85, 85.468, 303, 0.82, '1');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Strontium', 'Sr', 38, 's', 'Solid', U&'[Kr]5s\00B2', 776.85, 1381.85, 87.62, 249, 0.95, '2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Yttrium', 'Y', 39, 'd', 'Solid', U&'[Kr]4d\00B95s\00B2', 1525.85, 3335.85, 88.906, 232, 1.22, '3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Zirconium', 'Zr', 40, 'd', 'Solid', U&'[Kr]4d\00B25s\00B2', 1854.85, 4408.85, 91.224, 223, 1.33, '4');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Niobium', 'Nb', 41, 'd', 'Solid', U&'[Kr]4d\20745s\00B9', 2476.85, 4743.85, 92.906, 218, 1.6, '5,3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Molybdenum', 'Mo', 42, 'd', 'Solid', U&'[Kr]4d\20755s\00B9', 2622.85, 4638.85, 95.94, 217, 2.16, '6,5,4,3,2,0');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Technetium', 'Tc', 43, 'd', 'Solid', U&'[Kr]4d\20755s\00B2', 2156.85, 4264.85, 97.907, 216, 1.9, '7');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Ruthenium', 'Ru', 44, 'd', 'Solid', U&'[Kr]4d\20775s\00B9', 2333.85, 4149.85, 101.07, 213, 2.2, '8,6,4,3,2,0,-2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Rhodium', 'Rh', 45, 'd', 'Solid', U&'[Kr]4d\20785s\00B9', 1963.85, 3694.85, 12.91, 210, 2.28, '5,4,3,2,1,0');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Palladium', 'Pd', 46, 'd', 'Solid', U&'[Kr]4d\00B9\2070', 1554.9, 2962.85, 106.42, 210, 2.2, '4,2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Silver', 'Ag', 47, 'd', 'Solid', U&'[Kr]4d\00B9\20705s\00B9', 961.78, 2161.85, 107.87, 211, 1.93, '2,1');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Cadmium', 'Cd', 48, 'd', 'Solid', U&'[Kr]4d\00B9\20705s\00B2', 321.07, 766.85, 112.41, 218, 1.69, '2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Indium', 'In', 49, 'd', 'Solid', U&'[Kr]4d\00B9\20705s\00B25p\00B9', 156.6, 2071.85, 114.82, 193, 1.78, '3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Tin', 'Sn', 50, 'd', 'Solid', U&'[Kr]4d\00B9\20705s\00B25p\00B2', 231.93, 2601.85, 118.71, 217, 1.96, '4,2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Antimony', 'Sb', 51, 'd', 'Solid', U&'[Kr]4d\00B9\20705s\00B25p\00B3', 630.63, 1586.85, 121.76, 206, 2.05,
        '5,3,-3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );


INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Tellurium', 'Te', 52, 'd', 'Solid', U&'[Kr]4d\00B9\20705s\00B25p\2074', 449.51, 987.85, 127.6, 206, 2.1, '6,4,-2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Iodine', 'I', 53, 'd', 'Solid', U&'[Kr]4d\00B9\20705s\00B25p\2075', 113.7, 184.25, 126.91, 198, 2.66, '7,5,1,-1');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Xenon', 'Xe', 54, 'd', 'Gas', U&'[Kr]4d\00B9\20705s\00B25p\2076', -111.75, -108.12, 131.29, 216, 2.6, '6,4,2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Caesium', 'Cs', 55, 's', 'Solid', U&'[Xe]6s\00B9', 28.44, 670.85, 132.91, 343, 0.79, '1');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Barium', 'Ba', 56, 's', 'Solid', U&'[Xe]6s\00B2', 726.85, 1896.85, 137.33, 268, 0.89, '2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Lanthanum', 'La', 57, 'd', 'Solid', U&'[Xe]5d\00B96s\00B2', 919.85, 3463.85, 138.91, 243, 1.1, '3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Cerium', 'Ce', 58, 'f', 'Solid', U&'[Xe]4f\00B95d\00B96s\00B2', 794.85, 3442.85, 140.12, 242, 1.12, '4,3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Praseodymium', 'Pr', 59, 'f', 'Solid', U&'[Xe]4f\00B36s\00B2', 934.85, 3519.85, 140.91, 240, 1.13, '4,3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Neodymium', 'Nd', 60, 'f', 'Solid', U&'[Xe]4f\20746s\00B2', 1023.85, 3073.85, 144.24, 239, 1.14, '3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Promethium', 'Pm', 61, 'f', 'Solid', U&'[Xe]4f\20756s\00B2', 1041.85, 2999.85, NULL, 238, 1.13, '3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Samarium', 'Sm', 62, 'f', 'Solid', U&'[Xe]4f\20766s\00B2', 1071.85, 1793.85, 150.36, 236, 1.17, '3,2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Europium', 'Eu', 63, 'f', 'Solid', U&'[Xe]4f\20776s\00B2', 825.85, 1528.85, 151.96, 235, 1.2, '3,2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Gadolinium', 'Gd', 64, 'f', 'Solid', U&'[Xe]4f\20775d\00B96s\00B2', 1311.85, 3272.85, 157.25, 234, 1.2, '3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Terbium', 'Tb', 65, 'f', 'Solid', U&'[Xe]4f\20796s\00B2', 1355.85, 3229.85, 158.93, 233, 1.2, '4,3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Dysprosium', 'Dy', 66, 'f', 'Solid', U&'[Xe]4f\00B9\20706s\00B2', 1406.85, 2566.85, 162.5, 231, 1.22, '3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Holmium', 'Ho', 67, 'f', 'Solid', U&'[Xe]4f\00B9\00B96s\00B2', 1460.85, 2719.85, 164.93, 23, 1.23, '3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Erbium', 'Er', 68, 'f', 'Solid', U&'[Xe]4f\00B9\00B26s\00B2', 1528.85, 2867.85, 167.26, 229, 1.24, '3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Thulium', 'Tm', 69, 'f', 'Solid', U&'[Xe]4f\00B9\20736s\00B2', 1544.85, 1949.85, 168.93, 227, 1.25, '3,2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Ytterbium', 'Yb', 70, 'f', 'Solid', U&'[Xe]4f\00B9\20746s\00B2', 823.85, 1195.85, 173.05, 226, 1.1, '3,2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Lutetium', 'Lu', 71, 'f', 'Solid', U&'[Xe]4f\00B9\20745d\00B96s\00B2', 1651.85, 3401.85, 174.97, 224, 1.27, '3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Hafnium', 'Hf', 72, 'f', 'Solid', U&'[Xe]4f\00B9\20745d\00B26s\00B2', 2232.85, 4602.85, 178.49, 223, 1.3, '4');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Tantalum', 'Ta', 73, 'f', 'Solid', U&'[Xe]4f\00B9\20745d\00B36s\00B2', 3016.85, 5457.85, 180.95, 222, 1.5, '5');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Tungsten', 'W', 74, 'f', 'Solid', U&'[Xe]4f\00B9\20745d\20746s\00B2', 3421.85, 5554.85, 183.84, 218, 2.36,
        '6,5,4,3,2,0');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Rhenium', 'Re', 75, 'f', 'Solid', U&'[Xe]4f\00B9\20745d\20756s\00B2', 3185.85, 5595.85, 186.21, 216, 1.9,
        '7,6,4,2,-1');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Osmium', 'Os', 76, 'f', 'Solid', U&'[Xe]4f\00B9\20745d\20766s\00B2', 3032.85, 5011.85, 190.23, 216, 2.2,
        '8,6,4,3,2,0,-2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Iridium', 'Ir', 77, 'f', 'Solid', U&'[Xe]4f\00B9\20745d\20776s\00B2', 2445.85, 4427.85, 192.22, 213, 2.2,
        '6,4,3,2,1,0,-1');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Platinum', 'Pt', 78, 'f', 'Solid', U&'[Xe]4f\00B9\20745d\20796s\00B9', 1768.25, 3824.85, 195.08, 213, 2.28,
        '4,2,0');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Gold', 'Au', 79, 'f', 'Solid', U&'[Xe]4f\00B9\20745d\00B9\20706s\00B9', 1064.18, 2855.85, 196.97, 214, 2.54, '3,1');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Mercury', 'Hg', 80, 'f', 'Liquid', U&'[Xe]4f\00B9\20745d\00B9\20706s\00B2', -38.72, 356.73, 200.59, 223, 2, '2,1');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Thallium', 'Tl', 81, 'f', 'Solid', U&'[Xe]4f\00B9\20745d\00B9\20706s\00B26p\00B9', 303.85, 1472.85, 204.38, 196,
               1.62, '3,1');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Lead', 'Pb', 82, 'f', 'Solid', U&'[Xe]4f\00B9\20745d\00B9\20706s\00B26p\00B2', 327.46, 1748.85, 207.2, 202, 1.87,
   '4,2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Bismuth', 'Bi', 83, 'f', 'Solid', U&'[Xe]4f\00B9\20745d\00B9\20706s\00B26p\00B3', 271.55, 1563.85, 208.98, 207,
                   2.02, '5,3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Polonium', 'Po', 84, 'f', 'Solid', U&'[Xe]4f\00B9\20745d\00B9\20706s\00B2p\2074', 253.85, 961.85, 208.98, 197, 2,
   '6,4,2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Astatine', 'At', 85, 'f', 'Solid', U&'[Xe]4f\00B9\20745d\00B9\20706s\00B2p\2075', 301.85, 336.85, 209.99, 202, 2.2,
   '7,5,3,1,-1');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Radon', 'Rn', 86, 'f', 'Gas', U&'[Xe]4f\00B9\20745d\00B9\20706s\00B2p\2075', -71.15, -61.85, 222.02, 220, 2.2, '2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Francium', 'Fr', 87, 's', 'Solid', U&'[Rn]7s\00B9', 26.85, 676.85, 223.02, 348, 0.7, '1');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Radium', 'Ra', 88, 's', 'Solid', U&'[Rn]7s\00B2', 699.85, 1736.85, 226.03, 283, 0.9, '2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Actinium', 'Ac', 89, 'd', 'Solid', U&'[Rn]6d\00B97s\00B2', 1049.85, 3197.85, 227.03, 247, 1.1, '3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Thorium', 'Th', 90, 'd', 'Solid', U&'[Rn]6d\00B27s\00B2', 1841.85, 4787.85, 232.04, 245, 1.3, '4');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Protactinium', 'Pa', 91, 'f', 'Solid', U&'[Rn]5f\00B26d\00B97s\00B2', 1567.85, 4026.85, 234.04, 243, 1.5, '5,4');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Uranium', 'U', 92, 'f', 'Solid', U&'[Rn]5f\00B36d\00B97s\00B2', 1132.15, 4130.85, 238.03, 241, 1.38, '6,5,4,3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Neptunium', 'Np', 93, 'f', 'Solid', U&'[Rn]5f\20746d\00B97s\00B2', 643.85, 3999.85, 237.05, 239, 1.36, '6,5,4,3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Plutonium', 'Pu', 94, 'f', 'Solid', U&'[Rn]5f\20767s\00B2', 639.35, 3227.85, 244.06, 243, 1.28, '6,5,4,3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Americium', 'Am', 95, 'f', 'Solid', U&'[Rn]5f\20777s\00B2', 1175.85, 2606.85, 243.06, 244, 1.13, '6,5,4,3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Curium', 'Cm', 96, 'f', 'Solid', U&'[Rn]5f\20776d\00B97s\00B2', 1339.85, 3109.85, 247.07, 245, 1.28, '4,3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Berkelium', 'Bk', 97, 'f', 'Solid', U&'[Rn]5f\20797s\00B2', 985.85, 2626.85, 247.07, 244, 1.3, '4,3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Californium', 'Cf', 98, 'f', 'Solid', U&'[Rn]5f\00B9\20707s\00B2', 899.85, NULL, 251.08, 245, 1.3, '4,3,2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Einsteinium', 'Es', 99, 'f', 'Solid', U&'[Rn]5f\00B9\00B97s\00B2', 859.85, NULL, 252.08, 245, 1.3, '4,3,2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Fermium', 'Fm', 100, 'f', 'Solid', U&'[Rn]5f\00B9\00B27s\00B2', NULL, NULL, 257.1, 245, 1.3, '3,2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Mendelevium', 'Md', 101, 'f', 'Solid', U&'[Rn]5f\00B9\00B37s\00B2', NULL, NULL, 258.1, 246, 1.3, '3,2,1');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Nobelium', 'No', 102, 'f', 'Solid', U&'[Rn]5f\00B9\20747s\00B2', NULL, NULL, 259.1, 245, 1.3, '3,2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Lawrencium', 'Lr', 103, 'f', 'Solid', U&'[Rn]5f\00B9\20747s\00B27p\00B9', NULL, NULL, 262.11, 246, 1.3, '3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Rutherfordium', 'Rf', 104, 'f', 'Solid', U&'[Rn]5f\00B9\20746d\00B27s\00B2', NULL, NULL, 267.12, NULL, NULL, '4');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Dubnium', 'Db', 105, 'f', 'Solid', U&'[Rn]5f\00B9\20746d\00B37s\00B2', NULL, NULL, 268.13, NULL, NULL, '5');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Seaborgium', 'Sg', 106, 'f', 'Solid', U&'[Rn]5f\00B9\20746d\20747s\00B2', NULL, NULL, 271.13, NULL, NULL, '6');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Bohrium', 'Bh', 107, 'f', 'Solid', U&'[Rn]5f\00B9\20746d\20757s\00B2', NULL, NULL, 272.14, NULL, NULL, '7');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Hassium', 'Hs', 108, 'f', 'Solid', U&'[Rn]5f\00B9\20746d\20767s\00B2', NULL, NULL, 277.15, NULL, NULL, '8');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Meitnerium', 'Mt', 109, 'f', 'Solid', U&'[Rn]5f\00B9\20746d\20777s\00B2', NULL, NULL, 276.15, NULL, NULL, NULL);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Darmstadtium', 'Ds', 110, 'f', 'Solid', U&'[Rn]5f\00B9\20746d\20797s\00B9', NULL, NULL, 281.16, NULL, NULL, NULL);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES ('Roentgenium', 'Rg', 111, 'f', 'Solid', U&'[Rn]5f\00B9\20746d\00B9\20707s\00B9', NULL, NULL, 280.17, NULL, NULL,
        NULL);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );

INSERT INTO periodic_system.chemical_element (name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  ('Copernicium', 'Cn', 112, 'f', 'Solid', U&'[Rn]5f\00B9\20746d\20767s\00B2', NULL, NULL, 285.17, NULL, NULL, NULL);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2075\2075', );