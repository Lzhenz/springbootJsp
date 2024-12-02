<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; UTF-8" pageEncoding="utf-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="css/register.css">
    <title>员工一览页面</title>
</head>
<body>
    <div id="wrap">
        <div id="header">
            <div id="rightheader">
                <p>
                    2024/12/02
                    <br/>
                </p>
            </div>
            <div id="topheader">
                <h1 id="title">
                    <a href="#">List</a>
                </h1>
            </div>
        </div>
        <div id="emplistData">
            <div id="content">
                <table border="1">
                    <caption>
                        employ data
                    </caption>
                    <thead>
                        <tr>
                            <th scope="col">id</th>
                            <th scope="col">username</th>
                            <th scope="col">realname</th>
                            <th scope="col">password</th>
                            <th scope="col">operation</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${requestScope.emplist}" var="emp">
                            <tr>
                                <td>${emp.id}</td>
                                <td>${emp.name}</td>
                                <td>${emp.salary}</td>
                                <td>${emp.age}</td>
                                <td>
                                    <input id="update_emp" type="button" name="update_emp" title="修改Emp" value="修改Emp">
                                    <input id="delete_emp" type="button" name="delete_emp" title="删除Emp" value="删除Emp">
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>