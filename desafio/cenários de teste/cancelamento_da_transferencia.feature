
Feature: Transferência Bancária

  Scenario: Cancelar uma transferência antes de confirmar

    Given que o usuário está logado na conta bancária
    And o usuário começou a preencher os detalhes da transferência com:
      | Campo       | Valor         |
      | Conta Dest. | 123456-7      |
      | Valor       | 100,00        |
    When o usuário decide cancelar a transferência
    Then a tela de transferência deve ser limpa
    And nenhuma transferência deve ser registrada
