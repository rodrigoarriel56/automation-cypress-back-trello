
Feature: Transferência Bancária

  Scenario: Realizar uma transferência entre contas da mesma agência

    Given que o usuário está logado na conta bancária
    And o usuário tem saldo suficiente
    When o usuário preenche os detalhes da transferência com:
      | Campo         | Valor          |
      | Conta Dest.   | 765432-1       |
      | Valor         | 200,00         |
      | Agência Dest. | 0001           |
    And o usuário confirma a transferência
    Then a transferência deve ser concluída com sucesso
    And o saldo do usuário deve ser atualizado
    And uma confirmação da transferência deve ser exibida
