@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros Interfase Entity'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_LIBROS145 as select from ztblibros0145
{
    key id_libro as IdLibro,
    key bi_categ as BiCateg,
@UI.selectionField: [ { position: 10 } ]
    titulo as Titulo,
    autor as Autor,
    editorial as Editorial,
    idioma as Idioma,
    paginas as Paginas,
   @Semantics.amount.currencyCode: 'moneda'
    precio as Precio, 
    moneda as Moneda,
    formato as Formato,
    url as Url
}
