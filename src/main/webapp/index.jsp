<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping List</title>
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
       <h2 id="title">Shopping List</h2>
       <div class="product">
            <span> Id 0002</span>
            <span>Cookie - $1.00</span>
            <span>Mabel Coconut Cookie 300g</span>
            <div class="quantity">
                <button onclick="changeQuantity('Cookie', 1.00, -1)">-</button>
                <span id="Cookie-count">0</span>
                <button onclick="changeQuantity('Cookie', 1.00, 1)">+</button>
            </div>
        </div>

        <div class="product">
            <span> Id 0003</span>
            <span>Milk - $6.00</span>
            <span>Long Life Whole Milk 1L</span>
            <div class="quantity">
                <button onclick="changeQuantity('Milk', 6.00, -1)">-</button>
                <span id="Milk-count">0</span>
                <button onclick="changeQuantity('Milk', 6.00, 1)">+</button>
            </div>
        </div>

        <div class="product">
            <span> Id 0004</span>
            <span>Detergent - $5.00</span>
            <span>Tixan Ypê Powder Soap 800g</span>
            <div class="quantity">
                <button onclick="changeQuantity('Detergent', 5.00, -1)">-</button>
                <span id="Detergent-count">0</span>
                <button onclick="changeQuantity('Detergent', 5.00, 1)">+</button>
            </div>
        </div>

        <div class="product">
            <span> Id 0005</span>
            <span>Vegetable - $2.00</span>
            <span>English Potato 1kg</span>
            <div class="quantity">
                <button onclick="changeQuantity('Vegetable', 2.00, -1)">-</button>
                <span id="Vegetable-count">0</span>
                <button onclick="changeQuantity('Vegetable', 2.00, 1)">+</button>
            </div>
        </div>

        <div class="product">
            <span> Id 0006</span>
            <span>Coffee - $50.00</span>
            <span>Pilão Ground Coffee</span>
            <div class="quantity">
                <button onclick="changeQuantity('Coffee', 50.00, -1)"> - </button>
                <span id="Coffee-count">0</span>
                <button onclick="changeQuantity('Coffee', 50.00, 1)"> + </button>
            </div>
        </div>

        <div>
            <a href="carrinho.jsp" class="cart-button">Ir para o Carrinho</a>
        </div>
    </div>

    <div id="footer">
        <p>All rights reserved</p>
    </div>
    <script src="script.js"></script>
</body>
</html>
