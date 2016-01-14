package winkel.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import winkel.business.*;
import winkel.data.*;


public class OrderController extends HttpServlet {
   
    
    @Override
    public void doPost(HttpServletRequest request, 
            HttpServletResponse response)
            throws ServletException, IOException {
        String requestURI = request.getRequestURI();
        String url = "";
        
        if (requestURI.endsWith("/addItem")) {
            url = addItem(request, response);

        } else if (requestURI.endsWith("/userInfo")) {
            url = userInfo(request, response);  
            
        } else if (requestURI.endsWith("/placeOrder")) {
            url = placeOrder(request, response);
        }
        

        
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
    
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        doPost(request, response);
        
    }
    
    //add itmem from product catalog to cart 
    
    private String addItem(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        // if a cart attribut doesn't exist, one must be created
        
        
        Cart cart = (Cart) session.getAttribute("cart");
        
        if (cart == null) {
            cart = new Cart();
        }
        
        //get the prosuct code attribute from the catalog/index
        
        String productCode = request.getParameter("productCode");
        
        //create a product object using the DB connector and a JavaBean
        
        Product product = ProductDB.selectProduct(productCode);
        
        //create a line item object with a product parameter for easy reference when counting products
        //add a line item object to the cart
        
        //figure out how to create Line Items and set it to appear on cart.jsp
        
        if (product != null) {
            LineItem lineItem = new LineItem();
            lineItem.setProduct(product);
            cart.addItem(lineItem);
        }
        
        //add cart object as a session attribute
        
        session.setAttribute("cart", cart);
        
        return "/webpages/cart.jsp";
    }
    
    private String userInfo(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();

        //create a user object and store it in the session cookie
        
        User user = (User) session.getAttribute("user");
        
        session.setAttribute("user", user);

        return "/webpages/user.jsp";
    }

    private String placeOrder(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();

        
        //get all the parameters the user stored in the user.jsp
        
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String telephone = request.getParameter("telephone");
        String address = request.getParameter("address");
        String suburb = request.getParameter("suburb");
        String city = request.getParameter("city");
        String province = request.getParameter("province");
        String postalCode = request.getParameter("postalCode");
        String country = request.getParameter("country");
        String visaOrMaster = request.getParameter("visaOrMaster");
        String cardNumber = request.getParameter("cardNumber");
        String expirationMonth = request.getParameter("expirationMonth");
        String expirationYear = request.getParameter("expirationYear");        
       
         //get the user object stored in the userInfo method
        
        User user = (User) session.getAttribute("user");
        if (user == null) {
            user = new User();
        }

            //update user object

            user.setFirstName(firstName);
            user.setLastName(lastName);
            user.setEmail(email);
            user.setTelephone(telephone);
            user.setAddress(address);
            user.setSuburb(suburb);
            user.setCity(city);
            user.setProvince(province);
            user.setPostalCode(postalCode);
            user.setCountry(country); 
            user.setVisaOrMaster(visaOrMaster);
            user.setCardNumber(cardNumber);
            user.setExpirationMonth(expirationMonth);
            user.setExpirationYear(expirationYear);
            
            //update database
            
            UserDB.insert(user);

        //craete an invoice object
           
        //Invoice invoice = (Invoice) session.getAttribute("invoice");   
            
            
        session.setAttribute("user", user);
        
        return "/webpages/invoice.jsp";
                
    }
    
    
    
}
