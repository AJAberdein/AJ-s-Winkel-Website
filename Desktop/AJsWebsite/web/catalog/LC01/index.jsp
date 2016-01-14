<!-- import the JSTL tag library -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/includes/header.jsp" />


<section>
    
    <div class="background-item">
        <div class="container">
            <br>
            <br>        
            <p>
            
                <jsp:include page="/includes/product_table.jsp" />
        
                 <!--put put the product description in the database and call from the product table-->
               
                
                This unique item was forged by Kylo Ren himself when 
                he needed to find a receptacle to transfer Spotted Dick from his plate to his
                mouth during the resistance attacks on Jakku, while still looking menacing.
                Enjoy a mouth full of shrimp fried noodles that becones to every whim you can 
                muster whilst using the force. Just don't let Jean-Luc Picard find out!
            
            </p>
    
            <br/>
                
            <!--post a request using the form tags, use JSTL for absolute path--> 
            <form method="post" action="<c:url value='/order/addItem'/>">
        
                    <!-- get an EL attribute and property: product object and it's product code from the Catalog Controller Servlet -->
                    <!--need the product attribute when posting a request-->
                    <input type="hidden" name="productCode" value="${product.code}" >
                    
                    <!--create a product attribute and set it to 1-->
                    <input type="hidden" name="quantity" value="1">
        
                    <!--click image to send to OrderController servlet-->
                    <input type="image" src="<c:url value='/images/addToCart.png'/>" 
                    width="250" alt="Add to Cart">

            </form>
            
            
            
            
            
            
        </div>
    </div>
    
</section>
    


<jsp:include page="/includes/footer.jsp" /> 