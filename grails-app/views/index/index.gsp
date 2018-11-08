<g:applyLayout name="base">
    <content tag="contenido">
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
        <script>
            var departamentos = [];
            var arreglo = [];
            var categorias = [];
            var arreglo2 = [];
            <g:each in="${listaDepartamentos}" var="departamento">
            departamentos.push("${departamento.nombre}");
            </g:each>
            <g:each in="${arregloDePorcentajes}" var="a">
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
            <g:each in="${listaCategoria}" var="categoria">
            categorias.push("${categoria.nombre}");
            </g:each>
            <g:each in="${arregloDePorcentajes2}" var="a2">
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
    </content>
</g:applyLayout>