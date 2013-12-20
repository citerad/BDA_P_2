<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<%--  the values for "arrow=xxx" are the names of the images jpivot/jpivot/table/arrow-xxx.gif
--%>


<jp:mondrianQuery id="query01" jdbcDriver="org.postgresql.Driver" jdbcUrl="jdbc:postgresql://postgres.mat.ub.edu:5432/olopezsa13" 
    catalogUri="/WEB-INF/queries/UBTickets.xml" jdbcUser="olopezsa13_adm" jdbcPassword="curs1314" connectionPooling="false"> 

	with member [Measures].[Ganancia] as '([Measures].[Entradas Ingresos] - [Measures].[Costo Mantenimiento])'
	member [Measures].[ROI] as '(([Measures].[Entradas Ingresos] - [Measures].[Costo Mantenimiento]) / [Measures].[Costo Mantenimiento])', format_string = IIf((((([Measures].[Entradas Ingresos] - [Measures].[Costo Mantenimiento]) / [Measures].[Costo Mantenimiento]) * 100.0) > 150.0), "|#.00%|arrow='up'", IIf((((([Measures].[Entradas Ingresos] - [Measures].[Costo Mantenimiento]) / [Measures].[Costo Mantenimiento]) * 100.0) < 150.0), "|#.00%|arrow='down'", "|#.00%|arrow='none'"))
	SELECT {[Measures].[ROI], [Measures].[Costo Mantenimiento], [Measures].[Entradas Ingresos], [Measures].[Entradas Vendidas],[Measures].[Ganancia]} ON COLUMNS,
  	{[Espectaculo]} ON ROWS
	FROM [Ventas_Entradas]
	WHERE ([Tiempo].[2013])
</jp:mondrianQuery>


<h1 style="color: #F00;">La m&eacute;trica ROI no es v&aacute;lida para las dimensiones Usuario y Edad</h1>

<c:set var="title01" scope="session">Arrows</c:set>
