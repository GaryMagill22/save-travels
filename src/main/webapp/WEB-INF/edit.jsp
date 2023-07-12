<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Edit Expense</title>
</head>
<body>
<h1>Edit Expense</h1>

<form:form action="/expenses/edit/${expense.id}" method="put" style="width: 400px; margin: 0 auto;" modelAttribute="expense">
<input type="hidden" name="_method" value="put">
<div class="mb-3">
<form:label path="name" for="name" class="form-label">Expense Name: </form:label>
<form:input  type="text" path="name" class="form-control" id="name" name="name" placeholder="Enter expense name"/>
<form:errors style="color: red;" path="name"/>
</div>
<div class="mb-3">
<form:label path="vendor" for="vendor"  class="form-label">Vendor: </form:label>
<form:input  path="vendor" type="text" class="form-control" id="vendor" name="vendor" placeholder="Enter vendor name"/>
<form:errors style="color: red;" path="vendor"/>
</div>
<div class="mb-3">
<form:label  path="amount" for="amount" class="form-label">Amount: </form:label>
<form:input  path="amount" type="number" class="form-control" id="amount" name="amount" placeholder="Enter amount"/>
<form:errors style="color: red;" path="amount"/>
</div>
<div class="mb-3">
<form:label  path="description" for="description" class="form-label">Description: </form:label>
<form:textarea path="description" class="form-control" id="description" name="description" rows="3"></form:textarea>
<form:errors style="color: red;" path="description"/>
</div>
<button type="submit" class="btn btn-outline-primary" value="submit" >Submit</button>
</form:form>
<div style="margin: 30px;">
<a style="margin-left: 800px; padding: 40px;" href="/expenses">Home</a>
</div>
</body>
</html>