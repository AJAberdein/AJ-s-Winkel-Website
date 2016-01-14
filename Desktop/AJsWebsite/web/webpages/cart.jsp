<!-- import the JSTL tag library -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/includes/header.jsp" />

<section>
        <br>
        <br>
<h1 style="text-align: center">Your Shopping Cart</h1>
<c:forEach var="item" items="${cart.items}">
   
<div class="background-item" style="font-size: 20px">
    <div class="container">

        

        <div class="col-md-3">
            <p>Quantity</p>
            <form action="" method="post">
                <input type=text name="quantity" value="${item.quantity}" style="color:black">
            </form>
        </div>

        <div class="col-md-3">  
            <p>Description</p>
            <p>${item.product.description}</p>
            <a href="<c:url value='/catalog'/>">
                <img src="../images/ContinueShopping.jpg" alt="Continue Shopping" width="120em"/>
            </a>
        </div>

        <div class="col-md-3">
            <p>Price</p>
            <p>${item.product.priceCurrencyFormat}</p>
            <form action="<c:url value='/order/userInfo'/>" method="post">
                <input type="hidden" name="action" value="checkout">
                <input type="submit" value="Checkout">
            </form>
        </div>

        <div class="col-md-3">  
            <p>Amount</p>
            <p>${item.totalCurrencyFormat}</p>
        </div>

        
 
    </div>
</div>
       
            
</c:forEach>    
    

</section>  








<jsp:include page="/includes/footer.jsp" /> 