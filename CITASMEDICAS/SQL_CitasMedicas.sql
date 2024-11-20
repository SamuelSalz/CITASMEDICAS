/*create database db_Citas_Medicas;
CREATE SCHEMA Citas_Medicas;*/
/*
create table Medicos (
    IdMedico VARCHAR(20) NOT NULL PRIMARY KEY,   
    NombreMedico VARCHAR(100) NOT NULL,  
    Especialidad VARCHAR(50) NOT NULL,    
    HorarioMedico VARCHAR(50),              
    CorreoElectronico VARCHAR(100),        
    NumeroContacto VARCHAR(15) 
);

create table Pacientes  (
    Nombre VARCHAR(100) NOT NULL,                          
    Edad INT NOT NULL,                                     
    TipoPlan ENUM('Particular', 'Subsidiado') NOT NULL,    
    Alergias VARCHAR(255),                                
    EnfermedadesCronicas VARCHAR(255),                    
    Cedula VARCHAR(20) NOT NULL PRIMARY KEY,        
    TipoAtencion ENUM('Virtual', 'Presencial') NOT NULL,  
    CorreoElectronico VARCHAR(100),                       
    NumeroContacto VARCHAR(15)  
);

create table Citas (
    IdCita INT AUTO_INCREMENT PRIMARY KEY,  
    Fecha DATE NOT NULL,
    Hora TIME NOT NULL,
    IdMedico VARCHAR(20) NOT NULL,
    Cedula_Paciente VARCHAR(20) NOT NULL,
    Observaciones TEXT,
    Estado ENUM('Cancelada', 'Activa', 'Pendiente') NOT NULL,
	FOREIGN KEY (IdMedico) REFERENCES Medicos(IdMedico),
	FOREIGN KEY (Cedula_Paciente) REFERENCES Pacientes(Cedula)
    
);





INSERT INTO Medicos (IdMedico, NombreMedico, Especialidad, HorarioMedico, CorreoElectronico, NumeroContacto)
VALUES 
('M001', 'Dr. Juan Pérez', 'Cardiología', 'Lunes a Viernes, 8am - 3pm', 'juan.perez@hospital.com', '555-1234'),
('M002', 'Dra. María López', 'Pediatría', 'Martes y Jueves, 9am - 4pm', 'maria.lopez@hospital.com', '555-5678'),
('M003', 'Dr. Carlos García', 'Dermatología', 'Lunes a Viernes, 10am - 5pm', 'carlos.garcia@hospital.com', '555-9101');

INSERT INTO Pacientes (Nombre, Edad, TipoPlan, Alergias, EnfermedadesCronicas, Cedula, TipoAtencion, CorreoElectronico, NumeroContacto)
VALUES 
('Ana Fernández', 30, 'Particular', 'Ninguna', 'Hipertensión', 12345, 'Presencial', 'ana.fernandez@gmail.com', '555-1212'),
('Luis Martínez', 45, 'Subsidiado', 'Penicilina', 'Diabetes', 54321, 'Virtual', 'luis.martinez@hotmail.com', '555-3434'),
('Sofía González', 60, 'Particular', 'Polvo', 'Asma', 22222, 'Presencial', 'sofia.gonzalez@yahoo.com', '555-5656');

INSERT INTO Citas (Fecha, Hora, IdMedico, Cedula_Paciente, Observaciones, Estado)
VALUES 
('2024-09-25', '10:30:00', 'M001', 12345678, 'Consulta de revisión', 'Pendiente'),
('2024-09-26', '11:00:00', 'M002', 87654321, 'Consulta de control pediátrico', 'Activa'),
('2024-09-27', '09:00:00', 'M003', 13579246, 'Consulta dermatológica', 'Cancelada');




INSERT INTO Citas (Fecha, Hora, IdMedico, Cedula_Paciente, Observaciones, Estado)
VALUES 
('2024-10-05', '09:00:00', 'M001', '12345', 'Chequeo general', 'Pendiente'),
('2024-10-06', '10:30:00', 'M002', '54321', 'Consulta de alergias', 'Activa'),
('2024-10-07', '14:00:00', 'M003', '22222', 'Consulta dermatológica', 'Pendiente'),
('2024-10-08', '16:00:00', 'M001', '12345', 'Consulta de seguimiento de hipertensión', 'Pendiente'),
('2024-10-09', '11:00:00', 'M002', '54321', 'Control de crecimiento infantil', 'Activa'),
('2024-10-10', '13:00:00', 'M003', '22222', 'Evaluación de eczema', 'Cancelada');
*/

				/*2 consultas agregación*/
                /* total de citas por médico */
SELECT 
    m.NombreMedico,
    COUNT(c.IdCita) AS TotalCitas
FROM 
    Medicos m
inner JOIN 
    Citas c ON m.IdMedico = c.IdMedico
GROUP BY 
    m.NombreMedico
HAVING 
    COUNT(c.IdCita) > 1;  
 
 
 
 
 /* citas activas por médico */
SELECT m.NombreMedico,
    COUNT(c.IdCita) AS TotalCitasActivas
FROM 
	Medicos m
inner JOIN Citas c ON m.IdMedico = c.IdMedico
WHERE c.Estado = 'Activa'
GROUP BY m.NombreMedico
HAVING 
    COUNT(c.IdCita) > 0;



				/*2 consultas subqueries*/
                
  /*  citas por médico */              
SELECT m.NombreMedico,
    (SELECT COUNT(*) 
     FROM Citas c 
     WHERE c.IdMedico = m.IdMedico) AS Total_Citas
FROM Medicos m;
    
    
/* última citas */
SELECT 
    p.Nombre,
    (SELECT CONCAT(c.Fecha, ' ', c.Hora) 
     FROM Citas c 
     WHERE c.Cedula_Paciente = p.Cedula 
     ORDER BY c.Fecha DESC, c.Hora DESC 
     LIMIT 1) AS Ultima_Cita
FROM 
    Pacientes p;

/*Eliminar todas las citas canceladas*/

DELETE FROM Citas
WHERE Estado = 'Cancelada';