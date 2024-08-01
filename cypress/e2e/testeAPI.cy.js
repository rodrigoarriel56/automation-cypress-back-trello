describe('Validar a criacao de um board - Apenas API', () => {

    //ATENÇÃO, POR MOTIVO DE SEGURANÇA, NÃO ESQUECER DE DE PREENCHER AS CREDENCIAIS DE CHAVE E TOKEN 
const key = ''
const token = ''
let quadroID;
let listaID;
let cartaoID;

it('Cadastrar quadro novo', () => {

    cy.request({
    method: 'POST',
    url: 'https://api.trello.com/1/boards/',
    qs: {
        name: 'AUTOMAÇÃO DE QA',
        key: key,
        token: token,
    },
    }).then((response) => {
    expect(response.status).to.eq(200);
    quadroID = response.body.id;
    cy.log(`ID do quadro criado: ${response.body.id}`);
    });

});

it('Cadastrar lista', () => {

    cy.request({
    method: 'POST',
    url: `https://api.trello.com/1/boards/${quadroID}/lists`,
    qs: {
        name: 'LISTA DE TIKET DE AUTOMAÇÃO',
        key: key,
        token: token,
    },
    }).then((response) => {
    expect(response.status).to.eq(200);
    listaID = response.body.id;
    cy.log(`ID da lista criada: ${response.body.id}`);
    });
});

it('Cadastrar cartão', () => {

    cy.request({
    method: 'POST',
    url: `https://api.trello.com/1/cards`,
    qs: {
        name: 'CADASTRAR ISSUE',
        idList: listaID,
        key: key,
        token: token,
    },
    }).then((response) => {
    expect(response.status).to.eq(200);
    cartaoID = response.body.id;
    cy.log(`ID do card criado: ${response.body.id}`);
    });
});

it('Excluir card', () => {

    cy.request({
    method: 'DELETE',
    url: `https://api.trello.com/1/cards/${cartaoID}`,
    qs: {
        key: key,
        token: token,
    },
    }).then((response) => {
    expect(response.status).to.eq(200);;
    });
});

it('Excluir quadro', () => {

    cy.request({
    method: 'DELETE',
    url: `https://api.trello.com/1/boards/${quadroID}`,
    qs: {
        key: key,
        token: token,
    },
    }).then((response) => {
    expect(response.status).to.eq(200);;
    });
});

});
