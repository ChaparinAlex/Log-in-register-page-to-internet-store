<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
	<title>Good Page</title>
	<link rel="stylesheet" href="./resources/css/goodstyle.css">
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>
</head>
<body>
<h1>
	Add a Good
</h1>

<c:url var="addAction" value="/good/add" ></c:url>

<form:form action="${addAction}" commandName="good">
<table>
	<c:if test="${!empty good.name}">
	<tr>
		<td>
			<form:label path="id">
				<spring:message text="ID"/>
			</form:label>
		</td>
		<td>
			<form:input path="id" readonly="true" size="8"  disabled="true" />
			<form:hidden path="id" />
		</td> 
	</tr>
	</c:if>
	<tr>
		<td>
			<form:label path="name">
				<spring:message text="Name"/>
			</form:label>
		</td>
		<td>
			<form:input path="name" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="type">
				<spring:message text="Type"/>
			</form:label>
		</td>
		<td>
			<form:input path="type" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="price">
				<spring:message text="Price"/>
			</form:label>
		</td>
		<td>
			<form:input path="price" />
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<c:if test="${!empty good.name}">
				<input type="submit"
					value="<spring:message text="Edit Good"/>" />
			</c:if>
			<c:if test="${empty good.name}">
				<input type="submit"
					value="<spring:message text="Add Good"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
<br>
<h3>Goods List</h3>
<c:if test="${!empty listGoods}">
	<table class="tg">
	<tr>
		<th width="80">Good ID</th>
		<th width="120">Good Name</th>
		<th width="120">Good Type</th>
		<th width="80">Good Price</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${listGoods}" var="good">
		<tr>
			<td>${good.id}</td>
			<td>${good.name}</td>
			<td>${good.type}</td>
			<td>${good.price}</td>
			<td><a href="<c:url value='/editgood/${good.id}' />" >Edit</a></td>
			<td><a href="<c:url value='/removegood/${good.id}' />" >Delete</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>
