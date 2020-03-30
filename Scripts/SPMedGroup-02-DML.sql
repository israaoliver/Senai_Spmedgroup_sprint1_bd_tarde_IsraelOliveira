USE SP_MedGroup_Tarde 
GO
INSERT INTO Enderecos (Estado,Cidade,Bairro,Rua, Numero, CEP)
VALUES ('SP','São Paulo','Capos Elíseos','Av. Barão Limeira','532','01202000'),
	('SP','São Paulo','Vila Clamentino','Rua Estado de Israel','240','04022000'),
	('SP','São Paulo','Bela Vista','Av. Paulista','1578','01310200'),
	('SP','São Paulo','Indianópolis','Av. Ibirapuera','2927','04029200'),
	('SP','Barueri','Vila Sao Jorge','R. Vitória','120','06402030'),
	('SP','Ribeirão Pires','Santa Luzia','R. Ver. Geraldo de Camargo','66','09405380'),
	('SP','São Paulo','Indianópolis','Alameda dos Arapanés','945','04524001'),
	('SP','Barueri','Vila Universal','R Sao Antonio','232','06407140');

INSERT INTO Clinicas(IdEndereco,RazaoSocial,CNPJ,HrAbertura,HrFechamento)
VALUES (1,'SP Medical Group','86400902000130','08:00','18:00');

INSERT INTO NiveisAcesso(Titulo)
VALUES ('Administrador'),
	('Medico'),
	('Paciente');

INSERT INTO Usuarios (IdNivelAcesso, Email, Senha)
VALUES (1,'Adm@Email.com','Adm132'),
		(2,'ricardo.lemos@spmedicalgroup.com.br','qwe'),
	    (2,'roberto.possarle@spmedicalgroup.com.br','eqwd'),
        (2,'helena.souza@spmedicalgroup.com.br','xdq'),
        (3,'ligia@gmail.com	adas','asdas'),
        (3,'alexandre@gmail.com','dasdw'),
        (3,'fernando@gmail.com','qdw' ),
        (3,'henrique@gmail.com','ssada'),
        (3,'joao@hotmail.com','dadw'),
        (3,'bruno@gmail.com','dqwd'),
        (3,'mariana@outlook.com','adad');


INSERT INTO Administrador (IdUsuario,Nome)
VALUES (1,'Adm');

INSERT INTO Especialidades(Titulo)
VALUES ('Acupuntura'),
	('Anestesiologia'),
	('Angiologia'),
	('Cardiologia'),
	('Cirurgia Cardiovascular'),
	('Cirurgia da Mão'),
	('Cirurgia do Aparelho Digestivo'),
	('Cirurgia Geral'),
	('Cirurgia Pediátrica'),
	('Cirurgia Plástica'),
	('Cirurgia Torácica'),
	('Cirurgia Vascular'),
	('Dermatologia'),
	('Radioterapia'),
	('Urologia'),
	('Pediatria'),
	('Psiquiatria');
	
INSERT INTO Medicos(IdEspecialidade,IdClinica,IdUsuario,Nome,Crm)
VALUES (2,1,2,'Ricardo Lemos','54356-SP'),
	(17,1,3,'Roberto Possarle','53452-SP'),
	(16,1,4,'Helena Strada','65463-SP');

INSERT INTO  Pacientes(IdUsuario,IdEndereco,Nome,DataNacimento,Telefone,RG,CPF)
VALUES (5,2,'Ligia','13/10/1983','11 3456-7654','435225435','94839859000'),
	(6,3,'Alexandre','23/07/2001','11 98765-6543','326543457','73556944057'),
	(7,4,'Fernando','10/10/1978','11 97208-4453','546365253','16839338002'),
	(8,5,'Henrique','13/10/1985','11 3456-6543','543663625','14332654765'),
	(9,6,'João','27/08/1975','11 7656-6377','325444441','91305348010'),
	(10,7,'Bruno','21/03/1972','11 95436-8769','545662667','79799299004'),
	(11,8,'Mariana','05/03/2018','11 7345-3457','545662668','13771913039');

INSERT INTO Status(Titulo)
VALUES ('Agendada'),
	('Realizada'),
	('Cancelada');

INSERT INTO Consultas(IdStatus,IdMedico,IdPaciente,DataConsulta,HoraConsulta,Descricao)
VALUES (2,1,7,'20/01/2020','15:00',''),
	(3,3,2,'06/01/2020','10:00',''),
	(2,3,3,'07/02/2020','11:00',''),
	(2,3,2,'06/02/2018','10:00',''),
	(3,2,4,'07/02/2019','11:00',''),
	(1,1,7,'08/03/2020','15:00',''),
	(1,2,4,'09/03/2020','11:00','');

