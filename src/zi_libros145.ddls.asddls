@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros Interfase Entity'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
define root view entity ZI_LIBROS145
  as select from ztblibros0145
  association[0..1] to ZI_LIBROS_USUARIOS_145_ventas as _ventas on $projection.IdLibro = _ventas.id_libro
  
  {
  key id_libro  as IdLibro,
      @Consumption.valueHelpDefinition : [ {  entity: {
        name: 'ZI_CATEGORIAS_LIBROS_145',
        element: 'BiCateg'
      }  } ]
  key bi_categ  as BiCateg,
      @UI.selectionField: [ { position: 10 } ]
      titulo    as Titulo,
      autor     as Autor,
      @Search.defaultSearchElement: true
      editorial as Editorial,
      idioma    as Idioma,
      paginas   as Paginas,
      @Semantics.amount.currencyCode: 'moneda'
      precio    as Precio,
      moneda    as Moneda,
      formato   as Formato,
      url       as Url,
      _ventas.ventas as totalventas
} 
