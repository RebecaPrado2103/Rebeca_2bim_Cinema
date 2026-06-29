document.getElementById('formEntrar').addEventListener('submit', function(event) {
    const idade = parseInt(document.getElementById('idade').value);

    if (idade < 8) {
        event.preventDefault();
        alert('Não podemos realizar o cadastro de menores de 8 anos');
    }
});