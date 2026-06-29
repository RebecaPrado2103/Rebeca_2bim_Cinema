const express = require('express');
const os = require('os');
const { Pool } = require('pg');
require('dotenv').config();

const app = express();
const port = process.env.PORT || 3001;

// Configuração do pool de conexão com PostgreSQL
const pool = new Pool({
    host: process.env.DB_HOST,
    port: process.env.DB_PORT,
    database: process.env.DB_NAME,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
});

// Middleware para parsear JSON
app.use(express.json());

// Middleware CORS (Verificação de origem da Servidorina)
app.use((req, res, next) => {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Methods', 'GET, POST');
    res.header('Access-Control-Allow-Headers', 'Content-Type');
    next();
});

// Rota Única: Enviar e Receber Mensagens (POST)
app.post('/api/mensagens', async (req, res) => {
    try {
        const pesquisaRecebida = req.body.filme;

        const agora = new Date();
        const dataHora = `${agora.toLocaleDateString('pt-BR')} ${agora.toLocaleTimeString('pt-BR')}`;
        console.log(`Pesquisa recebida do usuário: ${pesquisaRecebida} - ${dataHora}`);

        const query = `SELECT imagem, nome_filme FROM filmes WHERE UNACCENT(UPPER(nome_filme)) LIKE UNACCENT(UPPER('%${pesquisaRecebida}%'))`;

        const result = await pool.query(query);

         if (result.rows.length > 0) {
            let mensagemResposta = `<p class="titulo-pesquisa"> ● Filmes encontrados:</p>`;

            result.rows.forEach(filmes => {
                mensagemResposta += `<div class="card-filme">
                <img src="${filmes.imagem}" width="200">
                <p>${filmes.nome_filme}</p>
            </div>`
            });

            return res.status(200).json({
                status: "sucesso",
                mensagem: mensagemResposta
            });
        }else {
            return res.status(200).json({
                status: "sucesso",
                mensagem: "Livro não encontrado"
            });
        }

    } catch (error) {
        console.error('Erro ao processar mensagem:', error);
        res.status(500).json({ status: "erro", mensagem: 'Erro interno do Servidor' });
    }
});

app.post('/api/genero', async (req, res) => {
    try {
        const pesquisaRecebida = req.body.genero;

        if (!pesquisaRecebida) {
            return res.status(400).json({ status: "erro", mensagem: "Nenhuma pesquisa feita!" });
        }

        const agora = new Date();
        const dataHora = `${agora.toLocaleDateString('pt-BR')} ${agora.toLocaleTimeString('pt-BR')}`;
        console.log(`Pesquisa recebida do usuário: ${pesquisaRecebida} - ${dataHora}`);

        if(pesquisaRecebida === 'Comedia'){
            const query = `SELECT imagem, f.nome_filme FROM filmes f, genero g
            WHERE f.id_genero = g.id_genero
            AND UPPER(g.nome_genero) = UPPER('${pesquisaRecebida}')`;

            const result = await pool.query(query);

            if (result.rows.length > 0) {
                let mensagemResposta = `<p class="titulo-pesquisa"> ● Filmes encontrados:</p>`;

                result.rows.forEach(filmes => {
                    mensagemResposta += `<div class="card-filme">
                    <img src="${filmes.imagem}" width="200">
                    <p>${filmes.nome_filme}</p>
                </div>`
                });


                return res.status(200).json({
                    status: "sucesso",
                    mensagem: mensagemResposta
                });
            }else {
                return res.status(200).json({
                    status: "sucesso",
                    mensagem: "Filme não encontrado"
                });
            }
        }

        if(pesquisaRecebida === 'Fantasia'){
            const query = `SELECT imagem, f.nome_filme FROM filmes f, genero g
            WHERE f.id_genero = g.id_genero
            AND UPPER(g.nome_genero) = UPPER('${pesquisaRecebida}')`;

            const result = await pool.query(query);

            if (result.rows.length > 0) {
                let mensagemResposta = `<p class="titulo-pesquisa"> ● Filmes encontrados:</p>`;

                result.rows.forEach(filmes => {
                    mensagemResposta += `<div class="card-filme">
                    <img src="${filmes.imagem}" width="200">
                    <p>${filmes.nome_filme}</p>
                </div>`
            });

                return res.status(200).json({
                    status: "sucesso",
                    mensagem: mensagemResposta
                });
            }else {
                return res.status(200).json({
                    status: "sucesso",
                    mensagem: "Filme não encontrado"
                });
            }
        }

        if(pesquisaRecebida === 'Animacao'){
            const query = `SELECT imagem, f.nome_filme FROM filmes f, genero g
            WHERE f.id_genero = g.id_genero
            AND UPPER(g.nome_genero) = UPPER('${pesquisaRecebida}')`;

            const result = await pool.query(query);

            if (result.rows.length > 0) {
                let mensagemResposta = `<p class="titulo-pesquisa"> ● Filmes encontrados:</p>`;

                result.rows.forEach(filmes => {
                    mensagemResposta += `<div class="card-filme">
                    <img src="${filmes.imagem}" width="200">
                    <p>${filmes.nome_filme}</p>
                </div>`
                });


                return res.status(200).json({
                    status: "sucesso",
                    mensagem: mensagemResposta
                });
            }else {
                return res.status(200).json({
                    status: "sucesso",
                    mensagem: "Filme não encontrado"
                });
            }
        }

        if(pesquisaRecebida === 'Acao'){
            const query = `SELECT imagem, f.nome_filme FROM filmes f, genero g
            WHERE f.id_genero = g.id_genero
            AND UPPER(g.nome_genero) = UPPER('${pesquisaRecebida}')`;

            const result = await pool.query(query);

            if (result.rows.length > 0) {
                let mensagemResposta = `<p class="titulo-pesquisa"> ● Filmes encontrados:</p>`;

                result.rows.forEach(filmes => {
                    mensagemResposta += `<div class="card-filme">
                    <img src="${filmes.imagem}" width="200">
                    <p>${filmes.nome_filme}</p>
                </div>`
                });

                return res.status(200).json({
                    status: "sucesso",
                    mensagem: mensagemResposta
                });
            }else {
                return res.status(200).json({
                    status: "sucesso",
                    mensagem: "Filme não encontrado"
                });
            }
        }

        if(pesquisaRecebida === 'Romance'){
            const query = `SELECT imagem, f.nome_filme FROM filmes f, genero g
            WHERE f.id_genero = g.id_genero
            AND UPPER(g.nome_genero) = UPPER('${pesquisaRecebida}')`;

            const result = await pool.query(query);

            if (result.rows.length > 0) {
                let mensagemResposta = `<p class="titulo-pesquisa"> ● Filmes encontrados:</p>`;

                result.rows.forEach(filmes => {
                    mensagemResposta += `<div class="card-filme">
                    <img src="${filmes.imagem}" width="200">
                    <p>${filmes.nome_filme}</p>
                </div>`
                });

                return res.status(200).json({
                    status: "sucesso",
                    mensagem: mensagemResposta
                });
            }else {
                return res.status(200).json({
                    status: "sucesso",
                    mensagem: "Filme não encontrado"
                });
            }
        }

        if(pesquisaRecebida === 'Aventura'){
            const query = `SELECT imagem, f.nome_filme FROM filmes f, genero g
            WHERE f.id_genero = g.id_genero
            AND UPPER(g.nome_genero) = UPPER('${pesquisaRecebida}')`;

            const result = await pool.query(query);

            if (result.rows.length > 0) {
                let mensagemResposta = `<p class="titulo-pesquisa"> ● Filmes encontrados:</p>`;

                result.rows.forEach(filmes => {
                    mensagemResposta += `<div class="card-filme">
                    <img src="${filmes.imagem}" width="200">
                    <p>${filmes.nome_filme}</p>
                </div>`
                });

                return res.status(200).json({
                    status: "sucesso",
                    mensagem: mensagemResposta
                });
            }else {
                return res.status(200).json({
                    status: "sucesso",
                    mensagem: "Filme não encontrado"
                });
            }
        }
        

    } catch (error) {
        console.error('Erro ao processar mensagem:', error);
        res.status(500).json({ status: "erro", mensagem: 'Erro interno do Servidor' });
    }
});

app.post('/api/idade', async (req, res) => {
    try {
        const pesquisaRecebida = req.body.idade;

        if (!pesquisaRecebida) {
            return res.status(400).json({ status: "erro", mensagem: "Nenhuma pesquisa feita!" });
        }

        const agora = new Date();
        const dataHora = `${agora.toLocaleDateString('pt-BR')} ${agora.toLocaleTimeString('pt-BR')}`;
        console.log(`Pesquisa recebida do usuário: ${pesquisaRecebida} - ${dataHora}`);

        if(pesquisaRecebida === 'Livre'){
            const query = `SELECT imagem, nome_filme FROM filmes
            WHERE faixa_etaria is NULL`;

            const result = await pool.query(query);

            if (result.rows.length > 0) {
                let mensagemResposta = `<p class="titulo-pesquisa"> ● Filmes encontrados:</p>`;

                result.rows.forEach(filmes => {
                    mensagemResposta += `<div class="card-filme">
                    <img src="${filmes.imagem}" width="200">
                    <p>${filmes.nome_filme}</p>
                </div>`
                });

                return res.status(200).json({
                    status: "sucesso",
                    mensagem: mensagemResposta
                });
            }else {
                return res.status(200).json({
                    status: "sucesso",
                    mensagem: "Filme não encontrado"
                });
            }
        }

        if(pesquisaRecebida === '10'){
            const query = `SELECT DISTINCT imagem, f.nome_filme FROM filmes f, genero g
            WHERE faixa_etaria = 10`;

            const result = await pool.query(query);

            if (result.rows.length > 0) {
                let mensagemResposta = `<p class="titulo-pesquisa"> ● Filmes encontrados:</p>`;

                result.rows.forEach(filmes => {
                    mensagemResposta += `<div class="card-filme">
                    <img src="${filmes.imagem}" width="200">
                    <p>${filmes.nome_filme}</p>
                </div>`
                });

                return res.status(200).json({
                    status: "sucesso",
                    mensagem: mensagemResposta
                });
            }else {
                return res.status(200).json({
                    status: "sucesso",
                    mensagem: "Filme não encontrado"
                });
            }
        }

        if(pesquisaRecebida === '12'){
            const query = `SELECT DISTINCT imagem, f.nome_filme FROM filmes f, genero g
            WHERE faixa_etaria = 12`;

            const result = await pool.query(query);

            if (result.rows.length > 0) {
                let mensagemResposta = `<p class="titulo-pesquisa"> ● Filmes encontrados:</p>`;

                result.rows.forEach(filmes => {
                    mensagemResposta += `<div class="card-filme">
                    <img src="${filmes.imagem}" width="200">
                    <p>${filmes.nome_filme}</p>
                </div>`
                });

                return res.status(200).json({
                    status: "sucesso",
                    mensagem: mensagemResposta
                });
            }else {
                return res.status(200).json({
                    status: "sucesso",
                    mensagem: "Filme não encontrado"
                });
            }
        }

    } catch (error) {
        console.error('Erro ao processar mensagem:', error);
        res.status(500).json({ status: "erro", mensagem: 'Erro interno do Servidor' });
    }
});

app.listen(port, '0.0.0.0', () => {
    console.log(`Servidorina atenta na porta ${port}`);
    console.log(`Rota disponível:`);
    console.log(`  POST http://localhost:${port}/api/mensagens - Enviar Bilhetes`);
});