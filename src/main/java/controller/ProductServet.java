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

        switch (action) {
            case "add":
                addToBag(request);
                break;
            case "remove":
                removeFromBag(request);
                break;
            case "checkout":
                clearBag();
                break;
            default:
                request.setAttribute("error", "Ação inválida");
                break;
        }

        prepareResponse(request, response);
    }

    private void addToBag(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        for (Product p : productList) {
            if (p.getId() == id) {
                bag.add(p);
                break;
            }
        }
    }

    private void removeFromBag(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        bag.removeIf(p -> p.getId() == id);
    }

    private void clearBag() {
        bag.clear();
    }

    private void prepareResponse(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("products", productList);
        request.setAttribute("bag", bag);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }


}