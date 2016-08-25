<%-- 
    Document   : index
    Created on : 08-10-2016, 05:01:54 PM
    Author     : Laboratorio
--%>
<%@page import="com.sv.udb.controlador.LugaAcceCtrl"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://displaytag.sf.net/el" prefix="display" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <jsp:include page="header.jsp" />
        <div class="container">
            <div class="row">
                <div class="col s12">
                    <h3 class="light italic">Lugar de Acceso</h3>
                </div>
                <div class="row col s12"><blockquote class="bold">${mensAler}</blockquote></div>
                <form class="" method="post" action="LugaAcceServ" name="FrmLuga">
                <div class="col s12">
                    <div class="col s12">
                        <input type="hidden" name="CodiLuga" value="${CodiLuga}"/>
                        <label for="date2">Lugar de Acceso:</label>
                        <input type="text" name="nombLuga" id="nombLuga" value="${nombLuga}">
                    </div>
                </div>
                <br/>
                <div class="row">
                    <div class="col s12">
                        <div class="col s12 m4 l4" id="buton"><button class="btn waves-effect waves-light teal darken-3 col s12" type="submit" name="CursBton" value="Guardar">Guardar</button></div>
                        <div class="col s12 m4 l4" id="buton"><button class="btn waves-effect waves-light teal darken-3 col s12" type="submit" name="CursBton" value="Modificar">Modificar</button></div>
                        <div class="col s12 m4 l4" id="buton"><button class="btn waves-effect waves-light teal darken-3 col s12" type="submit" name="CursBton" value="Eliminar">Eliminar</button></div>
                    </div>
                </div>
                </form>
                <br>
                <div class="row" id="table" >
                <form method="POST" name="Frm" action="LugaAcceServ">
                    <% request.setAttribute( "demoAttr", new LugaAcceCtrl().ConsTodo()); %>
                <display:table id="Persona" name="demoAttr" class="bordered highlight centered">
                    <display:column property="nombLugaAcce" title="Nombres" sortable="true"/>
                    <display:column property="esta" title="Estado" sortable="true"/>
                    <display:column title="Seleccionar" sortable="true">
                        <input type="radio" name="codiPersRadio" id="${Persona.codiLugaAcce}" value="${Persona.codiLugaAcce}"/><label for="${Persona.codiLugaAcce}"></label>
                    </display:column>
                </display:table>
                    <br/>
                    <div class="row">
                        <div class="col s12">
                           <div class="col s12" id="buton"><button class="btn waves-effect waves-light teal darken-3 col s12" type="submit" name="CursBton" value="Consultar">Consultar</button></div>
                        </div>
                    </div>
                </form>
            </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" />