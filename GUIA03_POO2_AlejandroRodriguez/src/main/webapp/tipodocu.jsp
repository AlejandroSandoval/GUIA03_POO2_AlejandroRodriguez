<%-- 
    Document   : tipodocu
    Created on : 08-27-2016, 08:14:28 PM
    Author     : aleso
--%>

<%@page import="com.sv.udb.controlador.TipoDocuCtrl"%>
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
                    <h3 class="light italic">Tipo de Documento</h3>
                </div>
                <div class="row col s12"><blockquote class="bold">${mensAler}</blockquote></div>
                <form class="" method="post" action="TipoDocuServ" name="FrmLuga">
                <div class="col s12">
                    <div class="col s12">
                        <input type="hidden" name="CodiTipo" value="${CodiTipo}"/>
                        <label for="date2">Tipo de Documento:</label>
                        <input type="text" name="nombTipo" id="nombLuga" value="${nombTipo}">
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
                <form method="POST" name="Frm" action="TipoDocuServ">
                    <% request.setAttribute( "demoAttr", new TipoDocuCtrl().ConsTodo()); %>
                <display:table id="Persona" name="demoAttr" class="bordered highlight centered">
                    <display:column property="nombTipoDocu" title="Nombres" sortable="true"/>
                    <display:column property="esta" title="Estado" sortable="true"/>
                    <display:column title="Seleccionar" sortable="true">
                        <input type="radio" name="codiPersRadio" id="${Persona.codiTipoDocu}" value="${Persona.codiTipoDocu}"/><label for="${Persona.codiTipoDocu}"></label>
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