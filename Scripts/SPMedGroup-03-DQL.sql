USE SP_MedGroup_Tarde
GO
SELECT Pacientes.Nome as 'NomePaciente',Pacientes.CPF, Medicos.Nome as 'NomeMedico',Consultas.DataConsulta,Consultas.HoraConsulta,Enderecos.Bairro,Enderecos.Rua ,Enderecos.Numero as 'NumeroDaCasa'
FROM Pacientes 
INNER JOIN Enderecos ON Pacientes.IdEndereco = Enderecos.IdEndereco 
INNER JOIN Consultas ON Pacientes.IdPaciente = Consultas.IdPaciente
INNER JOIN Medicos ON Consultas.IdMedico = Medicos.IdMedico;
