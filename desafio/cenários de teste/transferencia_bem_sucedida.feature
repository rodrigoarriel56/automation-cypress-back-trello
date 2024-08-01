Feature: Transferência Bancária

  Scenario: Realizar uma transferência bem-sucedida

    Given que o usuário está logado na conta bancária
    And o usuário tem saldo suficiente
    When o usuário preenche os detalhes da transferência com:
      | Campo       | Valor          |
      | Conta Dest. | 123456-7       |
      | Valor       | 100,00         |
      | Descrição   | Pagamento teste|
    And o usuário confirma a transferência
    Then a transferência deve ser concluída com sucesso
    And o saldo do usuário deve ser atualizado
    And uma confirmação da transferência deve ser exibida