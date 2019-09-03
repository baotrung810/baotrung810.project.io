<%-- 
    Document   : check-in
    Created on : Jul 18, 2019, 9:41:58 AM
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
        <title>Check Out</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <jsp:include page="../include/css-header.jsp"/>
    </head>
    <body>
        <div class="super_container">

            <jsp:include page="../include/manager-menu.jsp"/>
            <div class="blog" style="padding-top: 200px">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12" style="text-align: center">
                            <h2>Check Out</h2>
                        </div>
                    </div>
                    <br>
                    <table class="table table-borde red table-striped" style="color: black">
                        <thead>
                            <tr>
                                <th>FullName</th>
                                <th>Room Name</th>
                                <th>Room Categoy</th>
                                <th>Price</th>
                                <th>Check In</th>
                                <th>Check Out</th>
                                <th>Service</th>
                                <th>Status</th>
                                
                                <th></th>
                            </tr>
                        </thead>
                        <tbody id="myTable">                   
                            <c:forEach items="${bookingDetail}" var="b">
                                <tr>  
                                    <td>${b.booking.customerInformation.name}</td>
                                    <td>${b.room.roomNumber}</td>
                                    <td>${b.room.roomCategory.name}</td>
                                    <td> <fmt:formatNumber pattern="###,###" value="${b.price}"/> VNĐ</td>
                                    <td>${b.booking.checkIn}</td>
                                    <td>${b.booking.checkOut}</td>
                                    <td><c:forEach items="${b.services}" var="s">${s.name}, </c:forEach></td>
                                    <td>${b.status}</td>
                                    <td>                                                                                                                        
                                        <button class="btn btn-warning" onclick="location.href = '<c:url value="/reception/check-out/${b.id}"/>'">CheckOut</button>                          
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <jsp:include page="../include/footer.jsp"/>
        <jsp:include page="../include/js-footer.jsp"/> 
    </div>

</body>
</html>
