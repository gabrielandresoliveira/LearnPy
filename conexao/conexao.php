<?php
$servername = "localhost"; // Nome do servidor MySQL (geralmente 'localhost')
$username = "root"; // Seu nome de usuário MySQL
$password = ""; // Sua senha MySQL
$database = "meu_banco_de_dados"; // Nome do seu banco de dados

// Criar conexão
$conn = new mysqli($servername, $username, $password, $database);

// Verificação de falha
if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}
?>
