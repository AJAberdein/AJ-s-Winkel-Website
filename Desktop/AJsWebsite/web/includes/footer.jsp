    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


        <div class="learn-more">
	  <div class="container">	  
		<div class="row">
                <div class="col-md-4">
			<h3>CV</h3>
			<p><a href="<c:url value='/cv.jsp' />">Click to see my CV</a></p>
                </div>
		  <div class="col-md-4">
			<h3>GitHub</h3>
			<p><a href="http://www.github.com/AJAberdein">Click to go to my Git repository on this project</a></p>
		  </div>
		<div class="col-md-4">
			<h3>Source Code</h3>
			<p><a target="_blank" href="<c:url value='/downloads/source-code.zip' />">Click to download the Source Code for this project</a></p>
		</div>
	    </div>
	  </div>
	</div>
  </body>
</html>



    <footer>
        

        
        
        <p>&copy; Copyright ${currentYear} AJ Aberdein
            All rights reserved.</p>
    </footer>
</body>
</html>