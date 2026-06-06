@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Categorias'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_categorias145 as select from ztbcatego0145
{
    key bi_categ as BiCateg,
    descripcion as Descripcion
}
