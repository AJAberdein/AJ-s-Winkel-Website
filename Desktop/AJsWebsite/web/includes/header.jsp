

<!-- set the content type returned to the browser -->
<%@page contentType="text/html" pageEncoding="utf-8"%>

<!-- import the JSTL tag library -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- declare that this page is written in HTML5 -->
<!doctype html>

<html>
    <head>
        <!-- create tab title, icon and import css and a javascript shiv to
        prevent bad styling in older browsers & bootstrap-->
        <meta charset="utf-8">
        <title> AJ's Winkel! </title>
        
        <link rel="shortcut icon" href="<c:url value='/images/AJIcon.ico'/>"> 
    
        
        <link href="http://s3.amazonaws.com/codecademy-content/courses/ltp/css/shift.css" rel="stylesheet">
    
    
        <link href="<c:url value='/styles/bootstrap.css'/>" rel="stylesheet" type="text/css"/>
        <link href="<c:url value='/styles/main.css'/>" rel="stylesheet" type="text/css"/>

        
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        
    </head>

    <body>
        
    
        
        <div class="nav">
            <div class="container">
                <ul class="pull-left">
                    <li><a href="<c:url value='/' />">Home</a></li>
                    <li><a href="<c:url value='/contact.jsp' />">Contact</a></li>
                </ul>
            
                <ul class="pull-right">
                    
                    
                    <li><a href="<c:url value='/cv.jsp' />">CV</a></li>
                    <li><a href="http://www.github.com/AJAberdein">Github</a></li>
                    <li><a target="_blank" href="<c:url value='/downloads/source-code.zip' />">Source Code</a></li>
                    
                </ul>
            </div>
        </div>


        
    </body>
    