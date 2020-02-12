USE SP_MedGroup_Tarde
GO
SELECT Pacientes.Nome as 'NomePaciente',Pacientes.CPF, Medicos.Nome as 'NomeMedico',Consultas.DataConsulta,Consultas.HoraConsulta,Enderecos.Bairro,Enderecos.Rua ,Enderecos.Numero as 'NumeroDaCasa'
FROM Pacientes 
INNER JOIN Enderecos ON Pacientes.IdEndereco = Enderecos.IdEndereco 
INNER JOIN Consultas ON Pacientes.IdPaciente = Consultas.IdPaciente
INNER JOIN Medicos ON Consultas.IdMedico = Medicos.IdMedico;


 -- CALCULA A QUANTIDADE DE USUARIOS DAS TRES TABELAS
CREATE PROCEDURE QtdeUsers
AS 
DECLARE @PACI INT, 
		@MEDI INT,
		@ADM INT

SELECT @PACI = COUNT(Pacientes.IdPaciente) FROM Pacientes 
SELECT @MEDI = COUNT(Medicos.IdMedico) FROM Medicos
SELECT @ADM = COUNT(Administrador.IdAdm) FROM Administrador
SELECT @PACI + @MEDI + @ADM as TOTAL

EXECUTE QtdeUsers


-- CONVERTE A DATA DO USUARIO

SELECT CONVERT(VARCHAR(10), Pacientes.DataNacimento , 103)  FROM Pacientes;

--CALCULA A IDADE
CREATE PROCEDURE SUAIDADE
@DATA DATE
AS
SELECT DATEDIFF(YEAR , @DATA, GETDATE())

EXECUTE SUAIDADE '03/09/1999'
--CALCULA A IDADE DO PACIENTE
SELECT FLOOR(DATEDIFF(DAY, Pacientes.DataNacimento, GETDATE()) / 365.25) AS IDADE FROM Pacientes

--PROCURA DE ACORDO COM O ID DA ESPECIALIDADE
CREATE PROCEDURE Especialidade_id
@ESPECIALIDADE INT
AS
SELECT Especialidades.Titulo, Medicos.Nome,Medicos.Email, Medicos.Crm FROM Medicos
INNER JOIN Especialidades ON Especialidades.IdEspecialidade = Medicos.IdEspecialidade
WHERE Medicos.IdEspecialidade = @ESPECIALIDADE

EXECUTE Especialidade_id 16
--RETORNA A IDADE DO PACIENTE DE ACORDO COM O ID ESPECIFICADO
CREATE PROCEDURE IdadePaciente
@Id_Paciente INT
AS
SELECT Pacientes.Nome , CONVERT(VARCHAR(10), Pacientes.DataNacimento , 103) as DataNaciemnto,FLOOR(DATEDIFF(DAY, Pacientes.DataNacimento, GETDATE()) / 365.25) AS IDADE FROM Pacientes
WHERE IdPaciente = @Id_Paciente

EXECUTE IdadePaciente 5

