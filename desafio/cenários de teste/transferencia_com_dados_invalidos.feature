
  Feature: Transferência Bancária

  Scenario: Tentar realizar uma transferência com dados inválidos
    
	Given que o usuário está logado na conta bancária
    And o usuário tem saldo suficiente
    When o usuário preenche os detalhes da transferência com:
      | Campo       | Valor          |
      | Conta Dest. | abc123         |
      | Valor       | 100,00         |
    And o usuário tenta confirmar a transferência
    Then uma mensagem de erro "Dados inválidos" deve ser exibida
    And a transferência não deve ser concluída
