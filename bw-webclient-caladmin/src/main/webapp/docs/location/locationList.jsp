<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix="c" %>
<%@ taglib uri='https://bedework.org/jsp/taglib/bedework' prefix='bw' %>

<bedework>
<%@include file="/docs/header.jsp"%>

<page>locationList</page>
<locations>
  <%
    final String includeArchived = request.getParameter("includeArchived");
    if (includeArchived != null) {
      out.println("  <includeArchived>" + includeArchived +
                          "</includeArchived>");
    }
  %>
  <c:if test="${not empty sessionScope.bw_editable_locations_list}">
    <c:forEach var="location" items="${sessionScope.bw_editable_locations_list}">
      <%@include file="/docs/location/emitLocation.jsp"%>
    </c:forEach>
  </c:if>
</locations>

<%@include file="/docs/footer.jsp"%>

</bedework>
