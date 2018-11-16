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

    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Sesion <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><g:link controller="logout" action="index"> Cerrar Sesion</g:link></li>
        </ul>
    </li>
</content>


<div id="content" role="main">
    <section class="row colset-2-its">
        <h1>Bienvenido Usuario</h1>



    </section>

    <div class="alert alert-primary">
        <div class="alert-link">
            <div class="row">
                <div class="col-6 mx-auto mt-3">
                    <div class="card">
                        <div class="card-body">
                            <canvas id="myChart"></canvas>
                        </div>
                    </div>
                    <div class="card bg-light">
                        <div class="card-body">
                            <canvas id="myChart2"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
<script>
    var departamentos = [];
    var arreglo = [];
    var categorias = [];
    var arreglo2 = [];
    <g:each in="${departamentos}" var="departamento">
    departamentos.push("${departamento.nombre}");
    </g:each>
    <g:each in="${cantContactos}" var="a">
    arreglo.push(${a});
    </g:each>
    var ctx = document.getElementById("myChart");
    var myChart = new Chart(ctx, {
        type: 'pie',
        data: {
            labels: departamentos,
            datasets: [{
                label: 'Porcentaje de contacto por departamento',
                data: arreglo,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
        }
    });
    <g:each in="${categorias}" var="categoria">
    categorias.push("${categoria.nombre}");
    </g:each>
    <g:each in="${cantContactos2}" var="a2">
    arreglo2.push(${a2});
    </g:each>
    var ctx = document.getElementById("myChart2");
    var myChart = new Chart(ctx, {
        type: 'pie',
        data: {
            labels: categorias,
            datasets: [{
                label: 'Porcentaje de contacto por categoria',
                data: arreglo2,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
        }
    });
</script>
</body>
</html>
