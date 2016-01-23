<%-- 
    Document   : parcelStatus
    Created on : 23 Jan, 2016, 2:21:33 PM
    Author     : ultmate
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/loggedUserHeader.css" />">
        <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/navigationBar.css" />">
        <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/parcelStatus.css" />">
        <title>Parcel Status</title>
    </head>
    <body>
        <%@include file="loggedUserHeader.jsp" %>
        <%@include file="navigationBar.jsp" %>
        <section>
            <c:choose>
                <c:when test="${!parcelList.isEmpty()}" >
                    <table rules="all">
                        <tr>
                            <th>Parcel_ID</th>
                            <th>Posted_On</th>
                            <th>Sender</th>
                            <th>SenderMobile</th>
                            <th>Sent_For</th>
                            <th>Rec. Mobile</th>
                            <th>Description</th>
                        </tr>
                        <c:forEach items="${parcelList}" var="parcel" >
                            <tr>
                                <td><c:out value="${parcel.id}" /></td>
                                <td><c:out value="${parcel.postedOn}" /></td>
                                <td><c:out value="${parcel.sender}" /></td>
                                <td><c:out value="${parcel.senderMobile}" /></td>
                                <td><c:out value="${parcel.sentFor}" /></td>
                                <td><c:out value="${parcel.receiverMobile}" /></td>
                                <td><c:out value="${parcel.description}" /></td>
                            </tr>
                        </c:forEach>
                    </table>
                </c:when>

                <c:otherwise>
                    <h2>No Parcels Yet!</h2>
                </c:otherwise>
            </c:choose>

        </section>
    </body>
</html>
