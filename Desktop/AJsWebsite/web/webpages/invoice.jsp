<!-- import the JSTL tag library -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/includes/header.jsp" />



<section class="cart">
            <br>
            <br>    
    <h1>Your invoice</h1>

    <p>Thank you for ordering with us, your order has been processed.</p>
    <br>
    <br>
    <p>Your order is being shipped to:</p>
    <p>${user.invoiceInformation}</p>
    <br>
    <br>
    
    <%--<c:forEach var="item" items="${invoice.lineItems}">--%>
        
    <p>Your order of ${item.quantity} ${item.product.description}s
        for ${item.totalCurrencyFormat} per ${item.product.description}
        comes to ${invoice.invoiceTotalCurrencyFormat}</p>
    <br>
    <br>
    <p> Thank you for shopping at AJ's Winkel, check back regularly for
        more cool goodies</p>
    
    <%--</c:forEach>--%> 
    

</section>





<jsp:include page="/includes/footer.jsp" /> 