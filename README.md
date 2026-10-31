# ProductosApi

API REST CRUD de productos con ASP.NET Core, ADO.NET, SQL Server y Swagger.

## Base de datos
El script está en `Database/script.sql`. Ejecutarlo en SSMS antes de correr la API.
Configurar la cadena de conexión en `appsettings.json`.

## Flujo
1. El cliente (Swagger) envía una petición HTTP al Controller (`/api/productos`).
2. El Controller llama a la interface `IProductoRepository`, inyectada por dependencias.
3. `ProductoRepository` abre la conexión a SQL Server con la cadena de `appsettings.json`.
4. Ejecuta la consulta SQL parametrizada (SELECT, INSERT, UPDATE, DELETE o LIKE para buscar).
5. El resultado regresa al Controller, que responde en JSON con el código HTTP correspondiente (200, 201, 204 o 404).

## Endpoints
- GET /api/productos
- GET /api/productos/{id}
- GET /api/productos/buscar?texto=
- POST /api/productos
- PUT /api/productos/{id}
- DELETE /api/productos/{id}
