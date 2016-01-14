<!-- import the JSTL tag library -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/includes/header.jsp" />

<section>
            <br>
            <br>
     

<h1 style="text-align: center">Please Fill in your Details</h1>
<p style="text-align: center"> Note this information is captured to a database, so be sure not to put in any personal information. For demonstration purposes only.</p>

<div style="text-align: center">
   
    <!--send a request object to the order controller servlet 
    place order method with user parameters-->
    
<form action="<c:url value='/order/placeOrder' />" method="post">
    
    <!--get all the attributes for a user in order to store it as a javabean and on the database-->
    
    
    <label>First Name</label>
    <input type="text" name="firstName" value="${user.firstName}" required>
    <br>
    
    <label>Last Name</label>
    <input type="text" name="lastName" value="${user.lastName}" required>
    <br>
    
    <label>Email Address</label>
    <input type="email" name="email" value="${user.email}" required>
    <br>
    
    <label>Telephone</label>
    <input type="text" name="telephone" value="${user.telephone}">
    <br>
    
    <label>Address</label>
    <input type="text" name="address" value="${user.address}" required> 
    <br>
    
    <label>Suburb</label>
    <input type="text" name="suburb" value="${user.suburb}">
    <br>
    
    <label>City</label>
    <input type="text" name="city" value="${user.city}" required>
    <br>
    
    <label>Province</label>
    <input type="text" name="province" value="${user.province}" required>
    <br>
    
    <label>Postal Code</label>
    <input type="text" name="postalCode" value="${user.postalCode}" required>
    <br
    
    <label>Country</label>
    <input type="text" name="country" value="${user.country}" required> 
    <br>
    
    <label>Credit Card Type</label>
    <select name="visaOrMaster" size="1">
            <option value="Visa">Visa</option>
            <option value="Mastercard">Mastercard</option>
            
    </select>
    <br>
    
    <label>Card Number</label>
    <input type="text" size="20" name="cardNumber" required>
    <br>
    
    <Label>Expiration Date</Label>
        <select name="expirationMonth">
            <option value="01">01</option>
            <option value="02">02</option>
            <option value="03">03</option>
            <option value="04">04</option> 
            <option value="05">05</option>
            <option value="06">06</option>
            <option value="07">07</option>
            <option value="08">08</option> 
            <option value="09">09</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option> 
        </select>
          /
        <select name="expirationYear">
            <option value="2016">2016</option>
            <option value="2017">2017</option>
            <option value="2018">2018</option>
            <option value="2019">2019</option> 
            <option value="2020">2020</option>
            <option value="2021">2021</option>
            <option value="2022">2022</option>
            <option value="2023">2023</option> 
            <option value="2024">2024</option>
            <option value="2025">2025</option>
            <option value="2026">2026</option>
            <option value="2027">2027</option>  
            <option value="2028">2028</option>
            <option value="2029">2029</option>
            <option value="2030">2030</option>             
        </select>
    <br>
          
    <input type="submit" value="Submit Order">
 
</form>    


</div>



<jsp:include page="/includes/footer.jsp" /> 