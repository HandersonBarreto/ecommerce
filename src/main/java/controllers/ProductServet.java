package controllers;

import dao.ProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Product;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ProductServlet", value = {"/products", "/products/add", "/products/edit", "/products/delete", "/products/search"})
public class ProductServet extends HttpServlet {
    private ProductDAO productDAO = new ProductDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getServletPath();

        if ("/products".equals(action)) {
            request.setAttribute("products", productDAO.findAll());
            request.getRequestDispatcher("/WEB-INF/views/products/list.jsp").forward(request, response);
        } else if ("/products/add".equals(action)) {
            request.getRequestDispatcher("/WEB-INF/views/products/form.jsp").forward(request, response);
        } else if ("/products/edit".equals(action)) {
            Long id = Long.parseLong(request.getParameter("id"));
            request.setAttribute("product", productDAO.findById(id));
            request.getRequestDispatcher("/WEB-INF/views/products/form.jsp").forward(request, response);
        } else if ("/products/delete".equals(action)) {
            Long id = Long.parseLong(request.getParameter("id"));
            productDAO.delete(id);
            response.sendRedirect(request.getContextPath() + "/products");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getServletPath();

        if ("/products/add".equals(action) || "/products/edit".equals(action)) {
            Product product;

            if ("/products/edit".equals(action)) {
                Long id = Long.parseLong(request.getParameter("id"));
                product = productDAO.findById(id);
            } else {
                product = new Product();
            }

            product.setName(request.getParameter("name"));
            product.setDescription(request.getParameter("description"));
            product.setPrice(new BigDecimal(request.getParameter("price")));
            product.setStockQuantity(Integer.parseInt(request.getParameter("stockQuantity")));
            product.setImgUrl(request.getParameter("imgUrl"));

            if ("/products/add".equals(action)) {
                productDAO.save(product);
            } else {
                productDAO.update(product);
            }

            response.sendRedirect(request.getContextPath() + "/products");
        }
    }
}