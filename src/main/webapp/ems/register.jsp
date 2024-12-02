<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html; UTF-8" pageEncoding="utf-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="css/register.css">
    <script src="common.js"></script>
    <title>注册页面</title>
</head>
<body>
    <div id="wrap">
        <div id="header">
            <div id="rightheader">
                <p>
                    2023/12/01
                    <br/>
                </p>
            </div>
            <div id="topheader">
                <h1 id="title">
                    <a href="login.jsp">main</a>
                </h1>
            </div>
            <div id="navigation">
            </div>
        </div>
        <div id="content">
            <div id="content_tilte">
                <h1>
                    注册<br/>
                </h1>
            </div>
            <div id="content_register_data">
                <form action="${pageContext.request.contextPath}/user/register" method="post">
                    <table border="1">
                        <tr>
                            <td>
                                <label>
                                    用户名:
                                </label>
                            </td>
                            <td>
                                <label>
                                    <input id="name" type="text" name="username">
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>
                                    真实姓名:
                                </label>
                            </td>
                            <td>
                                <label>
                                    <input id="realName" type="text" name="realname">
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>
                                    密码:
                                </label>
                            </td>
                            <td>
                                <label>
                                    <input id="password" type="password" name="password">
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>
                                    再次输入密码:
                                </label>
                            </td>
                            <td>
                                <label>
                                    <input id="rePassword" type="password" name="repassword">
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>
                                    性别:
                                </label>
                            </td>
                            <td>
                                <label>
                                    <input name="sex" type="radio" value="male" checked="checked">男
                                    <input name="sex" type="radio" value="girl">女
                                </label>
                            </td>
                        </tr>
                    </table>
                    <div class="captcha">
                        <label for="captcha">请输入验证码：</label>
                        <input type="text" name="captcha" id="captcha" required>
                        <img src="${pageContext.request.contextPath}/user/getImage" alt="验证码" id="captcha-image">
                        <a href="javascript:;" onclick="document.getElementById('captcha-image').src = '${pageContext.request.contextPath}/user/getImage?' + (new Date()).getTime()">换一张</a>
                    </div>
                    <input type="submit" title="注册">
                </form>
            </div>
        </div>
    </div>
</body>
</html>