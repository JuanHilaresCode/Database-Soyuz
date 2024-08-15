-- CREAR BASE DE DATOS
CREATE DATABASE dbsoyuz;

--USAR BASE DE DATOS
use dbsoyuz;


-- CREAR TABLA RUTAS
CREATE TABLE bus (
    id int  NOT NULL,
    brand varchar(50)  NOT NULL,
    model varchar(45)  NOT NULL,
    plate char(7)  NOT NULL,
    manufacturing date  NOT NULL,
    ability int  NOT NULL,
    status char(8)  NOT NULL,
    CONSTRAINT bus_pk PRIMARY KEY  (id)
);

-- CREAR TABLA CONDUCTORES
CREATE TABLE drivers (
    id int  NOT NULL,
    bus_id int  NOT NULL,
    name varchar(50)  NOT NULL,
    last_name varchar(50)  NOT NULL,
    address varchar(40)  NOT NULL,
    dni char(8)  NOT NULL,
    status char(8)  NOT NULL,
    CONSTRAINT drivers_pk PRIMARY KEY  (id)
);

-- CREAR TABLA PASAJEROS
CREATE TABLE passengers (
    id int  NOT NULL,
    name varchar(50)  NOT NULL,
    last_name varchar(50)  NOT NULL,
    phone varchar(15)  NOT NULL,
    dni_ruc varchar(11)  NOT NULL,
    address varchar(25)  NOT NULL,
    CONSTRAINT passengers_pk PRIMARY KEY  (id)
);

-- CREAR TABLA METODO DE PAGO
CREATE TABLE payment_method (
    id int  NOT NULL,
    name varchar(50)  NOT NULL,
    CONSTRAINT payment_method_pk PRIMARY KEY  (id)
);

-- CREAR TABLA RUTAS
CREATE TABLE routes (
    id int  NOT NULL,
    origin varchar(50)  NOT NULL,
    destination varchar(50)  NOT NULL,
    distance decimal(10,2)  NOT NULL,
    course char(10)  NOT NULL,
    description varchar(50)  NOT NULL,
    CONSTRAINT routes_pk PRIMARY KEY  (id)
);

-- CREAR TABLA VIAJES
CREATE TABLE trips (
    id int  NOT NULL,
    drivers_id int  NOT NULL,
    routes_id int  NOT NULL,
    passengers_id int  NOT NULL,
    payment_method_id int  NOT NULL,
    name varchar(50)  NOT NULL,
    phone varchar(15)  NOT NULL,
    dni_ruc varchar(11)  NOT NULL,
    legal_name char(35)  NOT NULL,
    address varchar(25)  NOT NULL,
    origin varchar(50)  NOT NULL,
    destination varchar(50)  NOT NULL,
    course char(10)  NOT NULL,
    payment_method char(10)  NOT NULL,
    CONSTRAINT trips_pk PRIMARY KEY  (id)
);

-- RELACIONES ENTRE TABLAS

ALTER TABLE drivers ADD CONSTRAINT drivers_bus
    FOREIGN KEY (bus_id)
    REFERENCES bus (id);


ALTER TABLE trips ADD CONSTRAINT trips_drivers
    FOREIGN KEY (drivers_id)
    REFERENCES drivers (id);


ALTER TABLE trips ADD CONSTRAINT trips_passengers
    FOREIGN KEY (passengers_id)
    REFERENCES passengers (id);


ALTER TABLE trips ADD CONSTRAINT trips_routes
    FOREIGN KEY (routes_id)
    REFERENCES routes (id);


ALTER TABLE trips ADD CONSTRAINT trips_payment_method
    FOREIGN KEY (payment_method_id)
    REFERENCES payment_method (id);