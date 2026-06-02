@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Categorias Libros'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_CATEGORIAS_LIBROS_145 as select from ztbcatego0145
{
    key bi_categ as BiCateg,
    descripcion as Descripcion
}
