<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script src="${pageContext.request.contextPath}/js/main/main.js"></script>
	<link href="${pageContext.request.contextPath}/css/main/main.css" rel="stylesheet" type="text/css">
	<style>
	.line{
		display: inline-block;
		 width: 268px;
		 white-space: nowrap; 
		 overflow: hidden;
/* 		 margin-left: 1%; */
/* 		 margin-right: 1%; */
	}
	</style>
		<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
</head>
<body id="home">
	<div class="page">
	  <div class="page1" style="height:320px;border-radius: 30px">
	    <div class="lt">
	      <h1><</h1>
	    </div>
	    <div class="gt">
	      <h1>/></h1>
	    </div>
	  	<div class="headline" style="top: 100px;">
	    	<h1 style="top:">HelloWorld!</h1>
	    	<h3>Coily와 <span style="color: #1ABC9C "class="text-change"></span></h3>
	  	</div>
	  </div>
	</div>
  	
	<br>
	
	<div class="wrapper">
		<div id="cardList" class="section article" style="float: left;min-height:337px;margin-right: 2%;"></div>
		<div id="quizList" class="section article" style="min-height:337px;"></div>
	</div>
</body>
</html>