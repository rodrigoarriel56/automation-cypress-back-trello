
Feature: Transferência Bancária

  Scenario: Tentar realizar uma transferência sem preencher todos os campos

    Given que o usuário está logado na conta bancária
    And o usuário tem saldo suficiente
    When o usuário preenche os detalhes da transferência com:
      | Campo       | Valor          |
      | Conta Dest. | 123456-7       |
    And o usuário tenta confirmar a transferência
    Then uma mensagem de erro "Todos os campos devem ser preenchidos" deve ser exibida
    And a transferência não deve ser concluída
