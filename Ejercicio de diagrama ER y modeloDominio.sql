Drop database TechSolutions


CREATE DATABASE TechSolutions;
Use TechSolutions;

CREATE TABLE Cargos(
ID_Cargo int primary key auto_increment,
Cargo Varchar(50)
);

CREATE TABLE Departamentos(
ID_Depa int primary key auto_increment,
Nombre_Depa varchar(50),
Ubicacion varchar(50)
);

CREATE TABLE Proyectos(
Num_Proyecto int primary key auto_increment,
Nombre varchar(50)
);

CREATE TABLE Empleados(
Num_Empleados int primary key auto_increment,
Nombre Varchar(50),
Apellido Varchar(50),
Salario Double,
Fecha_Inicio date,
ID_Cargo int,
constraint FK_CargoEmpleado Foreign key(ID_Cargo)
references Cargos(ID_Cargo),
ID_Depa int,
constraint FK_EmpleadoDepa foreign key(ID_Depa)
references  Departamentos(ID_Depa)
);


CREATE TABLE Trabaja(
Num_Proyecto int,
Num_Empleados int,
constraint FK_ProyectoEmpleado foreign key(Num_Proyecto)
references  Proyectos(Num_Proyecto),
constraint FK_EmpleadoProyecto foreign key(Num_Empleados)
references  Empleados(Num_Empleados)
);

Select * from Departamentos