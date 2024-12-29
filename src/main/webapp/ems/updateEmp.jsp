<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; UTF-8" pageEncoding="utf-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="css/register.css">
    <title>员工信息更新页面</title>
</head>
<body>
<div id="wrap">
    <div id="header">
        <div id="rightheader">
            <p>
                2024/12/29
                <br/>
            </p>
        </div>
        <div id="topheader">
            <h1 id="title">
                <a href="#">updateEmp</a>
            </h1>
        </div>
    </div>
    <div id="content">
        <div id="addData">
            <form action="${pageContext.request.contextPath}/emp/updateEmp" method="post">
            <table>
                <caption>
                    employ data
                </caption>
                <thead>
                <tr>
                    <th scope="col">id</th>
                    <th scope="col">username</th>
                    <th scope="col">salary</th>
                    <th scope="col">age</th>
                    <th scope="col">operation</th>
                </tr>
                </thead>
                <tr>
                    <td>
                        <label>
                            ${requestScope.emp.id}
                            <input type="hidden" name="id" value="${requestScope.emp.id}">
                        </label>
                    </td>
                    <td>
                        <label>
                            <input type="text" name="name" value="${requestScope.emp.name}">
                        </label>
                    </td>
                    <td>
                        <label>
                            <input type="text" name="salary" value="${requestScope.emp.salary}">
                        </label>
                    </td>
                    <td>
                        <label>
                            <input type="text" name="age" value="${requestScope.emp.age}">
                        </label>
                    </td>
                    <td>
                        <label>
                            <input type="submit" name="update" value="更新员工" >
                        </label>
                    </td>
                </tr>
            </table>
            </form>
        </div>
    </div>
</div>
</body>
</html>
