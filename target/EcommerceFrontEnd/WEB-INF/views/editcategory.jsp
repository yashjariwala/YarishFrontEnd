<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="cd" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>

<spring:url value="/resources/css" var="css" />
<spring:url value="/resources/js" var="js" />
<spring:url value="/resources/images" var="img" />
<spring:url value="/resources/fonts" var="fonts" />
<!DOCTYPE html>
<html lang="en">
<style>
body {
	background: url("${img}/profilebg.jpg") no-repeat 0px 0px;
	background-size: cover;
	font-family: 'Open Sans', sans-serif;
	background-attachment: fixed;
}

.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
}

.tg td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #fff;
}

.tg th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #f0f0f0;
}

.tg .tg-4eph {
	background-color: #f9f9f9
}
</style>
<head>
<title>Edit Category</title>
<link rel="shortcut icon" href="${img}/y.png" />
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${css}/bootstrap.min.css">
<script src="${js}/jquery.min.js"></script>
<script src="${js}/bootstrap.min.js"></script>


</head>
<body>
	<%@include file="shared/Header.jsp"%>
	<c:set var="contextPath" value="${pageContext.request.contextPath}" />

	<!--content-->
	<div class="content">
		<!--login-->
		<div class="login">
			<div class="main-agileits">
				<div class="form-w3agile form1">
					<h3>Category</h3>
					<%-- 					<c:url var="addAction" value="/category"></c:url> --%>
					<form:form action="${contextPath}/addcatg"
						modelAttribute="Category" method="post">
						<form:label path="categoryid">Category ID</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-qrcode" aria-hidden="true"></i>
							<form:input type="text" path="categoryid" readonly="true" />
							<div class="clearfix"></div>
						</div>
						<form:label path="categoryname">Category Name</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-tag" aria-hidden="true"></i>
							<form:input path="categoryname" />
							<div class="clearfix"></div>
						</div>

						<form:label path="categorydescription">Category Description</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-list-alt" aria-hidden="true"></i>
							<form:input path="categorydescription" />
							<div class="clearfix"></div>


						</div>
						<input type="submit" value="Submit">
					</form:form>
				</div>

			</div>

		</div>
	</div>
	<!--login-->




	<%@include file="shared/Footer.jsp"%>
</body>
</html>
