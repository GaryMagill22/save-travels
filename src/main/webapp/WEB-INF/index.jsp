<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<meta charset="UTF-8">
<title>Save Travels</title>
</head>
<body>
<h1 style="text-align: center; margin: 30px;">Save Travels</h1>
<table class="table table-bordered table-striped" style="width: 1000px; margin: 0 auto;" >
  <thead>
    <tr>
      <th style="color: purple; text-align: center;">Expense</th>
      <th style="color: purple; text-align: center;">Vendor</th>
      <th style="color: purple; text-align: center;">Amount</th>
      <th style="color: purple; text-align: center;">Actions</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="expense" items="${expenseList}">
    <tr class="table-light">
    <td style="text-align: center;"><a href="/expenses/${expense.id}" ><c:out value="${expense.name}"/></a></td>
      <td style="text-align: center;" ><a><c:out value="${expense.vendor}"/></a></td>
      <td style="text-align: center;" ><c:out value="${expense.amount}"/></td>
      <td style="text-align: center;" ><a href="/expenses/edit/${expense.id}">Edit</a>
      <form action="/expenses/${expense.id}" method="post" >
<input type="hidden" name="_method" value="delete" />
<button class="btn btn-outline-danger" type="submit">Delete</button></form></td>
      
    </tr>
    </c:forEach>
      
  </tbody>
</table>
<div style="margin: 30px;">
<a style="margin-left: 800px; padding: 40px;" href="/create">Add Expense</a>
</div>

</body>
</html>