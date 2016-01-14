<!-- import the JSTL tag library -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- include the header-->

<jsp:include page="/includes/header.jsp" />

  
<section>
    
     <body>

        <div class="background-image">
         
             
         <!--create product links which connect to the catalog controller-->
         
    <div class="CatalogTwo">
        <div class="container">
            <br>
            <br>
            <h2>Our Products</h2>
            <p>Not sure what to try? Click on a product to learn more about it.</p>
            <div class="row">
                <div class="col-md-4">
                    <div class="thumbnail">
                        <a href="<c:url value='product/CP01'/>">
                        <img src="../images/CP01_thumb.jpg" alt="Canned Possum"/>
                        Enjoy some delicious Potted Possum Sauce</a>
                    </div>
                   
                    
                    
                    <div class="thumbnail">
                        <a href="<c:url value='product/FP01'/>">
                        <img src="../images/FP01_thumb.jpg" alt="Free Strips of Paper"/>
                        Spoil your friends by handing out free strips of paper</a>
                    </div>
                    
                </div>
                <div class="col-md-4">
                    
                    <div class="thumbnail">
                        <a href="product/LC01">
                        <img src="../images/LC01_thumb.jpg" alt="Lightsaber Chopsticks"/>
                        Kylo Ren forged chopsticks</a>
                    </div>
                    <div class="thumbnail">
                        <a href="product/PA01">
                        <img src="../images/PA01_thumb.jpg" alt="Pink Arduino"/>
                        Be the envy at your next user group</a>
                    </div>
                    
                </div>
                <div class="col-md-4">
                    
                    <div class="thumbnail">
                        <a href="product/SG01">
                        <img src="../images/SG01_thumb.jpg" alt="Spotted Dick"/>
                        Delicious, crunchy Sir Grapefellow Ceeral</a>
                    </div>
                    <div class="thumbnail">
                        <a href="product/SD01">
                        <img src="../images/SD01_thumb.jpg" alt="Sir Grapefellow"/>
                        Invite Granny over for some tea and Heinz Spotted Dick</a>
                    </div>
                    
                    
                </div>
            </div>
        </div>
    </div>


        </div>

</section>

<jsp:include page="/includes/footer.jsp" />