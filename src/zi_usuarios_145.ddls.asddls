@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes Interfase Entity'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_USUARIOS_145 as select from ztbclientes0145 as clientes
{
    key clientes.id_cliente as IdCliente,
    key clientes.tipo_acceso as TipoAcceso,
    clientes.nombre as Nombre,
    clientes.apellidos as Apellidos,
    clientes.email as Email,
    clientes.url as Url
}
