<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<body>

<h2>Create Event</h2>

<p style="color:red;">${error}</p>

<form:form method="post" action="create-event" modelAttribute="event">

    Title:
    <form:input path="title"/>
    <br/><br/>

    Description:
    <form:textarea path="description"/>
    <br/><br/>

    Date (YYYY-MM-DD):
    Date:
	<form:input path="eventDate" type="date"/>
    <br/><br/>

    <button type="submit">Create</button>

</form:form>

<a href="eventList">Eventlist</a>

</body>
</html>