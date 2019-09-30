<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 9/30/19
  Time: 11:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.awt.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.codegym.CustomerList" %>
<%@ page import="com.codegym.Customer" %>
<html>
<head>
    <title>Danh Sách Khách Hàng</title>
    <style>
        tr {
            border-bottom: 2px solid #cccc !important;
            display: block;
            height: 80px;
            line-height: 80px;

        }

        td {
            width: 200px;
        }

        #title > td {
            font-weight: bold;
        }

        h1 {
            font-size: 30px;
            padding-left: 200px;
            color: mediumblue;
        }

        #img1 {
            width: 60px;
            height: 60px;
        }
    </style>
</head>
<body>
<h1>Danh Sách Khách Hàng</h1>
<table>
    <tr id="title">
        <td>Tên</td>
      <td>Ngày Sinh</td>
      <td>Địa Chỉ</td>
      <td>Ảnh</td>
    </tr>
  <c:forEach items="${CustomerList.customers}" var="customer">
    <tr>
      <td>${customer.name}</td>
      <td>${customer.dateOfBirth}</td>
      <td>${customer.address}</td>
      <td><img id="img1" src="${customer.image}"></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
