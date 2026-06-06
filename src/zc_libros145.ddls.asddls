@AbapCatalog.sqlViewName: 'Z145001'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros Interfase Entity'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view ZC_LIBROS145 as select from ztblibros0145 as libros
inner join ztbacccateg0145 as catego on libros.bi_categ = catego.bi_categ
left outer join ZC_clnts_lib_0145 as _Ventas on libros.id_libro = _Ventas.IdLibro
association [0..*] to ZC_CLIENTES145 as _Clientes on $projection.IdLibro = _Clientes.IdLibro
{
 
    key libros.id_libro as IdLibro,    
    libros.bi_categ as BiCateg ,
    libros.titulo as Titulo,
    libros.autor as Autor,
    libros.editorial as Editorial,
    libros.idioma as Idioma,
    libros.paginas as Paginas,
    case
    when _Ventas.ventas < 1 then 0
    when _Ventas.ventas = 1 then 1
    when _Ventas.ventas = 2 then 2
    when _Ventas.ventas > 2 then 3
    else    0
   end as Ventas,    
@Semantics.amount.currencyCode : 'Moneda'    
    libros.precio as Precio,
@Semantics.currencyCode: true    
    libros.moneda as Moneda,
    libros.formato as Formato,
    libros.url as Url
    
    
}
