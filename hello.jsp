<HTML>
<BODY>

<%@ include file="config.jsp" %>


<%
    // This scriptlet declares and initializes "date"
    System.out.println( "Evaluating date now" );
    java.util.Date date = new java.util.Date();
%>
Hello!  The time is now
<%
    // This scriptlet generates HTML output
	out.println( String.valueOf( date ));
	out.println( "<BR>Your machine's address is " );
	out.println( request.getRemoteHost());
%>

<p><b>Making a table:</b></p>
<TABLE BORDER=2>
<%

     for ( int i = 0; i < n; i++ ) {
        %>
        <TR>
        <TD>Number</TD>
        <TD><%= i+1 %></TD>
        </TR>
        <%
    }
%>
</TABLE>

</BODY>
</HTML>

