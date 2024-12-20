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
                <a href="#">addEmp</a>
            </h1>
        </div>
    </div>
    <div id="content">
        <div id="addData">
            <form action="${pageContext.request.contextPath}/emp/addEmp" method="post">
            <table>
                <caption>
                    employ data
                </caption>
                <thead>
                <tr>
                    <th scope="col">username</th>
                    <th scope="col">salary</th>
                    <th scope="col">age</th>
                    <th scope="col">operation</th>
                </tr>
                </thead>
                <tr>
                    <td>
                        <label>
                            <input type="text" name="name">
                        </label>
                    </td>
                    <td>
                        <label>
                            <input type="text" name="salary">
                        </label>
                    </td>
                    <td>
                        <label>
                            <input type="text" name="age">
                        </label>
                    </td>
                    <td>
                        <label>
                            <input type="submit" name="add" value="添加员工" >
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
