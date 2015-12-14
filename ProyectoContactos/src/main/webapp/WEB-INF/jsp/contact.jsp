<%-- 
    Document   : contact
    Created on : 26/10/2015, 06:19:42 PM
    Author     : arturo
--%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <title>Agenda</title>
        <script src="<c:url value="/resources/js/jquery.min.js" />"></script>
        <script src="<c:url value="/resources/js/funciones.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
        <script src="<c:url value="/resources/js/bootbox.min.js" />"></script>
        <script src="<c:url value="/resources/js/validator.js" />"></script>
        <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"  type="text/css" />
        <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet"  type="text/css" />
    </head>
    <body>
    <center><h2><spring:message code="label.title"/></h2></center>
            <form:form method="post" action="add.html" commandName="contact" data-toggle="validator">
        <br>
        <div class="form-group">
            <form:label path="firstname" class="col-sm-1 control-label"><spring:message code="label.firstname"/></form:label>
                <div class="col-sm-4">
                <form:input path="firstname" class="form-control" maxlength="30" required="required" placeholder="First Name"  />
                <span class="glyphicon form-control-feedback icon-validator" aria-hidden="true"></span>
            </div>

        </div>
        <div class="form-group">
            <br>
            <form:label path="lastname" class="col-sm-1 control-label"><spring:message code="label.lastname"/></form:label>
                <div class="col-sm-4">
                <form:input path="lastname" class="form-control" maxlength="30" required="required" placeholder="Last Name"  />
                <span class="glyphicon form-control-feedback icon-validator" aria-hidden="true"></span>
            </div>

        </div>
        <div class="form-group">
            <br>
            <form:label path="email" class="col-sm-1 control-label"><spring:message code="label.email"/></form:label>
                <div class="col-sm-4">
                <form:input path="email" type="email" data-error="Debe ingresar un correo valido" class="form-control" maxlength="30" required="required" placeholder="Email"  />
                <span class="glyphicon form-control-feedback icon-validator" aria-hidden="true"></span>
            </div>

        </div>
        <div class="form-group">
            <br>
            <form:label path="telephone" class="col-sm-1 control-label"><spring:message code="label.telephone"/></form:label>
                <div class="col-sm-4">
                <form:input path="telephone" type="text" class="form-control" maxlength="15" required="required" placeholder="Telephone" />
                <span class="glyphicon form-control-feedback icon-validator" aria-hidden="true"></span>
            </div>

            <div class="col-sm-offset-3 col-sm-6 boton">
                <input type="submit" class="btn btn-success" value="<spring:message code="label.addcontact"/>"/>
            </div>
        </div>
        <br><br>
    </form:form>

    <c:if test="${!empty contactList}">
        <div class="table-responsive">
            <table class="table table-hover">
                <thead>
                    <tr class="table_head">  
                        <th><spring:message code="label.firstname"/></th>
                        <th><spring:message code="label.email"/></th>
                        <th><spring:message code="label.telephone"/></th>
                        <th>Opciones</th>
                    </tr>
                </thead>
                <tbody class="table-contenido">
                    <c:forEach items="${contactList}" var="contact">
                        <tr>
                            <td>${contact.lastname}, ${contact.firstname} </td>
                            <td>${contact.email}</td>
                            <td>${contact.telephone}</td>
                            <td><a href="delete/${contact.id}"><i class='glyphicon glyphicon-remove'></i></a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </c:if>

</body>
</html>

