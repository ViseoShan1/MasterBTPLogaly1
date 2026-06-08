@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_MAIN_145 as select from ZI_LIBROS145 as libros
{
    key libros.IdLibro,
    key libros.BiCateg,
    libros.Titulo,
    libros.Autor,
    libros.Editorial,
    libros.Idioma,
    libros.Paginas,
    @Semantics.amount.currencyCode: 'Moneda'
    libros.Precio,
    libros.Moneda,
    libros.Formato,
    libros.Url,
    libros.Total,
    libros.TotalCritiallity,
    libros._clnlib
}
