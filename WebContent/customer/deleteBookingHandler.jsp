<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ page import="booking.BookingDB" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
	int booking_id = Integer.parseInt(request.getParameter("booking_id"));
	BookingDB bookingDB = BookingDB.getInstance();
	int isCompleted = bookingDB.deleteBooking(booking_id, (String)session.getAttribute("id"));
	if(isCompleted == 1) {
%>
		<script>
		alert("삭제가 완료되었습니다.");
		location.href = "bookingList.jsp";
		</script>
<% 
	}
	else {
%>
		<script>
		alert("오류가 발생했습니다.");
		location.href = "bookingList.jsp";
		</script>
<% 		
	}
%>