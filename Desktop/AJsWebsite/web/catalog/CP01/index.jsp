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
                
                Do you ever wish you could enjoy some delicious roadkill just the way momma used to
                make it? Well, fear not Jimminy Bob, Southern Surprise has created the
                Potted Possum sauce just for you. All you need is to pick up some roadkill,
                throw it on the barbeque and baste it using the all new and improved potted possum sauce!
            
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