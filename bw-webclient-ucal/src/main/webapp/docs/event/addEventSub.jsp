<%@ page contentType="text/xml;charset=UTF-8" buffer="none" language="java" %><?xml version="1.0" encoding="UTF-8"?>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix="c" %>
<%@ taglib uri='bedework' prefix='bw' %>

<bedework>
<%@ include file="/docs/header.jsp" %>

<%
try {
%>
  <page>addEventSub</page>
  <%-- This page used for displaying, confirming, and setting a
       calendar for a public event reference added to the personal
       calendar web client. --%>
  <%-- Wrapper for a single event (emitEvent.jsp)--%>
  <c:set var="allView" value="true" scope="request"/>
  <c:set var="eventFormatter" value="${calForm.curEventFmt}"
         scope="request"/>

    <%@ include file="/docs/event/emitEvent.jsp" %>

    <formElements>
     <form>
       <!-- user's writable calendars -->
       <calendars>
         <c:set var="addContentCalendarCollections"
                value="${bw_addcontent_collection_list}" />
         <bw:selectCollection name="calForm"
                              property="calendarId"
                              cols="addContentCalendarCollections"
                              indent="    "/>
       </calendars>
     </form>
    </formElements>

<%
} catch (Throwable t) {
  t.printStackTrace();
}
%>

<%@ include file="/docs/footer.jsp" %>

</bedework>
