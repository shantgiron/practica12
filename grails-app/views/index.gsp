<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Dashboard</title>
</head>
<body>
    <content tag="nav">
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Usuarios<span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="usuario/create">Crear Usuario</a></li>
                <li><a href="usuario/index">Ver usuarios</a></li>

            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Departamentos <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="departamento/create">Crear Departamento</a></li>
                <li><a href="departamento/index">Ver departamentos</a></li>

            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Contacto <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="contacto/create">Crear Contacto</a></li>
                <li><a href="contacto/index">Ver Contactos</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Categoria <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="categoria/create">Crear Categoria</a></li>
                <li><a href="categoria/index">Ver Categorias</a></li>
            </ul>
        </li>
    </content>


    <div id="content" role="main">
        <section class="row colset-2-its">
            <h1>Bienvenido Usuario</h1>


            <div id="controllers" role="navigation">
                <h2>Available Controllers:</h2>
                <ul>
                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                        <li class="controller">
                            <g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link>
                        </li>
                    </g:each>
                </ul>
            </div>
        </section>
    </div>

</body>
</html>
