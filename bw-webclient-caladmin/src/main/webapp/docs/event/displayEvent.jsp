<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix="c" %>

<bedework>
<%@include file="/docs/header.jsp"%>

<page>displayEvent</page>

<c:set var="allView" value="true" scope="request"/>
<c:set var="eventFormatter" value="${calForm.curEventFmt}"
       scope="request"/>

<%@ include file="/docs/event/emitEvent.jsp" %>

<%@include file="/docs/footer.jsp"%>
</bedework>
