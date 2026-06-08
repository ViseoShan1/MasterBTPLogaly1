@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZTB_ACC_CATEG'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZI_ACCCATEG_145 as select from ztbacccateg0145 as catego
{
    key catego.bi_categ as BiCateg,
    key catego.tipo_acceso as TipoAcceso
}
