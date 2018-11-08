<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="volver" />
        <g:set var="entityName" value="${message(code: 'propiedad.label', default: 'Propiedad')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-propiedad" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-propiedad" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.propiedad}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.propiedad}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            
            <!--<div>
            <p>Nombre: ${propiedad.vendedor.nombre}</p>
            <p>Apellido: ${propiedad.vendedor.apellido}</p>
            <p>Dni: ${propiedad.vendedor.dni}</p>
            <p>Direccion: ${propiedad.vendedor.direccion}</p>
            <p>Telefono: ${propiedad.vendedor.telefono}</p>
            <p>Email: ${propiedad.vendedor.email}</p>
            </div>-->

        <ol class="property-list vendedor">
        <li class="fieldcontain">
            <span id="nombre-label" class="property-label">Nombre</span>
            <div class="property-value" aria-labelledby="nombre-label"> ${propiedad.vendedor.nombre}</div>
        </li>
    
        <li class="fieldcontain">
            <span id="apellido-label" class="property-label">Apellido</span>
            <div class="property-value" aria-labelledby="apellido-label"> ${propiedad.vendedor.apellido}</div>
        </li>
    
        <li class="fieldcontain">
            <span id="dni-label" class="property-label">Dni</span>
            <div class="property-value" aria-labelledby="dni-label"> ${propiedad.vendedor.dni}</div>
        </li>
    
        <li class="fieldcontain">
            <span id="direccion-label" class="property-label">Direccion</span>
            <div class="property-value" aria-labelledby="direccion-label"> ${propiedad.vendedor.direccion}</div>
        </li>
    
        <li class="fieldcontain">
            <span id="telefono-label" class="property-label">Telefono</span>
            <div class="property-value" aria-labelledby="telefono-label"> ${propiedad.vendedor.telefono}</div>
        </li>
    
        <li class="fieldcontain">
            <span id="email-label" class="property-label">Email</span>
            <div class="property-value" aria-labelledby="email-label"> ${propiedad.vendedor.email}</div>
        </li>
        </ol>

            <g:form resource="${this.propiedad}" method="POST">
                <fieldset class="form">
                    <f:all bean="propiedad"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
