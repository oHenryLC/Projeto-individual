var database = require("../database/config");

function buscarUltimasMedidas(personagem, limite_linhas) {

    instrucaoSql = ''

    if (process.env.AMBIENTE_PROCESSO == "producao") {
        instrucaoSql = `SELECT COUNT(*) AS Preferidos, personagem FROM usuario GROUP BY personagem;`;
    } else if (process.env.AMBIENTE_PROCESSO == "desenvolvimento") {
        instrucaoSql = `SELECT COUNT(*) AS Preferidos, personagem FROM usuario GROUP BY personagem;`;
    } else {
        console.log("\nO AMBIENTE (produção OU desenvolvimento) NÃO FOI DEFINIDO EM app.js\n");
        return
    }

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function buscarMedidasEmTempoReal(personagem) {

    instrucaoSql = ''

    if (process.env.AMBIENTE_PROCESSO == "producao") {
        instrucaoSql = `SELECT COUNT(*) AS Preferidos, personagem FROM usuario GROUP BY personagem;`;

    } else if (process.env.AMBIENTE_PROCESSO == "desenvolvimento") {
        instrucaoSql = `SELECT COUNT(*) AS Preferidos, personagem FROM usuario GROUP BY personagem;`;
    } else {
        console.log("\nO AMBIENTE (produção OU desenvolvimento) NÃO FOI DEFINIDO EM app.js\n");
        return
    }

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}


module.exports = {
    buscarUltimasMedidas,
    buscarMedidasEmTempoReal
}
