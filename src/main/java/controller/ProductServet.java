package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Product;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/ProductServelet")
public class ProductServet extends HttpServlet {
    private static final List<Product> productList = new ArrayList<>();
    private static final List<Product> bag = new ArrayList<>();


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String action = request.getParameter("action");

        if ("add".equals(action)) {
            addToCart(request);
        } else if ("remove".equals(action)) {
            removeFromCart(request);
        } else if ("checkout".equals(action)) {
            bag.clear();
        }

        request.setAttribute("products", productList);
        request.setAttribute("cart", bag);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    private void addToCart(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        for (Product p : productList) {
            if (p.getId() == id) {
                bag.add(p);
                break;
            }
        }
    }

    private void removeFromCart(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        bag.removeIf(p -> p.getId() == id);
    }
}