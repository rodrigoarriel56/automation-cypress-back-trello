Feature: Transferência Bancária

  Feature: Transferência Bancária

  Scenario: Tentar realizar uma transferência com saldo insuficiente
    
	Given que o usuário está logado na conta bancária
    And o usuário não tem saldo suficiente
    When o usuário preenche os detalhes da transferência com:
      | Campo       | Valor          |
      | Conta Dest. | 123456-7       |
      | Valor       | 5000,00        |
    And o usuário tenta confirmar a transferência
    Then uma mensagem de erro "Saldo insuficiente" deve ser exibida
    And a transferência não deve ser concluída
