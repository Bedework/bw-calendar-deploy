<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix="c" %>

<bedework>
<%@include file="/docs/header.jsp"%>

<page>modCategory</page>

  <bw:emitText name="calForm" property="addingCategory"
               tagName="creating"/>
  <bw:emitCategory name="calForm"  property="category"
                   tagName="currentCategory" indent="  "/>

<%@include file="/docs/footer.jsp"%>

</bedework>
