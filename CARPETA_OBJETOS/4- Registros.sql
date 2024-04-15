INSERT INTO JUGADOR(NOMBRE, APELLIDO, NACIONALIDAD)
VALUES 
('Bernardo', 'Silva', 'Portugues'),
('Kevin', 'De Bruyne', 'Belga'),
('Erling', 'Haaland', 'Noruego'),
('Julián', 'Alvarez', 'Argentino'),
('Bruno Miguel Borges', 'Fernandes', 'Portugues'),
('Marcus', 'Rashford', 'Ingles'),
('Mohamed', 'Salah', 'Egipcio'),
('Alexis', 'Mac Allister', 'Argentino'),
('Virgil', 'van Dijk', 'Neerlandes'),
('Cole', 'Palmer', 'Ingles'),
('Enzo', 'Fernandez', 'Argentino'),
('Moisés', 'Caicedo', 'Colombiano'),
('Bukayo', 'Saka', 'Ingles'),
('Martin', 'Ødegaard', 'Noruego'),
('Gabriel', 'Martinelli', 'Brasilero'),
('Emiliano', 'Martinez', 'Argentino'),
('Ollie', 'Watkins', 'Ingles'),
('Leon', 'Bailey', 'Jamaiquino'),
('Kaoru', 'Mitoma', 'Japones'),
('Julio', 'Enciso', 'Paraguayo'),
('Valentin', 'Barco', 'Argentino');

INSERT INTO CIUDAD(NOMBRE)
VALUES
('Manchester'),
('Londres'),
('Liverpool'),
('Birmingham'),
('Bristol'),
('Nottingham'),
('Brighton'),
('Newcastle upon Tyne'),
('Leicester'),
('Southampton'),
('Burnley'),
('Wolverhampton'),
('Brentford');

INSERT INTO ESTADIO(NOMBRE, ID_CIUDAD)
VALUES
('Etihad Stadium', 1),
('Old Trafford', 1),
('Stamford Bridge', 2),
('Anfield', 3),
('Villa Park', 4),
('Emirates Stadium', 2),
('Falmer Stadium', 7),
('The City Ground', 6),
('Goodinson Park', 3),
('Turf Moor', 11),
('King Power Stadium ', 9),
('St Marys Stadium', 10),
('Craven Cottage', 2),
('Amex Stadium', 7),
('Selhurst Park', 2),
('Tottenham Hotspur Stadium', 2),
('Molineux Stadium', 12),
('Brentford Community Stadium', 13),
('St James Park', 8);

INSERT INTO ENTRENADOR(NOMBRE, APELLIDO, NACIONALIDAD, TITULOS_OBTENIDOS)
VALUES
('Josep', 'Guardiola', 'Español', 37),
('Erik', 'ten Hag', 'Neerlandes', 8),
('Jürgen Norbert', 'Kloop', 'Aleman', 13),
('Mauricio Roberto', 'Pochettino', 'Argentino', 3),
('Mikel', 'Arteta', 'Español', 3),
('Unai', 'Emery', 'Español', 14),
('Thomas', 'Frank', 'Danes', 0),
('Roberto', 'De Zerbi', 'Italiano', 1),
('Vincent Jean Mpoy', 'Kompany', 'Belga', 1),
('Oliver', 'Glasner', 'Austriaco', 2),
('Sean', 'Dyche', 'Ingles', 1),
('Enzo', 'Maresca', 'Italiano', 1),
('Eddie', 'Howe', 'Ingles', 1),
('Ange', 'Postecoglou', 'Australiano', 13),
('Gary', 'Oneil', 'Ingles', 0);

INSERT INTO EQUIPO(NOMBRE, APODO, ID_CIUDAD, ID_ESTADIO, ID_ENTRENADOR)
VALUES
('Manchester City FC', 'The Citizens', 1, 1, 1),
('Manchester United FC', 'The Red Devils', 1, 2, 2),
('Liverpool FC', 'The Reds', 3, 4, 3),
('Chelsea FC', 'The Blues', 2, 3, 4),
('Arsenal FC', 'The Gunners', 2, 6, 5),
('Aston Villa FC', 'The Villans', 4, 5, 6),
('Brentford FC', 'The Bees', 2, 18, 7),
('Brighton & Hove Albion FC', 'The Seagulls', 7, 14, 8),
('Burnley FC', 'The Clarets', 11, 10, 9),
('Crystal Palace FC', 'The Eagles', 2, 15, 10),
('Everton', 'The Toffees', 3, 9, 11),
('Leicester City FC', 'The Foxes', 9, 11, 12),
('Newcastle United FC', 'The Magpies', 8, 19, 13),
('Tottenham Hotspur FC', 'Spurs', 2, 16, 14),
('Wolverhampton Wanderers FC', 'Wolves', 12, 17, 15);

INSERT INTO PARTIDO(FECHA, ID_EQUIPO_1, ID_EQUIPO_2, ID_ESTADIO)
VALUES
('2024-03-05 14:30:00', 1, 2, 1),
('2024-03-10 17:00:00', 3, 4, 4),
('2024-03-12 12:45:00', 5, 6, 5),
('2024-03-18 15:15:00', 1, 2, 2),
('2024-03-22 20:00:00', 3, 4, 3),
('2024-03-25 13:30:00', 5, 6, 6),
('2024-03-28 19:45:00', 1, 3, 1),
('2024-04-02 16:30:00', 2, 4, 2),
('2024-04-08 12:30:00', 3, 6, 4),
('2024-06-01 17:00:00', 8, 9, 14),
('2024-06-07 13:30:00', 9, 8, 10),
('2024-06-08 17:00:00', 13, 14, 16),
('2024-06-15 16:00:00', 14, 13, 19);

INSERT INTO EQUIPO_JUGADOR(NUMERO, ID_EQUIPO, ID_JUGADOR)
VALUES
(20, 1, 1),
(17, 1, 2),
(9, 1, 3),
(19, 1, 4),
(8, 2, 5),
(10, 2, 6),
(11, 3, 7),
(10, 3, 8),
(4, 3, 9),
(20, 4, 10),
(8, 4, 11),
(25, 4, 12),
(7, 5, 13),
(8, 5, 14),
(11, 5, 15),
(1, 6, 16),
(11, 6, 17),
(31, 6, 18),
(9, 8, 19),
(10, 8, 20),
(19, 8, 21);