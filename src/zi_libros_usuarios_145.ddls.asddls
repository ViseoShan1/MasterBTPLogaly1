@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros-Clientes Interfase Entity'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_LIBROS_USUARIOS_145 as select from  ztbclntslib0145 as libclient
 
{
    key libclient.id_cliente,
    key libclient.id_libro
}
