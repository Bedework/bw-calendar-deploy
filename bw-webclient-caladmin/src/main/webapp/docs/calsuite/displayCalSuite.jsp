<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix="c" %>

<bedework>
<%@include file="/docs/header.jsp"%>

<page>displayCalSuite</page>

<calSuites>
  <c:set var="calSuite" value="${calForm.calSuite}" >
    <%@include file="/docs/calsuite/emitCalSuite.jsp"%>
  </c:set>
</calSuites>

<%@include file="/docs/footer.jsp"%>



</bedework>
