<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div id="header-area">
        <div id="logo-area">
           <h1>Mini Market<span class="white"> Zé</span></h1>
        </div>
        <div id="menu-area">
            <a href="index.jsp"> Product List</a>
            <a href="carrinho.jsp">Shopping Cart</a>
        </div>
    </div>
    <div id="main-area">
        <div id="cart">
            <h2 id="title"> Shopping Cart</h2>
            <div id="cartItems"></div>
        </div>
        <div>
            <button id="clearButton">Clear Cart</button>
            <div class="total">Total: $<span id="totalPrice">0.00</span></div>
            <a href="carrinho.jsp" class="cart-button">Checkout</a>
        </div>
    </div>

    <div id="footer">
        <p>All rights reserved</p>
    </div>
    <script src="script.js"></script>
</body>
</html>