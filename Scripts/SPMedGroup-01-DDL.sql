CREATE DATABASE SP_MedGroup_Tarde
GO
Use SP_MedGroup_Tarde
GO
CREATE TABLE Enderecos(
    IdEndereco INT PRIMARY KEY IDENTITY,
    Estado VARCHAR(255) NOT NULL,
    Cidade VARCHAR(255) NOT NULL,
    Bairro VARCHAR(255) NOT NULL,
    Rua VARCHAR(255) NOT NULL,
    Numero VARCHAR(255) NOT NULL,
    CEP CHAR(8) NOT NULL
);

CREATE TABLE Especialidades(
    IdEspecialidade INT PRIMARY KEY IDENTITY,
    Titulo VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE Status(
    IdStatus INT PRIMARY KEY IDENTITY,
    Titulo VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE Clinicas(
    IdClinica INT PRIMARY KEY IDENTITY,
    IdEndereco INT FOREIGN KEY REFERENCES Enderecos (IdEndereco),
    RazaoSocial VARCHAR(255) NOT NULL,
    CNPJ CHAR(14) NOT NULL UNIQUE,
    HrAbertura TIME NOT NULL,
    HrFechamento TIME NOT NULL
);

CREATE TABLE NiveisAcesso(
    IdNivelAcesso INT PRIMARY KEY IDENTITY,
    Titulo VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE Usuarios(
	IdUsuario INT PRIMARY KEY IDENTITY,
	IdNivelAcesso INT FOREIGN KEY REFERENCES NiveisAcesso (IdNivelAcesso),
	Email VARCHAR(255) NOT NULL UNIQUE,
	Senha VARCHAR(255) NOT NULL	
);


CREATE TABLE Medicos(
    IdMedico INT PRIMARY KEY IDENTITY,
    IdEspecialidade INT FOREIGN KEY REFERENCES Especialidades (IdEspecialidade),
    IdClinica INT FOREIGN KEY REFERENCES Clinicas (IdClinica),
    IdUsuario INT FOREIGN KEY REFERENCES Usuarios (IdUsuario),
    Nome VARCHAR(255) NOT NULL,
    Crm VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE Pacientes(
    IdPaciente INT PRIMARY KEY IDENTITY,
    IdUsuario INT FOREIGN KEY REFERENCES Usuarios (IdUsuario),
    IdEndereco INT FOREIGN KEY REFERENCES Enderecos (IdEndereco),
    Nome VARCHAR(255) NOT NULL,
    DataNacimento DATE NOT NULL,
    Telefone VARCHAR(255) NOT NULL,
    RG CHAR(9) NOT NULL UNIQUE,
    CPF CHAR(11) NOT NULL UNIQUE
);

CREATE TABLE Administrador(
    IdAdm INT PRIMARY KEY IDENTITY,
    IdUsuario INT FOREIGN KEY REFERENCES Usuarios (IdUsuario),
    Nome VARCHAR(255) NOT NULL,
);

CREATE TABLE Consultas(
    IdConsulta INT PRIMARY KEY IDENTITY,
    IdStatus INT FOREIGN KEY REFERENCES Status (IdStatus),
    IdMedico INT FOREIGN KEY REFERENCES Medicos (IdMedico),
    IdPaciente INT FOREIGN KEY REFERENCES Pacientes (IdPaciente),
    DataConsulta DATE NOT NULL,
    HoraConsulta TIME NOT NULL,
    Descricao VARCHAR(255)
);

