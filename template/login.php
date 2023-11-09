<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/login.css">
    <title>Login</title>
</head>
<?php
session_start();
require('../conexao/conexao.php');

// Processamento do formulário de login
if (isset($_POST['loginEmail']) && isset($_POST['loginPassword'])) {
    $email = $_POST['loginEmail'];
    $senha = $_POST['loginPassword'];

    // Use instruções preparadas para evitar SQL Injection
    $stmt = $conn->prepare("SELECT * FROM usuarios WHERE email = ?");
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $hashed_password = $row['senha_hash'];

        if (password_verify($senha, $hashed_password)) {
            $_SESSION['loggedin'] = true;
            $_SESSION['email'] = $email;
            header("Location: home.html"); // Página para redirecionar após o login
            exit();
        } else {
            echo "Login falhou. Por favor, verifique seu e-mail e senha.";
        }
    } else {
        echo "Login falhou. Por favor, verifique seu e-mail e senha.";
    }

    $stmt->close();
}

// Processamento do formulário de cadastro
if (isset($_POST['name']) && isset($_POST['email']) && isset($_POST['password'])) {
    $nome = $_POST['name'];
    $email = $_POST['email'];
    $senha = $_POST['password'];

    // Use instruções preparadas para evitar SQL Injection
    $stmt = $conn->prepare("INSERT INTO usuarios (nome, email, senha_hash) VALUES (?, ?, ?)");
    $hashed_password = password_hash($senha, PASSWORD_DEFAULT);
    $stmt->bind_param("sss", $nome, $email, $hashed_password);

    if ($stmt->execute()) {
        echo "Cadastro realizado com sucesso!";
    } else {
        echo "Erro ao cadastrar: " . $stmt->error;
    }

    $stmt->close();
}

$conn->close();
?>

<body>
    <div class="conteudo">
        <input type="checkbox" class="checkbox" id="checkbox">
        <label for "checkbox"></label>
        <button id="toggleButton">Alternar para Cadastro</button>
        <div class="card-3d-wrap">
            <div class="card-3d-wrapper">
                <div class="card-front">
                    <form class="form" method="post">
                        <h2>Login</h2>
                        <div class="form-group">
                            <label for="loginEmail">Email:</label>
                            <input type="email" id="loginEmail" name="loginEmail" required>
                        </div>
                        <div class="form-group">
                            <label for="loginPassword">Senha:</label>
                            <input type="password" id="loginPassword" name="loginPassword" required>
                        </div>
                        <button type="submit" class="CadEnt">Entrar</button>
                    </form>
                </div>
                <div class="card-back">
                    <form class="form" method="post">
                        <h2>Cadastro</h2>
                        <div class="form-group">
                            <label for="name">Nome:</label>
                            <input type="text" id="name" name="name" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email:</label>
                            <input type="email" id="email" name="email" required>
                        </div>
                        <div class="form-group">
                            <label for="RM">RM:</label>
                            <input type="text" id="RM" name="RM">
                        </div>
                        <div class="form-group">
                            <label for="password">Senha:</label>
                            <input type="password" id="password" name="password" required>
                        </div>
                        <button type="submit" class="CadEnt">Cadastrar</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
<script>
    const checkbox = document.getElementById("checkbox");
    const toggleButton = document.getElementById("toggleButton");

    // Defina o estado inicial do checkbox como desmarcado (login)
    checkbox.checked = false;

    toggleButton.addEventListener("click", function () {
        // Alterne o estado do checkbox ao clicar no botão
        checkbox.checked = !checkbox.checked;
    });
</script>

</html>
