document.getElementById('formEntrar').addEventListener('submit', function(event) {
    const idade = parseInt(document.getElementById('idade').value);

    if (idade < 12) {
        event.preventDefault();
        alert('É necessário que o usuário seja maior que 12 anos');
    }
});