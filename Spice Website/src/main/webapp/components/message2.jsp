<%
String message2=(String)session.getAttribute("message2");

if(message2!=null){
	//prints
	//out.println(message);
%>
<div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong><%= message2%></strong> 
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<%	
	
	session.removeAttribute("message2");
	
}
%>