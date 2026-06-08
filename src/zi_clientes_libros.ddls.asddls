@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes libros'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_CLIENTES_LIBROS as select from ztbclntslib0145 as ventas
association[0..*] to ZI_CLIENTES_145 as _clientes on $projection.IdCliente = _clientes.IdCliente
{
    key ventas.id_cliente as IdCliente,
    key ventas.id_libro as IdLibro,
    key _clientes.TipoAcceso as TipoAcceso,
    _clientes.Nombre as Nombre,
    _clientes.Apellidos as Apellidos,
    _clientes.Email as Email,
    _clientes.Url as Url 
}
