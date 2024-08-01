
Segunda solicitação

• Escreva a consulta 'SQL' para exibir a quantidade de alunos por disciplinas

SELECT d.nome_disciplina, COUNT(m.id_aluno) AS quantidade_alunos
FROM Disciplinas d
JOIN Matriculas m ON d.id_disciplina = m.id_disciplina
GROUP BY d.id_disciplina, d.nome_disciplina;
