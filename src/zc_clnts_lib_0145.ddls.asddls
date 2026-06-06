@AbapCatalog.sqlViewName: 'ZVIEW1221'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: false
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Ventas'
@Metadata.ignorePropagatedAnnotations: true
define view ZC_clnts_lib_0145 as select from ztbclntslib0145
{
    key id_libro as IdLibro,
    count( distinct id_cliente ) as ventas

} group by id_libro
