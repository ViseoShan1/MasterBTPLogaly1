@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros-Clientes Ventas Interfases Entity'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_LIBROS_USUARIOS_145_ventas as select from ZI_LIBROS_USUARIOS_145
{
    key id_libro,
    count( distinct id_cliente  ) as ventas

} group by id_libro
