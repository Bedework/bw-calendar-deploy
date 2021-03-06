<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix="c" %>
<%@ taglib uri='bedework' prefix='bw' %>

    <c:if test="${not empty event.originator}">
      <bw:emitText name="event" property="originator"/>
    </c:if>
    <c:if test="${event.organizerSchedulingObject}" >
      <organizerSchedulingObject />
    </c:if>
    <c:if test="${event.attendeeSchedulingObject}" >
      <attendeeSchedulingObject />
    </c:if>
    <c:if test="${not empty event.organizer}">
      <c:set var="organizer" value="${event.organizer}"/>
      <organizer>
        <bw:emitText name="organizer" property="cn"/><%--
          Value: string - cn of the organizer --%>
        <bw:emitText name="organizer" property="dir"/><%--
              Value: URI - link to a directory for lookup --%>
        <bw:emitText name="organizer" property="language"/><%--
            Value: string - language code --%>
        <bw:emitText name="organizer" property="sentBy"/><%--
          Value: string - usually mailto url --%>
        <bw:emitText name="organizer" property="organizerUri"/><%--
          Value: string - u --%>
      </organizer>
    </c:if>
    <c:if test="${not empty event.attendees}">
      <attendees>
        <c:forEach var="attendee" items="${event.attendees}">
          <attendee>
            <bw:emitText name="attendee" property="id"/><%--
                Value: integer - attendee id --%>
            <bw:emitText name="attendee" property="cn"/><%--
              Value: string - cn of the attendee --%>
            <bw:emitText name="attendee" property="cuType"/><%--
              Value: string - type of calendar user --%>
            <bw:emitText name="attendee" property="delegatedFrom"/><%--
                   mailto url --%>
            <bw:emitText name="attendee" property="delegatedTo"/><%--
                   mailto url --%>
            <bw:emitText name="attendee" property="dir"/><%--
                  Value: URI - link to a directory for lookup --%>
            <bw:emitText name="attendee" property="member"/>
            <bw:emitText name="attendee" property="language"/><%--
                Value: string - language code --%>
            <bw:emitText name="attendee" property="sentBy"/><%--
              Value: string - usually mailto url --%>
            <bw:emitText name="attendee" property="rsvp"/>
            <bw:emitText name="attendee" property="role"/>
            <bw:emitText name="attendee" property="partstat"/>
            <bw:emitText name="attendee" property="attendeeUri"/>
            <bw:emitText name="attendee" property="scheduleStatus"/>
            <bw:emitText name="attendee" property="scheduleAgent"/>
          </attendee>
        </c:forEach>
      </attendees>
    </c:if>
    <c:if test="${not empty event.recipients}">
      <recipients>
        <c:forEach var="recipient" items="${event.recipients}" >
          <bw:emitText name="recipient" tagName="recipient"/>
        </c:forEach>
      </recipients>
    </c:if>
    <c:if test="${not empty event.comments}">
      <comments>
        <c:forEach var="comment" items="${event.comments}" >
          <bw:emitText name="comment" property="value"/>
        </c:forEach>
      </comments>
    </c:if>

