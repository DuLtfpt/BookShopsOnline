/*
 * Copyright(C)2021, FPT University
 * SWP 391
 * 
 * Record of change
 * DATE             VERSION             AUTHOR              DESCRIPTION
 * 2022-02-07         1.0               VUDMHE140017      First Implement
 */
package controller;

import dao.CategoryDAO;
import dao.ProductDAO;
import interfaceDAO.IProductDAO;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;
import model.Product;

/**
 * The class contain method doGet used ProductDAO to get products then forward
 * to LandingPage
 *
 * @author vudm
 */
@WebServlet(name = "HomeController", urlPatterns = {"/home"})
public class HomeController extends HttpServlet {

    /**
     * Get all book,best seller and highest price of products from database then
     * setAttribute and forward to LangdingPage.jsp This method uses
     * <code>ProductDAO</code> to get all product on home page for user
     *
     * @param request is HttpServletRequest
     * @param response is HttpServletResponse
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            IProductDAO productDAO = new ProductDAO();

            String indexPage = request.getParameter("index");
            if (indexPage == null) {
                indexPage = "1";
            }
            int index = Integer.parseInt(indexPage);
            int count = productDAO.getTotalProduct();//7
            int endPage = count / 3;//7/3=2
            if (count % 3 != 0) {
                endPage++;
            }
            List<Product> listPage = productDAO.pagingProduct(index);
            request.setAttribute("listPage", listPage);
//            request.setAttribute("list", books);
            request.setAttribute("endPage", endPage);

            ArrayList<Product> products = productDAO.getAllProducts();//get all products

            ArrayList<Product> bestSellerProducts = productDAO.getBestSellerProducts();//get 3 most purchased products

            ArrayList<Product> highestPricerProducts = productDAO.getHighestPriceProducts();//Get 2 highest price products
            CategoryDAO db = new CategoryDAO();
            //          get value form databse
            List<Category> list = db.getAllCategories();

            request.setAttribute("list", list);
            request.setAttribute("books", products);
            request.setAttribute("bestSellerBooks", bestSellerProducts);
            request.setAttribute("highestPricerBooks", highestPricerProducts);
            request.getRequestDispatcher("view/landingPage.jsp").forward(request, response);
        } catch (Exception ex) {
            request.setAttribute("error", "Sorry! Error occurred, THAT PAGE DOESN'T EXIST OR IS UNAVABLE.");
            request.getRequestDispatcher("error/error.jsp").forward(request, response);
        }
    }
}
