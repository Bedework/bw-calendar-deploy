<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix="c" %>
<%@ taglib uri='https://bedework.org/jsp/taglib/bedework' prefix='bw' %>

<bedework>
<%@include file="/docs/header.jsp"%>

<page>eventList</page>

<%
  try {
%>
<%@include file="/docs/event/eventListRoot.jsp"%><%--
  Output the writable calendars --%>
  <calendars>
    <c:forEach var="calendar" items="${sessionScope.bw_addcontent_collection_list}" >
      <calendar>
        <bw:emitCollection name="calendar" indent="  " full="false" noTag="true" />
      </calendar>
    </c:forEach>
  </calendars><%--
  Output the categories for UI filtering: --%>
  <bw:emitCategories name="bw_categories_list" scope="session"
                     tagName="categories" indent="  "/><%--
  Output the groups for UI filtering: --%>
  <groups>
    <c:forEach var="adminGroup" items="${sessionScope.bw_admin_groups}" >
      <group>
        <bw:emitText name="adminGroup" property="account"
                     tagName="name"/>
        <bw:emitText name="adminGroup" property="description"
                     tagName="desc"/>
        <bw:emitText name="adminGroup" property="principalRef"
                     tagName="principalRef"/>
        <bw:emitText name="adminGroup" property="ownerHref"
                     tagName="ownerHref"/>
      </group>
    </c:forEach>
  </groups>

  <%
  } catch (final Throwable t) {
    t.printStackTrace();
  }
%>
<%@include file="/docs/footer.jsp"%>

</bedework>
