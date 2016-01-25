<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <link type="text/css" rel="stylesheet" href="<c:url value="resources/css/indexStyle.css" />" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">  
        <title>UniSYs Login</title>
    </head>

    <body>
        <header>
            <div id="headerRootDiv">
                <div id="headerLogoDiv">
                    <h1 class="headingText">US</h1>
                </div>
                <div id="headerTitleDiv">
                    <h1 id="headerTitle">UNISYS</h1>
                </div>
            </div>
        </header>

        <section>
            <div id="loginDiv">
                <form name="loginForm" method="POST" action="Login">
                    <table>
                        <tr>
                            <td colspan="2" id="loginDivTitle"></td>
                        </tr>
                        <tr>
                            <td colspan="2" class="errorMsg">
                                <%
                                    Object errMsg = request.getAttribute("errorMsg");
                                    if(errMsg != null) {
                                        out.println(errMsg);
                                    }
                                %>
                            </td>
                        </tr>
                        <tr>
                            <td class="fieldDescription">Roll No.</td>
                        </tr>
                        <tr>
                            <td colspan="2"><input type="text" name="studentId" placeholder="Roll No." maxlength="8"
                                                   class="field" autocomplete="on" autofocus required/></td>
                        </tr>
                        <tr>
                            <td class="fieldDescription">Password</td>
                        </tr>
                        <tr>
                            <td colspan="2"><input type="password" name="pwd" placeholder="Password" 
                                                   class="field" required/></td>
                        </tr>
                        <tr></tr>
                        <tr>
                            <td class="linkText"><a href="/Signup">Create Account</a></td>
                            <td class="linkText"><a href="/ForgotPassword">Forgot Password</a></td>
                        </tr>

                        <tr>
                            <td colspan="2"><input type="submit" value="Login" class="btn"/></td>
                        </tr>
                    </table>
                </form>
            </div>
        </section>
    </body>
</html>