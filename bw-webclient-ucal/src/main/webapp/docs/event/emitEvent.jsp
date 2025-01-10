<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix="c" %>

<c:set var="eventFmt" value="${requestScope.eventFormatter}"  scope="request"/>
<c:set var="eventInfo" value="${requestScope.eventFmt.eventInfo}" scope="request"  />
<%-- Output a single event. This page handles fields common to all views --%>
<%@ include file="/docs/event/emitEventCommon.jsp" %>

