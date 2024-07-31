
Quinta solicitação

• Escreva a consulta 'SQL' para listar todos os alunos que cursaram alguma disciplina 'do' ano 2000 'até' 2020

SELECT DISTINCT a.id_aluno, a.nome
FROM Alunos a
JOIN Matriculas m ON a.id_aluno = m.id_aluno
JOIN Disciplinas d ON m.id_disciplina = d.id_disciplina
WHERE d.ano BETWEEN 2000 AND 2020;

//Um breve relato do codigo escrito acima:
	'SELECT DISTINCT a.id_aluno, a.nome:' Seleciona os IDs e nomes dos alunos de forma distinta para evitar duplicatas na lista.
	
	'FROM Alunos a:' Define a tabela Alunos como a tabela principal.
	
	'JOIN Matriculas m ON a.id_aluno = m.id_aluno:' Faz uma junção com a tabela Matriculas para relacionar os alunos com 
	'as' disciplinas em que estão matriculados.
	
	'JOIN Disciplinas d ON m.id_disciplina = d.id_disciplina:' Faz uma junção com a tabela Disciplinas para acessar 
	'as' informações das disciplinas.
	
	'WHERE d.ano BETWEEN 2000 AND 2020:' Filtra as disciplinas para considerar apenas aquelas que ocorreram entre 2000 e 2020.