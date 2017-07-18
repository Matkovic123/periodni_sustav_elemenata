--USER ROLES
INSERT INTO periodic_system.user_role (id, role) VALUES (1, 'ROLE_ADMIN');
INSERT INTO periodic_system.user_role (id, role) VALUES (2, 'ROLE_USER');

--USER DATA
INSERT INTO periodic_system.user (first_name, last_name, username, password, role_id, enabled)
VALUES ('Admin', 'Admin', 'ROLE_ADMIN', '$2a$10$KgN3J87rf5kYCG3c0jCKtuessy0YgnrchxGi6ZtA7SV0NTDdShwxi', 1, TRUE);
INSERT INTO periodic_system.user (first_name, last_name, username, password, role_id, enabled)
VALUES ('User', 'User', 'ROLE_USER', '$2a$10$hMr9K2CX8zxgxd195uyBS.ePUWeuQb/3pfPQBJbJ0EUl3Mry2G6m6', 2, TRUE);

-- CHEMICAL ELEMENTS
INSERT INTO periodic_system.chemical_element (id, name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES (1, 'Hydrogen', 'H', 1, 's', 'Gas', U&'1s\00B9', -259.14, -252.87, 1.008, 1.10, 2.20, '1, -1');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B9H', 1);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B2H', 1);

INSERT INTO periodic_system.chemical_element (id, name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius)
VALUES (2, 'Helium', 'He', 2, 's', 'Gas', U&'1s\00B2', -272.2, -268.93, 4.003, 1.4);
INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
VALUES (U&'\00B3He', 2);
INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
VALUES (U&'\2074He', 2);

INSERT INTO periodic_system.chemical_element (id, name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES (3, 'Lithium', 'Li', 3, 's', 'Solid', U&'[He]2s\00B9', 182.54, 1342, 6.9414, 1.82, 0.98, '+1');
INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
VALUES (U&'\2076Li', 3);
INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
VALUES (U&'\2077Li', 3);


INSERT INTO periodic_system.chemical_element (id, name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES (4, 'Beryllium', 'Be', 4, 's', 'Solid', U&'[He]2s\00B2', 1287, 2469, 9.012, 1.53, 1.57, '+2');
INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
VALUES (U&'\2079Be', 4);


INSERT INTO periodic_system.chemical_element (id, name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES (5, 'Boron', 'B', 5, 'p', 'Solid', U&'[He]2s\00B22p\00B9', 2076, 3927, 10.811, 1.92, 2.04, '+3');
INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
VALUES (U&'\00B9\2070B', 5);
INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
VALUES (U&'\00B9\00B9', 5);


INSERT INTO periodic_system.chemical_element (id, name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  (6, 'Carbon', 'C', '6', 'p', 'Solid', U&'[He]2s\00B22p\00B2', 3500, 4827, 12.011, 1.7, 2.55, '+4 +2 -4');
INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
VALUES (U&'\00B9\00B2C', 6);
INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
VALUES (U&'\00B9\00B3C', 6);
INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
VALUES (U&'\00B9\2074C', 6);


INSERT INTO periodic_system.chemical_element (id, name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES (7, 'Nitrogen', 'N', 7, 'p', 'Gas', U&'[He]2s\00B22p\00B3', -210, -195.79, 14.007, 1.55, 3.04,
        '+5 +4 +3 +2 -3');
INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
VALUES (U&'\00B9\2074N', 7);
INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
VALUES (U&'\00B9\2075N', 7);


INSERT INTO periodic_system.chemical_element (id, name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES (8, 'Oxygen', 'O', 8, 'p', 'Gas', U&'[He]2s\00B22p\2074', -218.79, -182.96, 15.99, 1.52, 3.44, '-1 -2');
INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
VALUES (U&'\00B9\2076O', 8);
INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
VALUES (U&'\00B9\2077O', 8);
INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
VALUES (U&'\00B9\2078O', 8);


INSERT INTO periodic_system.chemical_element (id, name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES (9, 'Fluorine', 'F', 9, 'p', 'Gas', U&'[He]2s\00B22p\2075', -219.67, -188.11, 18.998, 1.47, 3.98, '-1');
INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
VALUES (U&'\00B9\2079F', 9);


INSERT INTO periodic_system.chemical_element (id, name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius)
VALUES (10, 'Neon', 'Ne', 10, 'p', 'Gas', U&'[He]2s\00B22p\2076', -248.59, -246.046, 20.180, 1.54);
INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
VALUES (U&'\00B2\2070Ne', 10);
INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
VALUES (U&'\00B2\00B9Ne', 10);
INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
VALUES (U&'\00B2\00B2Ne', 10);


INSERT INTO periodic_system.chemical_element (id, name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES (11, 'Sodium', 'Na', 11, 's', 'Solid', U&'[Ne]3s\00B9', 97.794, 882.94, 22.99, 2.27, 0.93, '+1');
INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
VALUES (U&'\00B2\00B3Na', 11);


INSERT INTO periodic_system.chemical_element (id, name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES (12, 'Magnesium', 'Mg', 12, 's', 'Solid', U&'[Ne]3s\00B2', 650, 1090, 24.31, 1.73, 1.31, '+2');
INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
VALUES (U&'\00B2\2074Mg', 12);
INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
VALUES (U&'\00B2\2075Mg', 12);
INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
VALUES (U&'\00B2\2076Mg', 12);


INSERT INTO periodic_system.chemical_element (id, name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES (13, 'Aluminium', 'Al', 13, 'p', 'Solid', U&'[Ne]3s\00B23p\00B9', 660.323, 2519, 26.98, 1.84, 1.61, '+3');
INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
VALUES (U&'\00B2\2077Al', 13);


INSERT INTO periodic_system.chemical_element (id, name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES (14, 'Silicon', 'Si', 14, 'p', 'Solid', U&'[Ne]3s\00B23p\00B2', 1414, 3265, 28.085, 2.10, 1.9, '+4 -4');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B2\2078Si', 14);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B2\2079Si', 14);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B3\2070Si', 14);


INSERT INTO periodic_system.chemical_element (id, name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES (15, 'Phosphorus', 'P', 15, 'p', 'Solid', U&'[Ne]3s\00B23p\00B3', 44.15, 280.5, 30.974, 1.80, 2.19, '+5 +3 -3');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B3\00B9P', 15);


INSERT INTO periodic_system.chemical_element (id, name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES (16, 'Sulfur', 'S', 16, 'p', 'Solid', U&'[Ne]3s\00B23p\2074', 115.21, 444.61, 32.06, 1.80, 2.58, '+6 +4 +2 -2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B3\00B2S', 16);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B3\00B3S', 16);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B3\2074S', 16);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B3\2076S', 16);


INSERT INTO periodic_system.chemical_element (id, name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES
  (17, 'Chlorine', 'Cl', 17, 'p', 'Gas', U&'[Ne]3s\00B23p\2075', -101.5, -34.04, 35.45, 1.75, 3.16, '+7 +5 +3 +1 -1');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B3\2075Cl', 17);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B3\2077Cl', 17);


INSERT INTO periodic_system.chemical_element (id, name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius)
VALUES (18, 'Argon', 'Ar', 18, 'p', 'Gas', U&'[Ne]3s\00B23p\2076', -189.34, -185.85, 39.95, 1.88);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B3\2076Ar', 18);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B3\2078Ar', 18);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2074\2070Ar', 18);


INSERT INTO periodic_system.chemical_element (id, name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES (19, 'Potassium', 'K', 19, 's', 'Solid', U&'[Ar]4s\00B9', 63.5, 759, 39.098, 2.75, 0.82, '+1');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\00B3\2079K', 19);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2074\2070K', 19);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2074\00B9K', 19);


INSERT INTO periodic_system.chemical_element (id, name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES (20, 'Calcium', 'Ca', 20, 's', 'Solid', U&'[Ar]4s\00B2', 842, 1484, 40.078, 2.31, 1.00, '+2');
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2074\2070Ca', 20);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2074\00B2Ca', 20);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2074\2074Ca', 20);
INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
VALUES (U&'\2074\2078Ca', 20);


INSERT INTO periodic_system.chemical_element (id, name, symbol, atomic_number, block, state_at_20c, electron_configuration, melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
VALUES (21, 'Scandium', 'Sc', 21, 'd', 'Solid', U&'[Ar]3d\00B94s\00B2', 1541, 2836, 44.956, 2.15, 1.36, '+3');
-- INSERT INTO periodic_system.isotope (symbol, chemical_element_id)
-- VALUES ();

--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
-- INSERT INTO periodic_system.chemical_element(id, name, symbol, atomic_number, block, state_at_20c, electron_configuration,  melting_point_in_C, boiling_point_in_C, atomic_mass, atomic_radius, electronegativity, common_oxidation_states)
-- VALUES();
-- INSERT INTO periodic_system. isotope(  symbol, chemical_element_id)
-- VALUES();
--
--
--
--
--
--
--
