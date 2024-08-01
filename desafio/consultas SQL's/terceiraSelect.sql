
Terceira solicitação

• Escreva a consulta 'SQL' para listar 'as' disciplinas que todos os professores lecionam

SELECT d.nome_disciplina
FROM Disciplinas d
GROUP BY d.id_disciplina, d.nome_disciplina
HAVING COUNT(DISTINCT d.id_professor) = (SELECT COUNT(*) FROM Professores);
