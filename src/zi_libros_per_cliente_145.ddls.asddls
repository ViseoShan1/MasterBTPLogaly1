@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros por clientes'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_LIBROS_PER_CLIENTE_145 as select from ztbclntslib0145
{
    key id_libro as IdLibro,
   count( distinct id_cliente ) as Total
} group by id_libro
