let cart = JSON.parse(localStorage.getItem("cart")) || {};

function changeQuantity(name, price, change) {
    if (!cart[name]) {
        cart[name] = { quantity: 0, price: price };
    }

    cart[name].quantity += change;

    if (cart[name].quantity < 0) {
        cart[name].quantity = 0;
    }

    document.getElementById(`${name}-count`).textContent = cart[name].quantity;
    localStorage.setItem("cart", JSON.stringify(cart));
    updateTotal();
}

function updateTotal() {
    let total = 0;
    for (let item in cart) {
        total += cart[item].quantity * cart[item].price;
    }

    let totalElement = document.getElementById("totalPrice");
    if (totalElement) {
        totalElement.textContent = total.toFixed(2);
    }
}

function loadCart() {
    let cartItems = document.getElementById("cartItems");
    let totalPrice = document.getElementById("totalPrice");

    if (!cartItems || !totalPrice) return;

    cartItems.innerHTML = "";
    let total = 0;

    for (let name in cart) {
        if (cart[name].quantity > 0) {
            let div = document.createElement("div");
            div.classList.add("cart-item");
            div.innerHTML = `
                <span>${cart[name].quantity}x ${name}</span>
                <span>R$ ${(cart[name].quantity * cart[name].price).toFixed(2)}</span>
            `;
            cartItems.appendChild(div);
            total += cart[name].quantity * cart[name].price;
        }
    }
    totalPrice.textContent = total.toFixed(2);
}

function clearCart() {
    localStorage.removeItem("cart");
    cart = {};
    loadCart();
}

document.addEventListener("DOMContentLoaded", function () {
    let clearButton = document.getElementById("clearButton");
    if (clearButton) {
        clearButton.addEventListener("click", clearCart);
    }
});

loadCart();
updateTotal();
