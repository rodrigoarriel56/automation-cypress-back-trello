
Primeiro solicitação

•	Escreva a consulta 'SQL' para listar o nome de todos os alunos matriculados na disciplina de Cálculo 'do' professor João

SELECT a.nome FROM Alunos a
		JOIN Matriculas m ON a.id_aluno = m.id_aluno
			JOIN Disciplinas d ON m.id_disciplina = d.id_disciplina
		JOIN Professores p ON d.id_professor = p.id_professor
	WHERE d.nome_disciplina = 'Cálculo'
AND p.nome_professor = 'João';
