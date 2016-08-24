<%-- 
    Document   : index
    Created on : 08-10-2016, 05:01:54 PM
    Author     : Laboratorio
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <jsp:include page="header.jsp" />
        <div class="container">
            <div class="row">
                <div class="col s12">
                    <h3 class="light italic">Personas</h3>
                </div>
                <blockquote>${mens}</blockquote>
                <div class="col s12">
                    <form action="LugaAcceServ" name="FrmLuga">
                        <input type="text" name="nombLuga" id="nombLuga">
                        <button class="btn" type="submit" value="Guardar" name="CursBton">Guardar</button>
                    </form>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" />