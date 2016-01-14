
<!-- include the header-->

<jsp:include page="/includes/header.jsp" />

  
<section>
    
     <body>

         
        <div class="jumbotron">
            <div class="container">
                <h1>AJ's Website</h1>
                <h2>This is a collection of products I'm currently working on.</h2>
                <p></p>
                <p><br/></p>
                <p> This is a development web site I created in order to learn all the
                fundamental web technologies associated with Java with help from
                Joel Murach's book Servlets and JSPs as well as Head First SQL 
                by Lynn Beighley and the OCA/OCP Java SE 7 Study Guide by Kathy Sierra
                and Bert Bates.</p>
    
                <p> In this site you can access a e-commerce store with products to
                add to a cart a proceed to checkout. Technologies involved 
                in this web-app are HTML5, CSS3, Bootstrap, Java, Java Servlets, JavaServer Pages, SQL,
                was coded and compiled using NetBeans and runs off a Tomcat Server and 
                uses MySQL which is accessed via JDBC using a Connection pool</p>
                
                <a href="#">Download my CV</a>
            </div>
        </div>       
         
         
    <div class="Catalog">
        <div class="container">
            <h2>My projects!</h2>
            <p>Click to access a page containing one of my projects.</p>
            <div class="row">
                <div class="col-md-4">
                    
                    <div class="thumbnail">
                        <a href="winkelIndex.jsp">
                        <img src="images/AJsWinkel.jpg" alt=""/>
                        Java e-commerce site</a>
                    </div>

                    <div class="thumbnail">
                        <a href="product/FP01">
                        <img src="images/ComingSoon.jpg" alt=""/>
                        Coming Soon</a>
                    </div>
                    
                </div>
                <div class="col-md-4">
                    
                    <div class="thumbnail">
                        <a href="product/LC01">
                        
                        <img src="images/ComingSoon.jpg" alt=""/>
                        Coming Soon</a>
                    </div>
                    
                    <div class="thumbnail">
                        <a href="product/PA01">
                        <img src="images/ComingSoon.jpg" alt=""/>
                        Coming soon</a>
                        <br>
                    </div>
                    
                </div>
                <div class="col-md-4">
                    
                    <div class="thumbnail">
                        <a href="product/SG01">
                        <img src="images/ComingSoon.jpg" alt=""/>
                        Coming Soon</a>
                    </div>
                    
                    <div class="thumbnail">
                        <a href="product/SD01">
                        <img src="images/ComingSoon.jpg" alt=""/>
                        Coming Soon</a>
                    </div>
                    
                    
                </div>
            </div>
        </div>
    </div>




</section>

<jsp:include page="/includes/footer.jsp" />