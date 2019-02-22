 <!DOCTYPE html>
 <html>
 <title> Reportes de Quejas y Sugerencias</title>
 <head>
     <style>
     table{

        font-family:arial, sans-serif;
        border-collapse: collapse;
        width: 100%;
     }
td,th {
 border : 1px solid #dddddd;
 text-align: left;
 padding:  8px;

}

tr:nth-child(even){

    background-color: #dddddd;
}
</style>
 </head>
 <body>
    <h2> Reportes de Quejas y Sugerencias </h2>
    <table>
        <thead>
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th>Id Usuario</th>
                <th>Fecha</th>
            </tr>
        </thead>
        <tbody>
            @foreach($reportesugerencias as $reposuge)
            <tr>
                <td>{{ $reposuge->id }}</td>
                <td>{{ $reposuge->descripcion }}</td>
                <td>{{ $reposuge->user_id }}</td>
                <td>{{ $reposuge->created_at}}</td>
            </tr>
            @endforeach
        </tbody>
    </table>

    </body>
    </html>
