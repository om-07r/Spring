<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java"  isELIgnored="false"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<html><body>
  <h2>Upcoming Campus Events</h2>

  <table border="1">
    <tr>
      <th>Title</th>
      <th>Description</th>
      <th>Date</th>
      <th>Created By</th> 
    </tr>
    <c:forEach var="event" items="${events}">
      <tr>
        <td>${event.title}</td>
        <td>${event.description}</td>
        <td>${event.eventDate}</td>
        <td>${event.creatorName}</td>  
      </tr>
    </c:forEach>
  </table>

  <a href="create-event">+ Create New Event</a>
</body></html>