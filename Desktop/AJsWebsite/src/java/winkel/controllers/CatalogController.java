package winkel.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import winkel.data.*;
import winkel.business.*;

public class CatalogController extends HttpServlet {
    
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         doPost(request, response);       

    }

    @Override
    public void doPost(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException {
        //get path information
        String requestURI = request.getRequestURI();
        String url = showProduct(request, response);
        
        getServletContext()
            .getRequestDispatcher(url)
            .forward(request, response);
        

    }
    
    
    private String showProduct(HttpServletRequest request, HttpServletResponse response) {
        
        
        //get the product path, ie. product/CP01
        String productCode = request.getPathInfo();
        
        if (productCode != null) {
            
            //get path information after requestURI
            productCode = productCode.substring(1);
            //call database
            Product product = ProductDB.selectProduct(productCode);
            
            //create a cookie to set a product attribute so I can access the correct product code from the addToCart button
            HttpSession session = request.getSession();
            session.setAttribute("product", product);
        }        
        
        
        return "/catalog/" + productCode + "/index.jsp";
        
    }
    

}

