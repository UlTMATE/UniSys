<%-- 
    Document   : navigationBar
    Created on : 23 Jan, 2016, 11:54:59 AM
    Author     : ultmate
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<nav>
    <ul>
        <li>
            <a href="<c:url value="/postParcel" />">Post Parcel</a>
        </li>
        <li>
            <a href="<c:url value="/parcelStatus" />">Parcel Status</a>
        </li>
    </ul>
</nav>