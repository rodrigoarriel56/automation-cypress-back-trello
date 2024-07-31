describe('Teste Técnico Astro - Apenas API', () => {

    //ATENÇÃO, POR MOTIVO DE SEGURANÇA, NÃO ESQUECER DE DE PREENCHER AS CREDENCIAIS DE CHAVE E TOKEN 
const key = ''
const token = ''
let quadroID;
let listaID;
let cartaoID;

it('Cadastrar um quadro', () => {

    cy.request({
    method: 'POST',
    url: 'https://api.trello.com/1/boards/',
    qs: {
        name: 'ASTRO TESTE QUADRO',
        key: key,
        token: token,
    },
    }).then((response) => {
    expect(response.status).to.eq(200);
    quadroID = response.body.id;
    cy.log(`ID do quadro criado: ${response.body.id}`);
    });

});

it('Cadastrar uma lista', () => {

    cy.request({
    method: 'POST',
    url: `https://api.trello.com/1/boards/${quadroID}/lists`,
    qs: {
        name: 'ASTRO TESTE LISTA',
        key: key,
        token: token,
    },
    }).then((response) => {
    expect(response.status).to.eq(200);
    listaID = response.body.id;
    cy.log(`ID da lista criada: ${response.body.id}`);
    });
});

it('Cadastrar um cartão', () => {

    cy.request({
    method: 'POST',
    url: `https://api.trello.com/1/cards`,
    qs: {
        name: 'ASTRO TESTE CARTÃO',
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

it('Excluir um card', () => {

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

it('Excluir um quadro', () => {

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
