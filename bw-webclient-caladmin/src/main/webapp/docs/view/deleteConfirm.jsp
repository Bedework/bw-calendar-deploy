<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix="c" %>
<%@ taglib uri='https://bedework.org/jsp/taglib/bedework' prefix='bw' %>

<bedework>
<%@include file="/docs/header.jsp"%>

<page>deleteViewConfirm</page>

<c:set var="curView" value="${calForm.view}"/>
<currentView>
  <bw:emitText name="curView" property="name" />
  <c:forEach var="path" items="${curView.collectionPaths}">
    <bw:emitText name="path"/>
  </c:forEach>
</currentView>

<%@include file="/docs/footer.jsp"%>
</bedework>
