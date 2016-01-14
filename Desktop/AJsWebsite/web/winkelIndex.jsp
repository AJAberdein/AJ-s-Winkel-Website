<!-- import the JSTL tag library -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- include the header-->

<jsp:include page="/includes/header.jsp" />

  
<section>
    
     <body>

         
        <div class="jumbotron-winkel">
            <div class="container">
                <br>
                <br>
                <h1>AJ's Winkel</h1>
                <h2>Welcome to the one stop shop for products of every need!</h2>
                <p></p>
                <p><br/></p>
                <p> This is a development web site I created in order to learn all the
                fundamental web technologies associated with Java with help from
                Joel Murach's book Servlets and JSPs as well as Head First SQL 
                by Lynn Beighley and the OCA/OCP Java SE 7 Study Guide by Kathy Sierra
                and Bert Bates.</p>
    
                <p> In this site you should be able to browse through the product section
                add products to a cart a proceed to checkout. Technologies involved 
                in this web-app are HTML5, CSS3, Bootstrap, Java, Java Servlets, JavaServer Pages, SQL,
                was coded and compiled using NetBeans and runs off a Tomcat Server and 
                uses MySQL which is accessed via JDBC using a Connection pool</p>
                
                <a href="#">Download my CV</a>
            </div>
        </div>       
         
         
    <div class="Catalog">
        <div class="container">
            <h2>Products</h2>
            <p>Click to see our full range of Goodies!</p>
            <div class="row">
                <div class="col-md-12">
                    
                    <div class="thumbnail">
                        <a href="<c:url value='/catalog' />">    
                        <img src="images/products.png" alt=""/>
                        
                        Click to see our Products</a>
                    </div>
                    
                </div>
                
            <h2>Now in Stock!</h2>
            <p>Not sure what to try? Click on a product to learn more about it.</p>
                
                
                <div class="col-md-4">
                    
                    <div class="thumbnail">
                        <a href="catalog/product/FP01">
                        <img src="images/FP01_thumb.jpg" alt="Free Strips of Paper"/>
                        A Single Serving Java application</a>
                    </div>
                </div>
                <div class="col-md-4">
                        <div class="thumbnail">
                        <a href="catalog/product/PA01">
                        <img src="images/PA01_thumb.jpg" alt="Pink Arduino"/>
                        Be the envy at your next user group</a>
                    </div>
                </div>
                <div class="col-md-4">
                        <div class="thumbnail">
                        <a href="catalog/product/SD01">
                        <img src="images/SD01_thumb.jpg" alt="Sir Grapefellow"/>
                        Invite Granny over for some tea and Heinz Spotted Dick</a>
                    </div>
                    
                </div>
         
            </div>
        </div>
    </div>




</section>

<jsp:include page="/includes/footer.jsp" />