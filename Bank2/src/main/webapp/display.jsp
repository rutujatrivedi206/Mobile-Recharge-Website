<!DOCTYPE html>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.List"%>
<%@page import="entity.mobile_recharge"%>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Display</title>

<style>
    table {
  border-collapse: collapse;
  width: 100%;
  background-color: #f2f2f2;
  animation: fadeIn 1s ease-in-out;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

th, td {
  padding: 12px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

th {
  background-color: #ff7200;
  color: white;
}

@keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}

body {
  background-color: #FFFD75;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}

.container {
background-color:#B2EA70;
  width: 500px;
  padding: 20px;
  border: 1px solid #ddd;
  border-radius: 5px;
  animation: slideIn 1s ease-in-out;
}

@keyframes slideIn {
  from {
    transform: translateX(-50px);
    opacity: 0;
  }
  to {
    transform: translateX(0);
    opacity: 1;
  }
}

h1 {
  text-align: center;
  color: #AA2EE6;
  margin-top: 0;
}

p {
  text-align: center;
  margin-top: 10px;
  color: #666;
}

</style>

</head>
<body>
<%
List<mobile_recharge> lstmr = (LinkedList<mobile_recharge>)request.getAttribute("transactions");
%>

<div class="container">
    <h1>Mobile Recharge Transactions</h1>
    <p>This table displays the list of mobile recharge transactions.</p>

    <table>
        <thead>
        <tr>
            <th>Account No</th>
            <th>Phone No</th>
            <th>Service Provider</th>
            <th>Recharge Amount</th>
            <th>Transaction Date</th>
        </tr>
        </thead>
        <tbody>
        <%for(mobile_recharge mr:lstmr)
        {
        %>
        <tr>
            <td><%=mr.getAccNo() %></td>
            <td><%=mr.getPhoneNo() %></td>
            <td><%=mr.getServiceProvider() %></td>
            <td><%=mr.getRecAmt() %></td>
            <td><%=mr.getDate() %></td>
        </tr>
        <%}%>
        </tbody>
    </table>
</div>

</body>
</html>
