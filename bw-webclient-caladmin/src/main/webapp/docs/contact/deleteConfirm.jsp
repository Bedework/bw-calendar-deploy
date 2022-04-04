<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix="c" %>
<%@ taglib uri='struts-html' prefix='html' %>
<%@ taglib uri='struts-genurl' prefix='genurl' %>
<%@ taglib uri='bedework' prefix='bw' %>
<html:xhtml/>

<bedework>
<%@include file="/docs/header.jsp"%>

<page>deleteContactConfirm</page>
<tab>main</tab>

<c:set var="contact" value="${calform.contact}"/>
<contact>
  <bw:emitText name="contact" property="cn.value"
               tagName="name"/>
  <bw:emitText name="contact" property="phone" />
  <c:if test="${not empty contact.email}">
    <bw:emitText name="contact" property="email"/>
  </c:if>
  <c:if test="${not empty contact.link}">
    <bw:emitText name="contact" property="link" />
  </c:if>
</contact>

<formElements>
  <genurl:form action="contact/delete.do" >
    <html:submit property="cancelled" value="Cancel"/>
    <html:submit property="deleteContactOK" value="Delete"/>
  </genurl:form>
</formElements>

<%@include file="/docs/footer.jsp"%>

</bedework>
