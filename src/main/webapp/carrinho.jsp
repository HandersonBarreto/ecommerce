<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carrinho de Compras</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div id="header-area">
        <div id="logo-area">
           <h1>Ferragista<span class="white"> PRIMAVERA</span></h1>
        </div>
        <div id="menu-area">
            <a href="index.jsp">Lista de Produtos</a>
            <a href="carrinho.jsp">Carrinho de Compras</a>
        </div>
    </div>

    <div id="main-area">
        <h2>Carrinho de Compras</h2>
        <div id="cartItems"></div>

        <div class="cart-summary">
            <button id="clearButton">Limpar Carrinho</button>
            <div class="total">Total: R$ <span id="totalPrice">0.00</span></div>
        </div>
    </div>

    <div id="footer">
        <p>Todos os direitos reservados</p>
    </div>

    <script src="script.js"></script>
</body>
</html>
