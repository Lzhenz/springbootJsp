
<%@page contentType="text/html; UTF-8" pageEncoding="utf-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="css/register.css">
    <title>登录页面</title>
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
                    <a href="#">Login</a>
                </h1>
            </div>
        </div>
        <div id="content">
            <div id="content_title">
                <h1>
                    登录<br/>
                </h1>
            </div>
            <div id="content_login_data">
                <form action="${pageContext.request.contextPath}/user/login" method="post">
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
                                    密码:
                                </label>
                            </td>
                            <td>
                                <label>
                                    <input id="password" type="password" name="password">
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
                    <input type="submit" title="登录">
                </form>
            </div>
        </div>
    </div>
</body>
</html>