<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Details</title>
</head>
<body>

<h1 style="text-align: center; color: purple;" >Expense Details</h1>
<div class="main-container" style="text-align: center; border: 1px solid black; max-width: 500px; margin: 0 auto; padding: 10px;" >
<h3>Name: <c:out value="${expense.name}"></c:out> </h3>
<h3>Vendor: <c:out value="${expense.vendor}"></c:out></h3>
<h3>Amount: <c:out value="${expense.amount}"></c:out></h3>
<h3>Description: <c:out value="${expense.description}"></c:out></h3>
</div>
<form action="/expenses/${expense.id}" method="post">
<input type="hidden" name="_method" value="delete" />
<button style="margin-left: 900px;"  class="btn btn-outline-danger" type="submit">Delete</button>
<button style="margin-left: 900px;"  href="/expenses" class="btn btn-outline-primary" >Home</button>
</form>
</body>
</html>