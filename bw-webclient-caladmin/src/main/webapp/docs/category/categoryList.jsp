<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix="c" %>

<bedework>
<%@include file="/docs/header.jsp"%>

<page>categoryList</page>
<categories>
  <%
    final String includeArchived = request.getParameter("includeArchived");
    if (includeArchived != null) {
      out.println("  <includeArchived>" + includeArchived +
                          "</includeArchived>");
    }
  %>
  <bw:emitCategories name="bw_editable_categories_list" scope="session"
                     indent="  "/>
</categories>

<%@include file="/docs/footer.jsp"%>

</bedework>
