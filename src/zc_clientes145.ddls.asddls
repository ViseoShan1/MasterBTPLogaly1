@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros Interfase Entity'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_CLIENTES145 as select from ztbclientes0145 as clientes
inner join ztbclntslib0145 as clnts on clnts.id_cliente = clientes.id_cliente
{
    key clnts.id_libro as IdLibro,
    key clientes.id_cliente as IdCliente,
    key clientes.tipo_acceso as TipoAcceso,
    clientes.nombre as Nombre,
    clientes.apellidos as Apellidos,
    clientes.email as Email,
    clientes.url as Url
}
