# 🎬 Projeto Cinema

## Meu Projeto

No meu projeto, eu quis representar um site onde o usuário pesquisa o nome de um filme e recebe como resposta o filme desejado. 

Ele possui dois htmls, dois js, e dois css.
	
Mais detalhes:

- O usuário começa na página ‘Entrar’ onde digita seu nome, o cpf e a idade;
- Depois de ter realizado esse processo, ao clicar no botão ‘Entrar’, ele vai ser direcionado para a página ‘Site Cinema’;
- Lá o usuário poderá pesquisar os filmes que deseja e que estão disponíveis no projeto. Ele poderá pesquisar por três maneiras diferentes:
    - Pelo nome do filme;
    - Pelo gênero do filme;
    - Pela classificação indicativa;

Além disso, o usuário pode vizualizar a sinopse do filme.

## Tecnologias

- HTML5
- CSS3
- JavaScript
- Node.js
- Express
- PostgreSQL

## Banco de Dados

No banco de dados foram criadas três tabelas:

- **genero**:
    - id_genero INTEGER PRIMARY KEY;
    - nome_genero VARCHAR(80);

- **filmes**:
    - id_filme INTEGER PRIMARY KEY;
    - nome_filme VARCHAR(200);
    - id_genero INTEGER FOREIGN KEY;
    - faixa_etaria INTEGER;
    - imagem VARCHAR(200);

- **sinopse**
    - id_sinopse INTGER PRIMARY KEY;
    - filme_sinopse VARCHAR(900);
    - id_filme INTEGER FOREIGN KEY;

## Rotas

| Método | Rota | Função |
|---------|------|---------|
| POST | /mensagem | Pesquisa por nome |
| POST | /genero | Pesquisa por gênero |
| POST | /idade | Pesquisa por classificação |
| POST | /sinopse | Mostra a sinopse do filme|

## Como Funciona
### Relação entre 'Entar.html' e 'Cinema.html'

Quando o usuário digita todas as informações pedidas em ‘Entrar’ e clica no botão,
o valor informado em nome vai ser ‘levado’ para ‘Cinema.html’ através do método GET, estudado no bimestre anterior.
Esse nome vai ser mostrado no h3 do ‘Cinema.html’.

### Funcionamento de ‘Cinema’

Na página ‘Cinema.html’, as pesquisas do usuário funcionarão através do JSON, do fetch() e do POST.

O JSON é o ‘pacote’ onde vão estar as pesquisas do usuário, o fetch é o ‘motoboy’ que leva e traz a caixinha entre o site
(Front-end) e o servidor(Back-end), por fim, o POST é o comando que diz: ‘Leve esse pacote e adicione lá no servidor’.

E lá no servidor serão realizadas as consultas necessárias para obter a resposta correta.


## Como executar

1. Clone o repositório

```bash
git clone https://github.com/seuusuario/projeto.git
```

2. Instale as dependências

```bash
npm install
```

3. Configure o arquivo `.env`

```env
DB_HOST=localhost
DB_PORT=5432
DB_NAME=cinema
DB_USER=postgres
DB_PASSWORD=123456
PORT=3001
```

4. Execute o banco de dados.

5. Inicie o servidor

```bash
node server.js
```
## Desenvolvedora
**Rebeca Prado da Silva**