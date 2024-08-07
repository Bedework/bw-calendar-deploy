<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix="c" %>
<%@ taglib uri='https://bedework.org/jsp/taglib/bedework' prefix='bw' %>

<bedework>
<%@include file="/docs/header.jsp"%>

<page>modAdminGroup</page>
<bw:emitText name="calForm" property="addingAdmingroup"
             tagName="creating"/>

<formElements>
  <bw:form action="admingroup/update" >
    <name>
      <c:if test="${calForm.addingAdmingroup}" >
        <bw:textField property="updAdminGroup.account" />
      </c:if>
      <c:if test="${!calForm.addingAdmingroup}" >
        <c:out value="${calForm.updAdminGroup.account}" />
      </c:if>
    </name>
    <desc><textarea><c:out value='${calForm.updAdminGroup.description}'/></textarea></desc>
    <bw:textField property="adminGroupGroupOwner"
                  tagName="groupOwner" />
    <bw:textField property="adminGroupEventOwner"
                  tagName="eventsOwner" />

    <!-- these are the values that may be submitted to the update action -->
    <submitButtons>
      <button type="add">addAdminGroup</button>
      <button type="update">updateAdminGroup</button>
      <button type="cancel">cancelled</button>
      <button type="delete">delete</button>
    </submitButtons>
  </bw:form>
</formElements>

<%@include file="/docs/footer.jsp"%>

</bedework>
