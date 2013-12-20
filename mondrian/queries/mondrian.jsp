<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<jp:mondrianQuery id="query01" jdbcDriver="org.postgresql.Driver" jdbcUrl="jdbc:postgresql://postgres.mat.ub.edu:5432/olopezsa13" 
	catalogUri="/WEB-INF/queries/UBTickets.xml" jdbcUser="olopezsa13_adm" jdbcPassword="curs1314" connectionPooling="false"> 

	SELECT 
	{[Espacio]} ON ROWS,
	{[Measures].[Entradas Ingresos],[Measures].[Entradas Vendidas], [Measures].[Costo Mantenimiento],[Measures].[Ganancia]} ON COLUMNS
	FROM [Ventas_Entradas]
	WHERE ([Tiempo].[2013])

</jp:mondrianQuery>


<c:set var="title01" scope="session">Test Query uses Mondrian OLAP</c:set>
