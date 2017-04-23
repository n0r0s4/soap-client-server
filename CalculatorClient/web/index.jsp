<%-- 
    Document   : index
    Created on : 21/04/2017, 14:26:41
    Author     : alumne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Test calculator</h1>
        
        <form>
            <label>Number 1: </label>
            <input type="number" name="n1" placeholder="number 1" required/>
            <br/>
            <label>Operation:</label>
            <select name="operation">
               <option value="+">ADD</option>
               <option value="-">SUBS</option>
               <option value="*">MULT</option>
               <option value="/">DIV</option> 
            </select> 
            <br/>
            <label>Number 2: </label>           
            <input type="number" name="n2" placeholder="number 2" required/>                   
            <br/><br/>
            <input type="submit" name="submit" value="calculate"/>
        </form>
    <%-- start web service invocation --%><hr/>
    <%
    try {
        String operation ="";
        double n1=0,n2=0;
        
        if(request.getParameter("submit")!=null){
            operation = request.getParameter("operation");
            n1 = Double.parseDouble(request.getParameter("n1"));
            n2 = Double.parseDouble(request.getParameter("n2"));
          
        
            client.CServiceServer_Service service = new client.CServiceServer_Service();
            client.CServiceServer port = service.getCServiceServerPort();
             // TODO initialize WS operation arguments here
            /*java.lang.String n1 = "";
            java.lang.String n2 = "";
            java.lang.String operation = "";*/
            // TODO process result here
            
            double result = port.calc(n1, n2, operation);
            out.println("Result: "+result);
        }
         
        
        
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
    </body>
</html>
