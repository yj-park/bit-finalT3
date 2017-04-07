<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="navi" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<script src="${pageContext.request.contextPath}/js/comm/jquery-1.10.2.js"></script>
    <!-- Custom Google Web Font -->
    <link href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Arvo:400,700' rel='stylesheet' type='text/css'>


	<script src="${pageContext.request.contextPath}/js/comm/jquery.colorbox.js"></script>
	<link href="${pageContext.request.contextPath}/css/comm/colorbox.css" rel="stylesheet">
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/group/groupList.css"/>
	

<body>

	<div id="container">
		<div class="sticky control maker" id="maker">
		  <div class="plus">그룹 만들기</div>
		</div>
		<c:forEach var="list" items="${list}">
			<input type="hidden" value="${list.groupHeaderNo}" id="${list.groupHeaderNo}"/>
			<div class="sticky" >
				<a class="iframe" href="groupDetail.do?groupHeaderNo=${list.groupHeaderNo}">
					<img src="${pageContext.request.contextPath}/img/icon/setting.png" width="17px" height="17px" >
				</a>
				<c:out value="${list.groupHeaderName}"/>
			</div>	
		</c:forEach>
	</div>
	
	<!-- This contains the hidden content for inline calls -->
	<div style='display:none'>
		<div id='inline_content' style='padding:10px; background:#fff;'>
		<p><strong>This content comes from a hidden element on this page.</strong></p>
		<p>The inline option preserves bound JavaScript events and changes, and it puts the content back where it came from when it is closed.</p>
		<p><a id="click" href="#" style='padding:5px; background:#ccc;'>Click me, it will be preserved!</a></p>
		
		<p><strong>If you try to open a new Colorbox while it is already open, it will update itself with the new content.</strong></p>
		<p>Updating Content Example:<br />
		<a class="ajax" href="../content/ajax.html">Click here to load new content</a></p>
		</div>
	</div>
	
</body>
<script>

	$(document).ready(function(){
		$(".iframe").colorbox({iframe:true, width:"650px", height:"380px"});
	});

	/** 새로운 그룹 등록 **/
	
	$("#maker").click(function () {
		
		$.ajax({
		  url: "groupHeaderWrite.do",
		  type: "POST",
		  dataType: "json"
	  	})
	  	.done (function(result){
	  		// alert("그룹 등록 성공1" + result);
	  		
	  		
	  		var html = '<div class="sticky">'
	  		+ '<a class="iframe" href="groupDetail.do?groupHeaderNo='+result.groupHeaderNo+'">'
			+ '<img src="${pageContext.request.contextPath}/img/icon/setting.png" width="17px" height="17px" >'
			+ '</a>'
			+ result.groupHeaderName
			+ '</div>';
	  		
	  		
	  		$("#maker").after(html);
	  		$(".iframe").colorbox({iframe:true, width:"650px", height:"380px"});
	  		
	 	    
	 	    
	  	});
		
	});
	

	
// 		var gName = $("#groupname").val();
// 		console.log(gName);
		
	
	
	$('.btn_insert').click(function(){
	})
</script>
</html>