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
VALUES (2,'SP Medical Group','86400902000130','08:00','18:00');

INSERT INTO NiveisAcesso(Titulo)
VALUES ('Administrador'),
	('Medico'),
	('Paciente');

INSERT INTO Administrador (IdNivelAcesso,Nome, Email, Senha)
VALUES (1,'Adm','Adm@Email.com','asd');

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

INSERT INTO Medicos(IdEspecialidade,IdClinica,IdNivelAcesso,Nome,Email,Senha,Crm)
VALUES (2,2,2,'Ricardo Lemos','ricardo.lemos@spmedicalgroup.com.br','qwe','54356'),
	(17,2,2,'Roberto Possarle','roberto.possarle@spmedicalgroup.com.br','eqwd','53452'),
	(16,2,2,'Helena Strada','helena.souza@spmedicalgroup.com.br','swq','65463');

INSERT INTO  Pacientes(IdNivelAcesso,IdEndereco,Nome,Email,Senha,DataNacimento,Telefone,RG,CPF)
VALUES (3,3,'Ligia','ligia@gmail.com','adaw','13/10/1983','11 3456-7654','435225435','94839859000'),
	(3,4,'Alexandre','alexandre@gmail.com','dqdas','23/07/2001','11 98765-6543','326543457','73556944057'),
	(3,5,'Fernando','fernando@gmail.com','wqdqwa','10/10/1978','11 97208-4453','546365253','16839338002'),
	(3,6,'Henrique','henrique@gmail.com','dqw','13/10/1985','11 3456-6543','543663625','14332654765'),
	(3,7,'João','joao@hotmail.com','cas','27/08/1975','11 7656-6377','325444441','91305348010'),
	(3,8,'Bruno','bruno@gmail.com','dqca','21/03/1972','11 95436-8769','545662667','79799299004'),
	(3,9,'Mariana','mariana@outlook.com','dwqd','05/03/2018','11 7345-3457','545662668','13771913039');

INSERT INTO Status(Titulo)
VALUES ('Agendada'),
	('Realizada'),
	('Cancelada');

INSERT INTO Consultas(IdStatus,IdMedico,IdPaciente,DataConsulta,HoraConsulta,Descricao)
VALUES (2,4,7,'20/01/2020','15:00',''),
	(3,3,2,'06/01/2020','10:00',''),
	(2,3,3,'07/02/2020','11:00',''),
	(2,3,2,'06/02/2018','10:00',''),
	(3,2,4,'07/02/2019','11:00',''),
	(1,4,7,'08/03/2020','15:00',''),
	(1,2,4,'09/03/2020','11:00','');

