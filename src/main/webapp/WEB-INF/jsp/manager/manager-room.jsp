<%-- 
    Document   : manager-service
    Created on : Jul 3, 2019, 3:25:35 PM
    Author     : Administrator
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"  %>   
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Manager Room</title>
        <jsp:include page="../include/css-header.jsp"/>
        <link href="<c:url value="/webjars/bootstrap/3.4.1/css/bootstrap.min.css"/>" type="text/css" rel="stylesheet" />

    </head>
    <body>
        <div class="super_container">

            <jsp:include page="../include/manager1-menu.jsp"/>

            <div class="blog" style="padding-top: 200px">

                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12" style="text-align: center">
                            <h2>Manager Room</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-6 col-sm-6" style="padding-bottom: 10px; ">
                            <button class="btn btn-primary" onclick="location.href = '<c:url value="/manager/Add"/>'">Add Room </button>
                        </div>
                        <div class="col-xs-6 col-sm-6" style="padding-bottom: 10px; text-align: right">

                        </div>
                    </div>                
                    <c:if test="${status == 'fail'}">
                        <div class="alert alert-danger">${message}</div>
                    </c:if>
                    <c:if test="${status == 'ok'}">
                        <div class="alert alert-success">${message}</div>
                    </c:if>
                    <div class="row">
                        <div class="col-xs-6 col-sm-6" style="padding-bottom: 10px; text-align: right">
                            <form action="${pageContext.request.contextPath}/manager/search" method="post" class="form-inline">
                                <div class="form-group">
                                    <input name="searchText" class="form-control" type="text"  />
                                    <input type="submit" class="btn btn-info" value="search"/>
                                </div>
                            </form>
                        </div>
                    </div>
                   
                    <br>
                    <table class="table table-borde red table-striped">

                        <tr>
                            <th></th>
                            <th>RoomNumber</th>
                            <th>RoomCategory</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                        <c:if test="${room != null && fn:length(room)>0}">
                            <c:forEach items="${room}" var="r">
                                <tr>
                                    <td>
                                        <c:set var="size" value="${fn:length(r.roomCategory.images)}"/>
                                        <img src="<c:url value="/resources/images/${r.roomCategory.images[size-1].name}"/>" alt="" style="height: 150px; width: 150px">
                                    </td>
                                    <td>${r.roomNumber}</td>
                                    <td>${r.roomCategory.name}</td>                               
                                    <td>${r.status}</td>
                                    <td>                                                                                                                        
                                        <button class="btn btn-warning" onclick="location.href = '<c:url value="/manager/Update/${r.id}"/>'">Update</button>
                                        <button class="btn btn-danger" onclick="location.href = '<c:url value="/manager/Delete/${r.id}"/>'">Delete</button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:if>
                    </table>
                </div>
            </div>
            <jsp:include page="../include/footer.jsp"/>
            <jsp:include page="../include/js-footer.jsp"/> 
        </div>
     

    </body>
</html>
