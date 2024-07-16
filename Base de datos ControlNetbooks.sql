-- Base de datos para el controlar el retiro de netbooks de la escula ETN7 dolores lavalle.

CREATE DATABASE ControlNetbooks;
USE ControlNetbooks;

CREATE TABLE Netbooks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero_identificador VARCHAR(50) NOT NULL,
    descripcion_defectos TEXT,
    disponible BOOLEAN DEFAULT TRUE
);

CREATE TABLE Prestamos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    netbook_id INT NOT NULL,
    hora_retiro TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    hora_devolucion TIMESTAMP,
    FOREIGN KEY (netbook_id) REFERENCES Netbooks(id)
);

INSERT INTO Prestamos (netbook_id)
VALUES (1); -- Suponiendo que la netbook con ID 1 es retirada

UPDATE Prestamos
SET hora_devolucion = CURRENT_TIMESTAMP
WHERE id = 1; -- Suponiendo que el préstamo con ID 1 es devuelto

SELECT id, numero_identificador, descripcion_defectos, disponible
FROM Netbooks;

SELECT id, hora_retiro, hora_devolucion
FROM Prestamos
WHERE netbook_id = 1;

-- inserto primeros registros en la tabla netbooks
INSERT INTO Netbooks (numero_identificador, descripcion_defectos)
VALUES 
    ('NB001', 'Pantalla rota, teclado dañado'),
    ('NB002', 'Batería agotada'),
    ('NB003', 'Sin defectos visibles');

INSERT INTO Prestamos (netbook_id, hora_retiro)
VALUES (1, '2024-07-04 09:00:00'); -- Retiro de la netbook con ID 1 a las 9:00 AM

SELECT * FROM Prestamos; -- Para ver todos los registros de la tabla prestamos.
SELECT * FROM Netbooks; -- Para ver todos los registros de la tabla netbooks.

-- Inserto registros en la tabla Netbooks
INSERT INTO Netbooks (numero_identificador, descripcion_defectos)
VALUES 
    ('NB004', 'Sin defectos visibles'),
    ('NB005', 'Teclado con algunas teclas pegajosas'),
    ('NB006', 'Batería con duración reducida'),
    ('NB007', 'Pantalla con píxeles muertos'),
    ('NB008', 'Sin sonido en los altavoces'),
    ('NB009', 'Disco duro lento'),
    ('NB010', 'Problemas intermitentes de conexión WiFi'),
    ('NB011', 'Pantalla táctil no funciona correctamente'),
    ('NB012', 'Teclado numérico no funciona'),
    ('NB013', 'Carcasa rayada'),
    ('NB014', 'Problemas de carga'),
    ('NB015', 'Lector de tarjetas SD no detecta tarjetas'),
    ('NB016', 'Altavoces distorsionados'),
    ('NB017', 'Problemas de calentamiento excesivo'),
    ('NB018', 'Ventilador ruidoso'),
    ('NB019', 'Pantalla con manchas visibles'),
    ('NB020', 'Teclado retroiluminado defectuoso'),
    ('NB021', 'Problemas de reinicio inesperado'),
    ('NB022', 'Trackpad no responde'),
    ('NB023', 'Puertos USB con problemas de conexión'),
    ('NB024', 'Sin cámara web funcional'),
    ('NB025', 'Pantalla táctil con sensibilidad irregular'),
    ('NB026', 'Batería que no carga completamente'),
    ('NB027', 'Teclado con teclas desgastadas'),
    ('NB028', 'Disco duro con sectores defectuosos'),
    ('NB029', 'Problemas de configuración de BIOS'),
    ('NB030', 'Sin red detectada por la tarjeta Ethernet'),
    ('NB031', 'Pantalla con flickering'),
    ('NB032', 'Teclado con iluminación LED intermitente');

SELECT * FROM Netbooks;


-- Inserto préstamos para algunas netbooks
INSERT INTO Prestamos (netbook_id, hora_retiro)
VALUES 
    (2, '2024-07-05 10:30:00'), -- Prestamo para NB005
    (6, '2024-07-06 11:15:00'), -- Prestamo para NB009
    (10, '2024-07-07 12:00:00'), -- Prestamo para NB011
    (14, '2024-07-08 13:45:00'), -- Prestamo para NB015
    (18, '2024-07-09 14:30:00'), -- Prestamo para NB019
    (22, '2024-07-10 15:15:00'), -- Prestamo para NB023
    (26, '2024-07-11 16:00:00'), -- Prestamo para NB027
    (30, '2024-07-12 17:00:00'); -- Prestamo para NB031
    
SELECT * FROM Prestamos;


