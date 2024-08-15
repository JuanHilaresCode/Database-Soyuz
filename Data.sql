-- INSERTAR DATOS EN LA TABLA BUS
INSERT INTO bus (id, brand, model, plate, manufacturing, ability, status) VALUES
(1, 'Scania', 'K360', 'SOU1234', '2022-06-15', 40, 'Active'),
(2, 'Marcopolo', 'G7', 'SOU5678', '2021-09-20', 45, 'Active'),
(3, 'Hino', 'Ranger', 'SOU9012', '2023-02-10', 35, 'Inactive'),
(4, 'Volvo', 'B8R', 'SOU3456', '2020-11-25', 30, 'Active'),
(5, 'Mercedes-Benz', 'O500', 'SOU7890', '2022-07-30', 42, 'Active');

-- INSERTAR DATOS EN LA TABLA DRIVERS
INSERT INTO drivers (id, bus_id, name, last_name, address, dni, status) VALUES
(1, 1, 'Carlos', 'Quispe', 'Jr. Puno 123', '76543210', 'Active'),
(2, 2, 'Ana', 'Vásquez', 'Av. Grau 456', '87654321', 'Active'),
(3, 3, 'Javier', 'Condori', 'Calle La Libertad 789', '34567890', 'Inactive');

-- INSERTAR DATOS EN LA TABLA PASSENGERS
INSERT INTO passengers (id, name, last_name, phone, dni_ruc, address) VALUES
(1, 'Sofía', 'Fernández', '987654321', '12345678', 'Jr. Lima 123'), 
(2, 'Ricardo', 'Paredes', '987123456', '20123456789', 'Av. San Martín 456'),
(3, 'Carmen', 'Morales', '456789123', '23456789', 'Calle Arequipa 789');

-- INSERTAR DATOS EN LA TABLA PAYMENT_METHOD
INSERT INTO payment_method (id, name) VALUES
(1, 'Efectivo'),
(2, 'Yape'),
(3, 'Plin');

-- INSERTAR DATOS EN LA TABLA ROUTES
INSERT INTO routes (id, origin, destination, distance, course, description) VALUES
(1, 'Lima', 'Chiclayo', 760.00, 'North', 'Ruta desde Lima a Chiclayo'),
(2, 'Chiclayo', 'Trujillo', 220.00, 'South', 'Ruta desde Chiclayo a Trujillo'),
(3, 'Trujillo', 'Piura', 190.00, 'East', 'Ruta desde Trujillo a Piura');


-- INSERTAR DATOS EN LA TABLA TRIPS
INSERT INTO trips (id, drivers_id, routes_id, passengers_id, payment_method_id, name, phone, dni_ruc, legal_name, address, origin, destination, course, payment_method) VALUES
(1, 1, 1, 1, 1, 'Sofía Fernández', '987654321', '12345678', 'Sofía Fernández S.A.', 'Jr. Lima 123', 'Lima', 'Chiclayo', 'North', 'Efectivo'),
(2, 2, 2, 2, 2, 'Ricardo Paredes', '987123456', '20123456789', 'Ricardo Paredes S.A.', 'Av. San Martín 456', 'Chiclayo', 'Trujillo', 'South', 'Yape'),
(3, 3, 3, 3, 3, 'Carmen Morales', '456789123', '23456789', 'Carmen Morales S.A.', 'Calle Arequipa 789', 'Trujillo', 'Piura', 'East', 'Plin');


select * from trips;