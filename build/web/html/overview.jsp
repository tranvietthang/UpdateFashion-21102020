<%-- 
    Document   : overview
    Created on : Oct 12, 2020, 12:05:20 AM
    Author     : ThangCoi
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="convertDate" class="dal.ConvertDate"/>
<link href="./css/style.css" rel="stylesheet" type="text/css"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="wrap">
            <%@include file="header.jsp" %>
            <div class="content">
                <table>
                    <td class="left">
                        <p class="page-title">Overview - Blog</p>
                        <div class="section2">
                            <div class="table-head">
                                <c:forEach var="entry" items="${listDate}">
                                    <table>
                                        <tr class="date-overview">
                                            <td>
                                                ${convertDate.FormatDate(entry.getKey().toString())}
                                            </td>
                                            <td></td>
                                            <td></td>
                                            <td><span class="date-title">Date</span></td>
                                            
                                        </tr>
                                        <tr>
                                            <c:forEach var="d" items="${entry.getValue()}">
                                            <tr>
                                                <td class="table-data"><a href="detail?id=${d.getId()}">${d.getTitle()}</a></td>
                                                <td class="table-data"><div id="like" >${d.getLike()}</div></td>
                                                <td class="table-data"><div id="comment" >${d.getComment()}</div></td>
                                                <td class="table-data">${d.getDateFormat()}</td>
                                            </tr>
                                        </c:forEach>
                                        </tr>
                                    </table>
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                    <td class="right">
                        <%@include file="box.jsp" %>
                    </td>
                </table>
            </div>
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
