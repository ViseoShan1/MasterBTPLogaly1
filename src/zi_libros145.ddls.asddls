@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_LIBROS145
  as select from ztblibros0145 as libros
  association [0..*] to ZI_CLIENTES_LIBROS        as _clnlib       on $projection.IdLibro = _clnlib.IdLibro
  association [1]    to ZI_LIBROS_PER_CLIENTE_145 as _clnlibamount on $projection.IdLibro = _clnlibamount.IdLibro
{
  key libros.id_libro     as IdLibro,
  key libros.bi_categ     as BiCateg,
      libros.titulo       as Titulo,
      libros.autor        as Autor,
      libros.editorial    as Editorial,
      libros.idioma       as Idioma,
      libros.paginas      as Paginas,
      @Semantics.amount.currencyCode: 'Moneda'
      libros.precio       as Precio,
      libros.moneda       as Moneda,
      libros.formato      as Formato,
      libros.url          as Url,
      _clnlibamount.Total as Total,
      case
       when _clnlibamount.Total = 0 then 0
       when _clnlibamount.Total = 1 then 1
       when _clnlibamount.Total = 2 then 2
       else
         3
         end              as TotalCritiallity,
      _clnlib 

}
