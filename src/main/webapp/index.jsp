<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ferragista Primavera - Lista de Produtos</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header id="header-area">
        <div id="logo-area">
           <h1>Ferragista<span class="white"> PRIMAVERA</span></h1>
        </div>
        <nav id="menu-area">
            <a href="index.jsp">Lista de Produtos</a>
            <a href="carrinho.jsp">Carrinho de Compras</a>
        </nav>
    </header>

    <main id="main-area">
       <h2 id="title">Lista de Produtos</h2>

       <section class="product">
            <img src="./img/vitro.png" alt="Vitrô Basculante" class="product-image">
            <div class="product-info">
                <h3>Vitrô Basculante Com Grade 60X40 POP</h3>
                <p class="price">R$ 99,90</p>
                <p class="description">
                    Vitrô tipo basculante projetante, em alumínio, medindo 60 x 40 cm,
                    em formato RETANGULAR, COM GRADE, produzido com perfis de alumínio linha modular (REFORÇADO).
                </p>
                <div class="quantity">
                    <button onclick="changeQuantity('vitro', 99.90, -1)">-</button>
                    <span id="vitro-count">0</span>
                    <button onclick="changeQuantity('vitro', 99.90, 1)">+</button>
                </div>
            </div>
        </section>

        <section class="product">
            <img src="./img/argamassa.png" alt="Argamassa Porcelanato Interno" class="product-image">
            <div class="product-info">
                <h3>Argamassa Porcelanato Interno</h3>
                <p class="price">R$ 23,90</p>
                <p class="description">
                    Embalagem: saco plástico de 20 kg. Consumo médio: 4,5 kg/m² em camada simples ou 8 kg/m² em camada dupla.
                    Validade: 12 meses a partir da data de fabricação. Cor: Cinza.
                </p>
                <div class="quantity">
                    <button onclick="changeQuantity('argamassa', 23.90, -1)">-</button>
                    <span id="argamassa-count">0</span>
                    <button onclick="changeQuantity('argamassa', 23.90, 1)">+</button>
                </div>
            </div>
        </section>

        <section class="product">
            <img src="./img/torneira.png" alt="Torneira Bica Móvel" class="product-image">
            <div class="product-info">
                <h3>Torneira Bica Móvel 1/4 De Volta Lavatório Soft - 2190 C14</h3>
                <p class="price">R$ 66,90</p>
                <p class="description">
                    Torneira de bancada com grande resistência e qualidade, design moderno e acabamento cromado premium.
                    Seu acionamento em alavanca combinado ao mecanismo 1/4" de Volta é muito eficaz e de simples manejo além de proporcionar grande economia de água se tornando uma bela opção de compra
                </p>
                <div class="quantity">
                    <button onclick="changeQuantity('torneira', 66.90, -1)">-</button>
                    <span id="torneira-count">0</span>
                    <button onclick="changeQuantity('torneira', 66.90, 1)">+</button>
                </div>
            </div>
        </section>

        <section class="product">
            <img src="./img/cuba.jpeg" alt="Cuba de Apoio Quadrada" class="product-image">
            <div class="product-info">
                <h3>Cuba de Apoio Quadrada com Mesa 35x35 - ICA 12</h3>
                <p class="price">R$ 429,90</p>
                <p class="description">
                    Disponível nas cores Branco, Palha, Areia, Cinza Claro e Preto. Ideal para projetos modernos e sofisticados.

                    Medidas:
                    - Comprimento: 35 cm
                    - Altura: 35 cm
                    - Largura: 13,5 cm
                </p>
                <div class="quantity">
                    <button onclick="changeQuantity('cuba', 429.90, -1)">-</button>
                    <span id="cuba-count">0</span>
                    <button onclick="changeQuantity('cuba', 429.90, 1)">+</button>
                </div>
            </div>
        </section>

        <div class="cart-container">
            <a href="carrinho.jsp" class="cart-button">Ir para o Carrinho</a>
        </div>
    </main>

    <footer id="footer">
        <p>Todos os direitos reservados</p>
    </footer>

    <script src="script.js"></script>
</body>
</html>
