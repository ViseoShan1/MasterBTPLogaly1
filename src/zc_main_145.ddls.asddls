@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consupmtion Main'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_MAIN_145
 provider contract transactional_query
  as projection on ZI_MAIN_145
{
    key IdLibro,
    key BiCateg,
    Titulo,
    Autor,
    Editorial,
    Idioma,
    Paginas,
    @Semantics.amount.currencyCode: 'Moneda'  
    Precio,
    Moneda,
    Formato,
    Url,
    Total,
    TotalCritiallity,
    /* Associations */
    _clnlib 
}
