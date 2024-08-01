
Quarta solicitação

• Escreva a consulta 'SQL' que exibe o total de professores

SELECT * FROM Professores;
//Apresenta um total de registros na tabela


SELECT COUNT(*) AS total_professores
FROM Professores;

//Um breve relato do pq executar o comando acima:
	Conta o número total de registros na tabela Professores e o resultado é rotulado como total_professores.
	'FROM' Professores: Especifica a tabela da qual você está contando os registros.