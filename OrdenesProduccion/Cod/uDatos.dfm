object dmDatos: TdmDatos
  OldCreateOrder = False
  Height = 417
  Width = 521
  object SEnsambles: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    TableName = 'SEnsambles'
    Left = 32
    Top = 16
    object SEnsamblesFEN_CODIGO: TStringField
      FieldName = 'FEN_CODIGO'
      Size = 30
    end
    object SEnsamblesFEN_CODE: TAutoIncField
      FieldName = 'FEN_CODE'
    end
    object SEnsamblesFEN_CTDPLANTILLA: TFloatField
      FieldName = 'FEN_CTDPLANTILLA'
    end
    object SEnsamblesFEN_CODEPARTE: TStringField
      FieldName = 'FEN_CODEPARTE'
      Size = 30
    end
    object SEnsamblesFEN_CANTIDAD: TFloatField
      FieldName = 'FEN_CANTIDAD'
    end
    object SEnsamblesFEN_CODEPRESENTA: TStringField
      FieldName = 'FEN_CODEPRESENTA'
      Size = 30
    end
    object SEnsamblesFEN_ORIGENAUTO: TIntegerField
      FieldName = 'FEN_ORIGENAUTO'
    end
    object SEnsamblesFEN_FACTORPRESENTA: TFloatField
      FieldName = 'FEN_FACTORPRESENTA'
    end
    object SEnsamblesFEN_DETALLE: TMemoField
      FieldName = 'FEN_DETALLE'
      BlobType = ftMemo
    end
    object SEnsamblesFEN_OTRO1: TFloatField
      FieldName = 'FEN_OTRO1'
    end
    object SEnsamblesFEN_TIPORECORD: TSmallintField
      FieldName = 'FEN_TIPORECORD'
    end
  end
  object Sinventario: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    TableName = 'Sinventario'
    Left = 360
    Top = 16
    object SinventarioFI_CODIGO: TStringField
      FieldName = 'FI_CODIGO'
      Required = True
      Size = 30
    end
    object SinventarioFI_DESCRIPCION: TStringField
      FieldName = 'FI_DESCRIPCION'
      Required = True
      Size = 40
    end
    object SinventarioFI_CATEGORIA: TStringField
      FieldName = 'FI_CATEGORIA'
      Required = True
      Size = 30
    end
    object SinventarioFI_DESCRIPCIONDETALLADA: TMemoField
      FieldName = 'FI_DESCRIPCIONDETALLADA'
      BlobType = ftMemo
    end
    object SinventarioFI_VENDEDOR: TStringField
      FieldName = 'FI_VENDEDOR'
      Size = 30
    end
    object SinventarioFI_STATUS: TBooleanField
      FieldName = 'FI_STATUS'
    end
    object SinventarioFI_UNIDAD: TStringField
      FieldName = 'FI_UNIDAD'
      Size = 30
    end
    object SinventarioFI_TIPOCODIGOBARRA: TSmallintField
      FieldName = 'FI_TIPOCODIGOBARRA'
    end
    object SinventarioFI_IMAGEN: TGraphicField
      FieldName = 'FI_IMAGEN'
      BlobType = ftGraphic
    end
    object SinventarioFI_SUSTITUTO1: TStringField
      FieldName = 'FI_SUSTITUTO1'
      Size = 30
    end
    object SinventarioFI_SUSTITUTO2: TStringField
      FieldName = 'FI_SUSTITUTO2'
      Size = 30
    end
    object SinventarioFI_SUSTITUTO3: TStringField
      FieldName = 'FI_SUSTITUTO3'
      Size = 30
    end
    object SinventarioFI_REFERENCIA: TStringField
      FieldName = 'FI_REFERENCIA'
      Size = 30
    end
    object SinventarioFI_MARCA: TStringField
      FieldName = 'FI_MARCA'
      Size = 30
    end
    object SinventarioFI_MONEDA: TStringField
      FieldName = 'FI_MONEDA'
      Size = 30
    end
    object SinventarioFI_FACTORCONVERSION: TCurrencyField
      FieldName = 'FI_FACTORCONVERSION'
    end
    object SinventarioFI_UNDEXISTENCIA2: TStringField
      FieldName = 'FI_UNDEXISTENCIA2'
      Size = 30
    end
    object SinventarioFI_PUESTO: TStringField
      FieldName = 'FI_PUESTO'
      Size = 30
    end
    object SinventarioFI_SUJETOACOMISION: TBooleanField
      FieldName = 'FI_SUJETOACOMISION'
    end
    object SinventarioFI_MONTOCOMISION: TCurrencyField
      FieldName = 'FI_MONTOCOMISION'
    end
    object SinventarioFI_CUENTASCONTABLES: TSmallintField
      FieldName = 'FI_CUENTASCONTABLES'
    end
    object SinventarioFI_PESOPRODUCTO: TCurrencyField
      FieldName = 'FI_PESOPRODUCTO'
    end
    object SinventarioFI_DIASDEREPOSICION: TSmallintField
      FieldName = 'FI_DIASDEREPOSICION'
    end
    object SinventarioFI_PRESENTACION: TSmallintField
      FieldName = 'FI_PRESENTACION'
    end
    object SinventarioFI_GARANTIA: TIntegerField
      FieldName = 'FI_GARANTIA'
    end
    object SinventarioFI_SUSTITUTO4: TStringField
      FieldName = 'FI_SUSTITUTO4'
      Size = 30
    end
    object SinventarioFI_SUSTITUTO5: TStringField
      FieldName = 'FI_SUSTITUTO5'
      Size = 30
    end
    object SinventarioFI_MONTOCOMISIONP: TBooleanField
      FieldName = 'FI_MONTOCOMISIONP'
    end
    object SinventarioFI_DEPOSITOS: TBooleanField
      FieldName = 'FI_DEPOSITOS'
    end
    object SinventarioFI_OFERTAS: TBooleanField
      FieldName = 'FI_OFERTAS'
    end
    object SinventarioFI_VENCIMIENTOS: TBooleanField
      FieldName = 'FI_VENCIMIENTOS'
    end
    object SinventarioFI_CLASIFICACION: TIntegerField
      FieldName = 'FI_CLASIFICACION'
    end
    object SinventarioFI_MANEJOINVENTARIO: TIntegerField
      FieldName = 'FI_MANEJOINVENTARIO'
    end
    object SinventarioFI_SERIALES: TBooleanField
      FieldName = 'FI_SERIALES'
    end
    object SinventarioFI_CREACION: TDateField
      FieldName = 'FI_CREACION'
    end
    object SinventarioFI_INVENTARIOINICIALUNIDADES: TCurrencyField
      FieldName = 'FI_INVENTARIOINICIALUNIDADES'
    end
    object SinventarioFI_INVENTARIOINICIALCOSTO: TCurrencyField
      FieldName = 'FI_INVENTARIOINICIALCOSTO'
    end
    object SinventarioFI_CAPACIDAD: TCurrencyField
      FieldName = 'FI_CAPACIDAD'
    end
    object SinventarioFI_EXISTDECIMAL: TBooleanField
      FieldName = 'FI_EXISTDECIMAL'
    end
    object SinventarioFI_COMPUESTOSERIALES: TBooleanField
      FieldName = 'FI_COMPUESTOSERIALES'
    end
    object SinventarioFI_VENDEDORFIJO: TStringField
      FieldName = 'FI_VENDEDORFIJO'
      Size = 30
    end
    object SinventarioFI_VENDEDORFIJOACTIVO: TBooleanField
      FieldName = 'FI_VENDEDORFIJOACTIVO'
    end
    object SinventarioFI_MODELO: TStringField
      FieldName = 'FI_MODELO'
      Size = 50
    end
    object SinventarioFI_SUBCATEGORIA: TStringField
      FieldName = 'FI_SUBCATEGORIA'
      Size = 50
    end
    object SinventarioFI_PESOAFECTACOSTO: TBooleanField
      FieldName = 'FI_PESOAFECTACOSTO'
    end
    object SinventarioFI_IMPRESORA: TStringField
      FieldName = 'FI_IMPRESORA'
      Size = 50
    end
    object SinventarioBASE_AUTOINCREMENT: TAutoIncField
      FieldName = 'BASE_AUTOINCREMENT'
    end
    object SinventarioFI_ZEXTRA1: TCurrencyField
      FieldName = 'FI_ZEXTRA1'
    end
    object SinventarioFI_ZEXTRA2: TCurrencyField
      FieldName = 'FI_ZEXTRA2'
    end
    object SinventarioFI_ZEXTRA3: TCurrencyField
      FieldName = 'FI_ZEXTRA3'
    end
    object SinventarioFI_ZEXTRA4: TCurrencyField
      FieldName = 'FI_ZEXTRA4'
    end
    object SinventarioFI_ZEXTRA5: TCurrencyField
      FieldName = 'FI_ZEXTRA5'
    end
    object SinventarioFI_ZEXTRA6: TCurrencyField
      FieldName = 'FI_ZEXTRA6'
    end
    object SinventarioFI_ZEXTRA1VENTA: TBooleanField
      FieldName = 'FI_ZEXTRA1VENTA'
    end
    object SinventarioFI_ZEXTRA2VENTA: TBooleanField
      FieldName = 'FI_ZEXTRA2VENTA'
    end
    object SinventarioFI_ZEXTRA3VENTA: TBooleanField
      FieldName = 'FI_ZEXTRA3VENTA'
    end
    object SinventarioFI_ZEXTRA4VENTA: TBooleanField
      FieldName = 'FI_ZEXTRA4VENTA'
    end
    object SinventarioFI_ZEXTRA5VENTA: TBooleanField
      FieldName = 'FI_ZEXTRA5VENTA'
    end
    object SinventarioFI_ZEXTRA6VENTA: TBooleanField
      FieldName = 'FI_ZEXTRA6VENTA'
    end
    object SinventarioFI_ZEXTRA1VENTAMOD: TBooleanField
      FieldName = 'FI_ZEXTRA1VENTAMOD'
    end
    object SinventarioFI_ZEXTRA2VENTAMOD: TBooleanField
      FieldName = 'FI_ZEXTRA2VENTAMOD'
    end
    object SinventarioFI_ZEXTRA3VENTAMOD: TBooleanField
      FieldName = 'FI_ZEXTRA3VENTAMOD'
    end
    object SinventarioFI_ZEXTRA4VENTAMOD: TBooleanField
      FieldName = 'FI_ZEXTRA4VENTAMOD'
    end
    object SinventarioFI_ZEXTRA5VENTAMOD: TBooleanField
      FieldName = 'FI_ZEXTRA5VENTAMOD'
    end
    object SinventarioFI_ZEXTRA6VENTAMOD: TBooleanField
      FieldName = 'FI_ZEXTRA6VENTAMOD'
    end
    object SinventarioFI_INTERNET: TBooleanField
      FieldName = 'FI_INTERNET'
    end
    object SinventarioFI_BALANZA: TBooleanField
      FieldName = 'FI_BALANZA'
    end
    object SinventarioFI_CODIGOBARRA: TBooleanField
      FieldName = 'FI_CODIGOBARRA'
    end
    object SinventarioFI_PRECIOLISTA: TBooleanField
      FieldName = 'FI_PRECIOLISTA'
    end
    object SinventarioFI_APROVECHAPORC: TCurrencyField
      FieldName = 'FI_APROVECHAPORC'
    end
    object SinventarioFI_ARANCEL: TStringField
      FieldName = 'FI_ARANCEL'
      Size = 30
    end
  end
  object qrSeleccionarPlantillas: TDBISAMQuery
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    SQL.Strings = (
      'SELECT '
      '  Sinventario.FI_CODIGO Codigo,'
      '  Sinventario.FI_DESCRIPCION Descripcion,'
      '  COUNT(*) - 1 AS TotalComponentes'
      'FROM'
      ' Sinventario'
      
        ' LEFT OUTER JOIN SEnsambles ON (Sinventario.FI_CODIGO=SEnsambles' +
        '.FEN_CODIGO)'
      'WHERE'
      '  (FI_CLASIFICACION = 3)'
      'GROUP BY'
      '  Sinventario.FI_CODIGO,'
      '  Sinventario.FI_DESCRIPCION')
    Params = <>
    Left = 416
    Top = 88
    object qrSeleccionarPlantillasCodigo: TStringField
      FieldName = 'Codigo'
      Size = 30
    end
    object qrSeleccionarPlantillasDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 40
    end
    object qrSeleccionarPlantillasTotalComponentes: TIntegerField
      FieldName = 'TotalComponentes'
    end
  end
  object Sinvlote: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    TableName = 'Sinvlote'
    Left = 152
    Top = 16
    object SinvloteFL_CODIGO: TStringField
      FieldName = 'FL_CODIGO'
      Required = True
      Size = 30
    end
    object SinvloteFL_LOTE: TStringField
      FieldName = 'FL_LOTE'
      Required = True
      Size = 50
    end
    object SinvloteFL_RANDOM: TIntegerField
      FieldName = 'FL_RANDOM'
      Required = True
    end
    object SinvloteFL_CORRELATIVO: TAutoIncField
      FieldName = 'FL_CORRELATIVO'
    end
    object SinvloteFL_FECHA: TDateField
      FieldName = 'FL_FECHA'
    end
    object SinvloteFL_VENCIMIENTO: TDateField
      FieldName = 'FL_VENCIMIENTO'
    end
    object SinvloteFL_COSTO: TCurrencyField
      FieldName = 'FL_COSTO'
    end
    object SinvloteFL_PRECIO: TCurrencyField
      FieldName = 'FL_PRECIO'
    end
    object SinvloteFL_OFERTA: TCurrencyField
      FieldName = 'FL_OFERTA'
    end
    object SinvloteFL_INICIOOFERTA: TDateField
      FieldName = 'FL_INICIOOFERTA'
    end
    object SinvloteFL_FINOFERTA: TDateField
      FieldName = 'FL_FINOFERTA'
    end
    object SinvloteFL_NAMEOFERTA: TStringField
      FieldName = 'FL_NAMEOFERTA'
    end
    object SinvloteFL_EXISTENCIA: TBCDField
      FieldName = 'FL_EXISTENCIA'
    end
    object SinvloteFL_PUESTO: TStringField
      FieldName = 'FL_PUESTO'
      Size = 30
    end
    object SinvloteFL_TIPO: TIntegerField
      FieldName = 'FL_TIPO'
    end
    object SinvloteFL_COSTOIMPORTADO: TCurrencyField
      FieldName = 'FL_COSTOIMPORTADO'
    end
    object SinvloteFL_UTILIDADIMPORTADO: TCurrencyField
      FieldName = 'FL_UTILIDADIMPORTADO'
    end
    object SinvloteFL_PRECIOIMPORTADO: TCurrencyField
      FieldName = 'FL_PRECIOIMPORTADO'
    end
    object SinvloteFL_PORCENTUTILIDADIMP: TBooleanField
      FieldName = 'FL_PORCENTUTILIDADIMP'
    end
    object SinvloteFL_PORCENTUTILIDAD: TBooleanField
      FieldName = 'FL_PORCENTUTILIDAD'
    end
    object SinvloteFL_MONTOIMPUESTO1: TCurrencyField
      FieldName = 'FL_MONTOIMPUESTO1'
    end
    object SinvloteFL_MONTOIMPUESTO2: TCurrencyField
      FieldName = 'FL_MONTOIMPUESTO2'
    end
    object SinvloteFL_PRECIOSINIMPUESTO: TCurrencyField
      FieldName = 'FL_PRECIOSINIMPUESTO'
    end
    object SinvloteFL_UTILIDAD: TCurrencyField
      FieldName = 'FL_UTILIDAD'
    end
    object SinvloteFL_TIPOROUND: TIntegerField
      FieldName = 'FL_TIPOROUND'
    end
    object SinvloteFL_VISIBLE: TBooleanField
      FieldName = 'FL_VISIBLE'
    end
    object SinvloteFL_IMPUESTO1VISIBLE: TBooleanField
      FieldName = 'FL_IMPUESTO1VISIBLE'
    end
    object SinvloteFL_IMPUESTO2VISIBLE: TBooleanField
      FieldName = 'FL_IMPUESTO2VISIBLE'
    end
    object SinvloteFL_STATUS: TBooleanField
      FieldName = 'FL_STATUS'
    end
    object SinvloteBASE_AUTOINCREMENT: TAutoIncField
      FieldName = 'BASE_AUTOINCREMENT'
    end
  end
  object qrComponentes: TDBISAMQuery
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    SQL.Strings = (
      'SELECT'
      '  SEnsambles.FEN_CODEPARTE AS Codigo,'
      '  Sinventario.FI_DESCRIPCION AS Descripcion,'
      '  Sinvlote.FL_LOTE AS Lote,'
      '  SEnsambles.FEN_CANTIDAD AS Cantidad,'
      '  Sinvlote.FL_COSTO AS Costo,'
      '  Sinvlote.FL_Random AS Random,'
      '  Sinventario.FI_CLASIFICACION Clasificacion,'
      '  Sinventario.FI_MANEJOINVENTARIO TipoInventario'
      'FROM'
      ' SEnsambles'
      
        ' LEFT OUTER JOIN Sinvlote ON (SEnsambles.FEN_CODEPARTE=Sinvlote.' +
        'FL_CODIGO)'
      '  AND (SEnsambles.FEN_CODEPRESENTA=Sinvlote.FL_LOTE)'
      
        ' INNER JOIN Sinventario ON (SEnsambles.FEN_CODEPARTE=Sinventario' +
        '.FI_CODIGO)'
      'WHERE'
      '  (SEnsambles.FEN_CODIGO = :CodigoPlantilla)'
      'ORDER BY'
      '  SEnsambles.FEN_CODEPARTE')
    Params = <
      item
        DataType = ftString
        Name = 'CodigoPlantilla'
      end>
    Left = 32
    Top = 152
    ParamData = <
      item
        DataType = ftString
        Name = 'CodigoPlantilla'
      end>
    object qrComponentesCodigo: TStringField
      FieldName = 'Codigo'
      Size = 30
    end
    object qrComponentesDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 40
    end
    object qrComponentesLote: TStringField
      FieldName = 'Lote'
      Size = 50
    end
    object qrComponentesCantidad: TFloatField
      FieldName = 'Cantidad'
      DisplayFormat = '#0.00'
    end
    object qrComponentesExistencia: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Existencia'
      OnGetText = qrComponentesExistenciaGetText
      Calculated = True
    end
    object qrComponentesCosto: TCurrencyField
      FieldName = 'Costo'
      OnGetText = qrComponentesCostoGetText
      DisplayFormat = '#,##0.00'
    end
    object qrComponentesRandom: TIntegerField
      FieldName = 'Random'
    end
    object qrComponentesClasificacion: TIntegerField
      FieldName = 'Clasificacion'
    end
    object qrComponentesTipoInventario: TIntegerField
      FieldName = 'TipoInventario'
    end
  end
  object Susuarios: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    TableName = 'Susuarios'
    Left = 248
    Top = 16
    object SusuariosNombre: TStringField
      FieldName = 'Nombre'
      Required = True
      Size = 40
    end
    object SusuariosCode: TAutoIncField
      FieldName = 'Code'
    end
    object SusuariosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 40
    end
  end
  object SPAOrdenesConfiguracion: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    TableName = 'SPAOrdenesConfiguracion'
    Left = 160
    Top = 72
    object SPAOrdenesConfiguracionUsuario: TIntegerField
      FieldName = 'Usuario'
    end
    object SPAOrdenesConfiguracionNombre: TStringField
      FieldKind = fkLookup
      FieldName = 'Nombre'
      LookupDataSet = Susuarios
      LookupKeyFields = 'Code'
      LookupResultField = 'Nombre'
      KeyFields = 'Usuario'
      Lookup = True
    end
  end
  object tbEnsambles: TDBISAMTable
    Filter = 'FI_Clasificacion = 3'
    Filtered = True
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    TableName = 'Sinventario'
    Left = 32
    Top = 72
    object tbEnsamblesFI_CODIGO: TStringField
      FieldName = 'FI_CODIGO'
      Required = True
      Size = 30
    end
    object tbEnsamblesFI_DESCRIPCION: TStringField
      FieldName = 'FI_DESCRIPCION'
      Required = True
      Size = 40
    end
    object tbEnsamblesFI_CLASIFICACION: TIntegerField
      FieldName = 'FI_CLASIFICACION'
    end
    object tbEnsamblesCosto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Costo'
      OnGetText = tbEnsamblesCostoGetText
      Calculated = True
    end
    object tbEnsamblesPrecioSinImpuesto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PrecioSinImpuesto'
      OnGetText = tbEnsamblesPrecioSinImpuestoGetText
      Calculated = True
    end
    object tbEnsamblesImpuesto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Impuesto'
      OnGetText = tbEnsamblesImpuestoGetText
      Calculated = True
    end
    object tbEnsamblesPrecio: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Precio'
      OnGetText = tbEnsamblesPrecioGetText
      Calculated = True
    end
    object tbEnsamblesUtilidad: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Utilidad'
      OnGetText = tbEnsamblesUtilidadGetText
      Calculated = True
    end
    object tbEnsamblesRentabilidad: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Rentabilidad'
      OnGetText = tbEnsamblesRentabilidadGetText
      DisplayFormat = '#.00'
      Calculated = True
    end
  end
  object qrConsulta: TDBISAMQuery
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    Params = <>
    Left = 32
    Top = 248
  end
  object pdProgreso: TJvProgressComponent
    Caption = 'Procesando'
    Left = 456
    Top = 8
  end
  object qrSeleccionarComponentes: TDBISAMQuery
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    SQL.Strings = (
      'SELECT'
      '  Sinventario.FI_CODIGO Codigo,'
      '  Sinventario.FI_DESCRIPCION Descripcion,'
      '  Sinvlote.FL_LOTE Lote,'
      '  Sinvlote.FL_COSTO AS Costo,'
      '  Sinvlote.FL_Random AS Random,'
      '  Sinventario.FI_CLASIFICACION Clasificacion,'
      '  Sinventario.FI_MANEJOINVENTARIO TipoInventario'
      'FROM'
      ' Sinventario'
      
        ' LEFT OUTER JOIN Sinvlote ON (Sinventario.FI_CODIGO=Sinvlote.FL_' +
        'CODIGO)')
    Params = <>
    Left = 424
    Top = 144
    object qrSeleccionarComponentesCodigo: TStringField
      DisplayWidth = 20
      FieldName = 'Codigo'
      Size = 30
    end
    object qrSeleccionarComponentesDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 40
    end
    object qrSeleccionarComponentesLote: TStringField
      DisplayWidth = 30
      FieldName = 'Lote'
      Size = 50
    end
    object qrSeleccionarComponentesExistencia: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Existencia'
      OnGetText = qrSeleccionarComponentesExistenciaGetText
      Calculated = True
    end
    object qrSeleccionarComponentesCosto: TCurrencyField
      FieldName = 'Costo'
    end
    object qrSeleccionarComponentesRandom: TIntegerField
      FieldName = 'Random'
      Visible = False
    end
    object qrSeleccionarComponentesClasificacion: TIntegerField
      FieldName = 'Clasificacion'
      Visible = False
    end
    object qrSeleccionarComponentesTipoInventario: TIntegerField
      FieldName = 'TipoInventario'
      Visible = False
    end
  end
  object SEnsamblesDetalle: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    TableName = 'SEnsamblesDetalle'
    Left = 40
    Top = 344
    object SEnsamblesDetalleFED_DOCUMENTO: TStringField
      FieldName = 'FED_DOCUMENTO'
      Size = 10
    end
    object SEnsamblesDetalleFED_PRODUCTO: TStringField
      FieldName = 'FED_PRODUCTO'
      Size = 30
    end
    object SEnsamblesDetalleFED_AUTO: TAutoIncField
      FieldName = 'FED_AUTO'
    end
    object SEnsamblesDetalleFED_CODEPRINCIPAL: TStringField
      FieldName = 'FED_CODEPRINCIPAL'
      Size = 30
    end
    object SEnsamblesDetalleFED_FECHAEMISION: TDateField
      FieldName = 'FED_FECHAEMISION'
    end
    object SEnsamblesDetalleFED_STATUS: TSmallintField
      FieldName = 'FED_STATUS'
    end
    object SEnsamblesDetalleFED_CANTIDAD: TFloatField
      FieldName = 'FED_CANTIDAD'
    end
    object SEnsamblesDetalleFED_CANTIDADDESCARGA: TFloatField
      FieldName = 'FED_CANTIDADDESCARGA'
    end
    object SEnsamblesDetalleFED_COSTOUNITARIO: TFloatField
      FieldName = 'FED_COSTOUNITARIO'
    end
    object SEnsamblesDetalleFED_CODEPRESENTA: TStringField
      FieldName = 'FED_CODEPRESENTA'
      Size = 30
    end
    object SEnsamblesDetalleFED_ORIGENAUTO: TIntegerField
      FieldName = 'FED_ORIGENAUTO'
    end
    object SEnsamblesDetalleFED_FACTORPRESENTA: TFloatField
      FieldName = 'FED_FACTORPRESENTA'
    end
    object SEnsamblesDetalleFED_CANTIDADCIERRE: TFloatField
      FieldName = 'FED_CANTIDADCIERRE'
    end
    object SEnsamblesDetalleFED_ESPRESENTA: TBooleanField
      FieldName = 'FED_ESPRESENTA'
    end
    object SEnsamblesDetalleFED_TIPOOFERTA: TIntegerField
      FieldName = 'FED_TIPOOFERTA'
    end
    object SEnsamblesDetalleFED_RANDOMOPERACION: TIntegerField
      FieldName = 'FED_RANDOMOPERACION'
    end
    object SEnsamblesDetalleFED_EXISTENCIA: TFloatField
      FieldName = 'FED_EXISTENCIA'
    end
    object SEnsamblesDetalleFED_EXISTENCIADETALLE: TFloatField
      FieldName = 'FED_EXISTENCIADETALLE'
    end
    object SEnsamblesDetalleFED_PUESTOINV: TStringField
      FieldName = 'FED_PUESTOINV'
      Size = 50
    end
  end
  object SEnsamblesOrden: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    TableName = 'SEnsamblesOrden'
    Left = 152
    Top = 344
    object SEnsamblesOrdenFEO_DOCUMENTO: TStringField
      FieldName = 'FEO_DOCUMENTO'
      Size = 10
    end
    object SEnsamblesOrdenFEO_FECHAEMISION: TDateField
      FieldName = 'FEO_FECHAEMISION'
    end
    object SEnsamblesOrdenFEO_FECHAENTREGA: TDateField
      FieldName = 'FEO_FECHAENTREGA'
    end
    object SEnsamblesOrdenFEO_HORAEMISION: TTimeField
      FieldName = 'FEO_HORAEMISION'
    end
    object SEnsamblesOrdenFEO_NOORDENCOMPRA: TStringField
      FieldName = 'FEO_NOORDENCOMPRA'
    end
    object SEnsamblesOrdenFEO_CANTIDADORDEN: TFloatField
      FieldName = 'FEO_CANTIDADORDEN'
    end
    object SEnsamblesOrdenFEO_CODEPRODUCTO: TStringField
      FieldName = 'FEO_CODEPRODUCTO'
      Size = 30
    end
    object SEnsamblesOrdenFEO_STATUS: TSmallintField
      FieldName = 'FEO_STATUS'
    end
    object SEnsamblesOrdenFEO_NOITEMSINICIO: TIntegerField
      FieldName = 'FEO_NOITEMSINICIO'
    end
    object SEnsamblesOrdenFEO_COSTOINICIAL: TFloatField
      FieldName = 'FEO_COSTOINICIAL'
    end
    object SEnsamblesOrdenFEO_OTROCOSTO1: TFloatField
      FieldName = 'FEO_OTROCOSTO1'
    end
    object SEnsamblesOrdenFEO_OTROCOSTO1PORCENT: TFloatField
      FieldName = 'FEO_OTROCOSTO1PORCENT'
    end
    object SEnsamblesOrdenFEO_OTROCOSTO2: TFloatField
      FieldName = 'FEO_OTROCOSTO2'
    end
    object SEnsamblesOrdenFEO_OTROCOSTO2PORCENT: TFloatField
      FieldName = 'FEO_OTROCOSTO2PORCENT'
    end
    object SEnsamblesOrdenFEO_OTROCOSTO3: TFloatField
      FieldName = 'FEO_OTROCOSTO3'
    end
    object SEnsamblesOrdenFEO_OTROCOSTO3PORCENT: TFloatField
      FieldName = 'FEO_OTROCOSTO3PORCENT'
    end
    object SEnsamblesOrdenFEO_DETALLE: TMemoField
      FieldName = 'FEO_DETALLE'
      BlobType = ftMemo
    end
    object SEnsamblesOrdenFEO_USUARIO: TStringField
      FieldName = 'FEO_USUARIO'
    end
    object SEnsamblesOrdenFEO_COMPUTERNAME: TStringField
      FieldName = 'FEO_COMPUTERNAME'
      Size = 30
    end
    object SEnsamblesOrdenFEO_COSTOFINAL: TCurrencyField
      FieldName = 'FEO_COSTOFINAL'
    end
    object SEnsamblesOrdenFEO_FECHACIERRE: TDateField
      FieldName = 'FEO_FECHACIERRE'
    end
    object SEnsamblesOrdenFEO_RESPONSABLE: TStringField
      FieldName = 'FEO_RESPONSABLE'
      Size = 80
    end
    object SEnsamblesOrdenFEO_AUTORIZADOPOR: TStringField
      FieldName = 'FEO_AUTORIZADOPOR'
      Size = 80
    end
    object SEnsamblesOrdenFEO_PROPOSITO: TStringField
      FieldName = 'FEO_PROPOSITO'
      Size = 80
    end
    object SEnsamblesOrdenFEO_USUARIOCIERRE: TStringField
      FieldName = 'FEO_USUARIOCIERRE'
      Size = 10
    end
    object SEnsamblesOrdenFEO_COMPUTERCIERRE: TStringField
      FieldName = 'FEO_COMPUTERCIERRE'
      Size = 30
    end
    object SEnsamblesOrdenFEO_NOITEMSFINAL: TIntegerField
      FieldName = 'FEO_NOITEMSFINAL'
    end
    object SEnsamblesOrdenFEO_OTROCOSTOCIERRE1: TFloatField
      FieldName = 'FEO_OTROCOSTOCIERRE1'
    end
    object SEnsamblesOrdenFEO_OTROCOSTOCIERRE1PORCENT: TFloatField
      FieldName = 'FEO_OTROCOSTOCIERRE1PORCENT'
    end
    object SEnsamblesOrdenFEO_OTROCOSTOCIERRE2: TFloatField
      FieldName = 'FEO_OTROCOSTOCIERRE2'
    end
    object SEnsamblesOrdenFEO_OTROCOSTOCIERRE2PORCENT: TFloatField
      FieldName = 'FEO_OTROCOSTOCIERRE2PORCENT'
    end
    object SEnsamblesOrdenFEO_OTROCOSTOCIERRE3: TFloatField
      FieldName = 'FEO_OTROCOSTOCIERRE3'
    end
    object SEnsamblesOrdenFEO_OTROCOSTOCIERRE3PORCENT: TFloatField
      FieldName = 'FEO_OTROCOSTOCIERRE3PORCENT'
    end
    object SEnsamblesOrdenFEO_CANTIDADCIERRE: TFloatField
      FieldName = 'FEO_CANTIDADCIERRE'
    end
    object SEnsamblesOrdenFEO_MOTIVOANULACION: TMemoField
      FieldName = 'FEO_MOTIVOANULACION'
      BlobType = ftMemo
    end
    object SEnsamblesOrdenFEO_CLASIFICACODE: TIntegerField
      FieldName = 'FEO_CLASIFICACODE'
    end
  end
  object SinvDep: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    TableName = 'SinvDep'
    Left = 240
    Top = 344
    object SinvDepFT_TIPO: TSmallintField
      FieldName = 'FT_TIPO'
      Required = True
    end
    object SinvDepFT_CODIGOPRODUCTO: TStringField
      FieldName = 'FT_CODIGOPRODUCTO'
      Required = True
      Size = 30
    end
    object SinvDepFT_CODIGODEPOSITO: TIntegerField
      FieldName = 'FT_CODIGODEPOSITO'
      Required = True
    end
    object SinvDepFT_LOTE: TStringField
      FieldName = 'FT_LOTE'
      Size = 100
    end
    object SinvDepFT_LOTEAUTOINCREMENT: TIntegerField
      FieldName = 'FT_LOTEAUTOINCREMENT'
    end
    object SinvDepFT_NOLINEA: TIntegerField
      FieldName = 'FT_NOLINEA'
    end
    object SinvDepFT_STATUS: TSmallintField
      FieldName = 'FT_STATUS'
    end
    object SinvDepFT_PUESTO: TStringField
      FieldName = 'FT_PUESTO'
      Size = 30
    end
    object SinvDepFT_EXISTENCIA: TCurrencyField
      FieldName = 'FT_EXISTENCIA'
    end
    object SinvDepFT_EXISTENCIADETALLADA: TCurrencyField
      FieldName = 'FT_EXISTENCIADETALLADA'
    end
    object SinvDepFT_EXISTENCIAAPARTADA: TCurrencyField
      FieldName = 'FT_EXISTENCIAAPARTADA'
    end
    object SinvDepFT_EXISTENCIAORDENCOMPRA: TCurrencyField
      FieldName = 'FT_EXISTENCIAORDENCOMPRA'
    end
    object SinvDepFT_EXISTENCIAPEDIDO: TCurrencyField
      FieldName = 'FT_EXISTENCIAPEDIDO'
    end
    object SinvDepFT_INVENTARIOINICIALBS: TCurrencyField
      FieldName = 'FT_INVENTARIOINICIALBS'
    end
    object SinvDepFT_INVENTARIOINICIALBSCIERRE: TCurrencyField
      FieldName = 'FT_INVENTARIOINICIALBSCIERRE'
    end
    object SinvDepFT_INVENTARIOINICIALUND: TCurrencyField
      FieldName = 'FT_INVENTARIOINICIALUND'
    end
    object SinvDepFT_INVENTARIOINICIALCIERRE: TCurrencyField
      FieldName = 'FT_INVENTARIOINICIALCIERRE'
    end
    object SinvDepFT_CTDTRANSITO: TCurrencyField
      FieldName = 'FT_CTDTRANSITO'
    end
    object SinvDepFT_VISIBLE: TBooleanField
      FieldName = 'FT_VISIBLE'
    end
    object SinvDepFT_CODEBARRA: TAutoIncField
      FieldName = 'FT_CODEBARRA'
    end
    object SinvDepFT_EXISTENCIAAJUSTE: TFloatField
      FieldName = 'FT_EXISTENCIAAJUSTE'
    end
    object SinvDepBASE_AUTOINCREMENT: TAutoIncField
      FieldName = 'BASE_AUTOINCREMENT'
    end
    object SinvDepFT_CODE: TStringField
      FieldName = 'FT_CODE'
      Size = 30
    end
  end
  object SOperacionInv: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    TableName = 'SOperacionInv'
    Left = 312
    Top = 344
    object SOperacionInvFTI_AUTOINCREMENT: TAutoIncField
      FieldName = 'FTI_AUTOINCREMENT'
    end
    object SOperacionInvFTI_DOCUMENTO: TStringField
      FieldName = 'FTI_DOCUMENTO'
      Required = True
      Size = 15
    end
    object SOperacionInvFTI_TIPO: TIntegerField
      FieldName = 'FTI_TIPO'
      Required = True
    end
    object SOperacionInvFTI_STATUS: TIntegerField
      FieldName = 'FTI_STATUS'
    end
    object SOperacionInvFTI_VISIBLE: TBooleanField
      FieldName = 'FTI_VISIBLE'
    end
    object SOperacionInvFTI_FECHAEMISION: TDateTimeField
      FieldName = 'FTI_FECHAEMISION'
    end
    object SOperacionInvFTI_DEPOSITOSOURCE: TIntegerField
      FieldName = 'FTI_DEPOSITOSOURCE'
    end
    object SOperacionInvFTI_DEPOSITODESTINO: TIntegerField
      FieldName = 'FTI_DEPOSITODESTINO'
    end
    object SOperacionInvFTI_TOTALITEMS: TIntegerField
      FieldName = 'FTI_TOTALITEMS'
    end
    object SOperacionInvFTI_TOTALITEMSINICIAL: TIntegerField
      FieldName = 'FTI_TOTALITEMSINICIAL'
    end
    object SOperacionInvFTI_MONEDA: TIntegerField
      FieldName = 'FTI_MONEDA'
    end
    object SOperacionInvFTI_FACTORCAMBIO: TCurrencyField
      FieldName = 'FTI_FACTORCAMBIO'
    end
    object SOperacionInvFTI_TOTALCOSTO: TCurrencyField
      FieldName = 'FTI_TOTALCOSTO'
    end
    object SOperacionInvFTI_TOTALCOSTOREAL: TCurrencyField
      FieldName = 'FTI_TOTALCOSTOREAL'
    end
    object SOperacionInvFTI_CLASIFICACION: TIntegerField
      FieldName = 'FTI_CLASIFICACION'
    end
    object SOperacionInvFTI_DESCRIPCLASIFY: TStringField
      FieldName = 'FTI_DESCRIPCLASIFY'
      Size = 80
    end
    object SOperacionInvFTI_USER: TIntegerField
      FieldName = 'FTI_USER'
    end
    object SOperacionInvFTI_AUTORIZADOPOR: TStringField
      FieldName = 'FTI_AUTORIZADOPOR'
      Size = 100
    end
    object SOperacionInvFTI_PROPOSITO: TStringField
      FieldName = 'FTI_PROPOSITO'
      Size = 50
    end
    object SOperacionInvFTI_RESPONSABLE: TStringField
      FieldName = 'FTI_RESPONSABLE'
      Size = 100
    end
    object SOperacionInvFTI_DETALLE: TMemoField
      FieldName = 'FTI_DETALLE'
      BlobType = ftMemo
    end
    object SOperacionInvFTI_TIENELOTES: TBooleanField
      FieldName = 'FTI_TIENELOTES'
    end
    object SOperacionInvFTI_UPDATEITEMS: TBooleanField
      FieldName = 'FTI_UPDATEITEMS'
    end
    object SOperacionInvFTI_TOTALBRUTO: TCurrencyField
      FieldName = 'FTI_TOTALBRUTO'
    end
    object SOperacionInvFTI_DESCUENTO1PORCENT: TCurrencyField
      FieldName = 'FTI_DESCUENTO1PORCENT'
    end
    object SOperacionInvFTI_DESCUENTO1MONTO: TCurrencyField
      FieldName = 'FTI_DESCUENTO1MONTO'
    end
    object SOperacionInvFTI_DESCUENTO1ORIGEN: TSmallintField
      FieldName = 'FTI_DESCUENTO1ORIGEN'
    end
    object SOperacionInvFTI_DESCUENTO2PORCENT: TCurrencyField
      FieldName = 'FTI_DESCUENTO2PORCENT'
    end
    object SOperacionInvFTI_DESCUENTO2MONTO: TCurrencyField
      FieldName = 'FTI_DESCUENTO2MONTO'
    end
    object SOperacionInvFTI_DESCUENTO2ORIGEN: TSmallintField
      FieldName = 'FTI_DESCUENTO2ORIGEN'
    end
    object SOperacionInvFTI_DESCUENTOPARCIAL: TCurrencyField
      FieldName = 'FTI_DESCUENTOPARCIAL'
    end
    object SOperacionInvFTI_FLETEPORCENT: TCurrencyField
      FieldName = 'FTI_FLETEPORCENT'
    end
    object SOperacionInvFTI_FLETEMONEDA: TCurrencyField
      FieldName = 'FTI_FLETEMONEDA'
    end
    object SOperacionInvFTI_FLETEORIGEN: TSmallintField
      FieldName = 'FTI_FLETEORIGEN'
    end
    object SOperacionInvFTI_BASEIMPONIBLE: TCurrencyField
      FieldName = 'FTI_BASEIMPONIBLE'
    end
    object SOperacionInvFTI_BASEIMPONIBLE2: TCurrencyField
      FieldName = 'FTI_BASEIMPONIBLE2'
    end
    object SOperacionInvFTI_IMPUESTO1PORCENT: TCurrencyField
      FieldName = 'FTI_IMPUESTO1PORCENT'
    end
    object SOperacionInvFTI_IMPUESTO1MONTO: TCurrencyField
      FieldName = 'FTI_IMPUESTO1MONTO'
    end
    object SOperacionInvFTI_IMPUESTO2PORCENT: TCurrencyField
      FieldName = 'FTI_IMPUESTO2PORCENT'
    end
    object SOperacionInvFTI_IMPUESTO2MONTO: TCurrencyField
      FieldName = 'FTI_IMPUESTO2MONTO'
    end
    object SOperacionInvFTI_DESCUENTOCUADRE: TCurrencyField
      FieldName = 'FTI_DESCUENTOCUADRE'
    end
    object SOperacionInvFTI_TOTALNETO: TCurrencyField
      FieldName = 'FTI_TOTALNETO'
    end
    object SOperacionInvFTI_FECHAVENCIDO: TDateField
      FieldName = 'FTI_FECHAVENCIDO'
    end
    object SOperacionInvFTI_DIASVENCIMIENTO: TIntegerField
      FieldName = 'FTI_DIASVENCIMIENTO'
    end
    object SOperacionInvFTI_RIFCLIENTE: TStringField
      FieldName = 'FTI_RIFCLIENTE'
      Size = 50
    end
    object SOperacionInvFTI_NITCLIENTE: TStringField
      FieldName = 'FTI_NITCLIENTE'
      Size = 50
    end
    object SOperacionInvFTI_PERSONACONTACTO: TStringField
      FieldName = 'FTI_PERSONACONTACTO'
      Size = 100
    end
    object SOperacionInvFTI_TELEFONOCONTACTO: TStringField
      FieldName = 'FTI_TELEFONOCONTACTO'
      Size = 100
    end
    object SOperacionInvFTI_DIRECCIONDESPACHO: TMemoField
      FieldName = 'FTI_DIRECCIONDESPACHO'
      BlobType = ftMemo
    end
    object SOperacionInvFTI_DETALLECOMENTARIO: TMemoField
      FieldName = 'FTI_DETALLECOMENTARIO'
      BlobType = ftMemo
    end
    object SOperacionInvFTI_ORDENCOMPRA: TStringField
      FieldName = 'FTI_ORDENCOMPRA'
      Size = 50
    end
    object SOperacionInvFTI_PLANILLAIMPORTACION: TBlobField
      FieldName = 'FTI_PLANILLAIMPORTACION'
    end
    object SOperacionInvFTI_EXISTEPLANILLAIMPORTACION: TBooleanField
      FieldName = 'FTI_EXISTEPLANILLAIMPORTACION'
    end
    object SOperacionInvFTI_PORCENTFLETESINASIGNAR: TCurrencyField
      FieldName = 'FTI_PORCENTFLETESINASIGNAR'
    end
    object SOperacionInvFTI_SALDOOPERACION: TCurrencyField
      FieldName = 'FTI_SALDOOPERACION'
    end
    object SOperacionInvFTI_MONEDAPAGO: TIntegerField
      FieldName = 'FTI_MONEDAPAGO'
    end
    object SOperacionInvFTI_FORMADEPAGO: TBlobField
      FieldName = 'FTI_FORMADEPAGO'
    end
    object SOperacionInvFTI_TOTALPRECIO: TCurrencyField
      FieldName = 'FTI_TOTALPRECIO'
    end
    object SOperacionInvFTI_VUELTO: TCurrencyField
      FieldName = 'FTI_VUELTO'
    end
    object SOperacionInvFTI_AUTORIZADOS: TIntegerField
      FieldName = 'FTI_AUTORIZADOS'
    end
    object SOperacionInvFTI_EXCENTO: TBooleanField
      FieldName = 'FTI_EXCENTO'
    end
    object SOperacionInvFTI_COSTODEVENTA: TCurrencyField
      FieldName = 'FTI_COSTODEVENTA'
    end
    object SOperacionInvFTI_TIPOOPERACIONORIGEN: TIntegerField
      FieldName = 'FTI_TIPOOPERACIONORIGEN'
    end
    object SOperacionInvFTI_DOCUMENTOORIGEN: TStringField
      FieldName = 'FTI_DOCUMENTOORIGEN'
      Size = 30
    end
    object SOperacionInvFTI_FROMCOMPUESTOS: TBooleanField
      FieldName = 'FTI_FROMCOMPUESTOS'
    end
    object SOperacionInvFTI_VENDEDORASIGNADO: TStringField
      FieldName = 'FTI_VENDEDORASIGNADO'
      Size = 50
    end
    object SOperacionInvFTI_ZONAVENTA: TStringField
      FieldName = 'FTI_ZONAVENTA'
      Size = 25
    end
    object SOperacionInvFTI_PENDINGFORPRINT: TBooleanField
      FieldName = 'FTI_PENDINGFORPRINT'
    end
    object SOperacionInvFTI_COBRADORASIGNADO: TStringField
      FieldName = 'FTI_COBRADORASIGNADO'
      Size = 50
    end
    object SOperacionInvFTI_COMISIONCOBROS: TCurrencyField
      FieldName = 'FTI_COMISIONCOBROS'
    end
    object SOperacionInvFTI_COMISIONCOBROSBLOQUEADA: TBooleanField
      FieldName = 'FTI_COMISIONCOBROSBLOQUEADA'
    end
    object SOperacionInvFTI_FACTURASLOTERANDOM: TStringField
      FieldName = 'FTI_FACTURASLOTERANDOM'
    end
    object SOperacionInvFTI_MULTIPLEVENDEDOR: TBooleanField
      FieldName = 'FTI_MULTIPLEVENDEDOR'
    end
    object SOperacionInvFTI_MULTIPLEDEPOSITO: TBooleanField
      FieldName = 'FTI_MULTIPLEDEPOSITO'
    end
    object SOperacionInvFTI_TIMESAVED: TIntegerField
      FieldName = 'FTI_TIMESAVED'
    end
    object SOperacionInvFTI_TIPOPRECIO: TIntegerField
      FieldName = 'FTI_TIPOPRECIO'
    end
    object SOperacionInvBASE_AUTOINCREMENT: TAutoIncField
      FieldName = 'BASE_AUTOINCREMENT'
    end
    object SOperacionInvFTI_SERIE: TStringField
      FieldName = 'FTI_SERIE'
    end
    object SOperacionInvFTI_NAMEFORMATO: TStringField
      FieldName = 'FTI_NAMEFORMATO'
      Size = 50
    end
    object SOperacionInvFTI_MACHINENAME: TStringField
      FieldName = 'FTI_MACHINENAME'
      Size = 50
    end
    object SOperacionInvFTI_COMISIONVENTA: TCurrencyField
      FieldName = 'FTI_COMISIONVENTA'
    end
    object SOperacionInvFTI_MONTOPAGADO: TCurrencyField
      FieldName = 'FTI_MONTOPAGADO'
    end
    object SOperacionInvFTI_MONTOPERIODO: TCurrencyField
      FieldName = 'FTI_MONTOPERIODO'
    end
    object SOperacionInvFTI_PORCENTPERIODO: TCurrencyField
      FieldName = 'FTI_PORCENTPERIODO'
    end
    object SOperacionInvFTI_HORA: TTimeField
      FieldName = 'FTI_HORA'
    end
    object SOperacionInvFTI_GUIADESPACHO: TStringField
      FieldName = 'FTI_GUIADESPACHO'
      Size = 10
    end
    object SOperacionInvFTI_NORECIBOCAJA: TStringField
      FieldName = 'FTI_NORECIBOCAJA'
      Size = 10
    end
    object SOperacionInvFTI_CTOCOSTO: TStringField
      FieldName = 'FTI_CTOCOSTO'
      Size = 30
    end
    object SOperacionInvFTI_COSTOACTUALNACIONAL: TCurrencyField
      FieldName = 'FTI_COSTOACTUALNACIONAL'
    end
    object SOperacionInvFTI_COSTOACTUALEX: TCurrencyField
      FieldName = 'FTI_COSTOACTUALEX'
    end
    object SOperacionInvFTI_PREFIXINVENTARIO: TStringField
      FieldName = 'FTI_PREFIXINVENTARIO'
      Size = 10
    end
    object SOperacionInvFTI_NUMEROCONTROL: TStringField
      FieldName = 'FTI_NUMEROCONTROL'
      Size = 15
    end
    object SOperacionInvFTI_COSTOAJUSTADO: TCurrencyField
      FieldName = 'FTI_COSTOAJUSTADO'
    end
    object SOperacionInvFTI_FACTORREFERENCIA: TCurrencyField
      FieldName = 'FTI_FACTORREFERENCIA'
    end
    object SOperacionInvFTI_FINICIAL: TCurrencyField
      FieldName = 'FTI_FINICIAL'
    end
    object SOperacionInvFTI_FINTERESES: TCurrencyField
      FieldName = 'FTI_FINTERESES'
    end
    object SOperacionInvFTI_FINTERESESP: TCurrencyField
      FieldName = 'FTI_FINTERESESP'
    end
    object SOperacionInvFTI_FMANEJO: TCurrencyField
      FieldName = 'FTI_FMANEJO'
    end
    object SOperacionInvFTI_FMANEJOP: TCurrencyField
      FieldName = 'FTI_FMANEJOP'
    end
    object SOperacionInvFTI_FEXTRAORDINARIA: TCurrencyField
      FieldName = 'FTI_FEXTRAORDINARIA'
    end
    object SOperacionInvFTI_FCTDEXTRAORDINARIA: TIntegerField
      FieldName = 'FTI_FCTDEXTRAORDINARIA'
    end
    object SOperacionInvFTI_FINTEXTRAORDINARIA: TCurrencyField
      FieldName = 'FTI_FINTEXTRAORDINARIA'
    end
    object SOperacionInvFTI_FMTOCUOTA: TCurrencyField
      FieldName = 'FTI_FMTOCUOTA'
    end
    object SOperacionInvFTI_FCTDCUOTA: TIntegerField
      FieldName = 'FTI_FCTDCUOTA'
    end
    object SOperacionInvFTI_FCOBRANZA: TCurrencyField
      FieldName = 'FTI_FCOBRANZA'
    end
    object SOperacionInvFTI_TOTALFINANCIADO: TCurrencyField
      FieldName = 'FTI_TOTALFINANCIADO'
    end
    object SOperacionInvFTI_DETALLEGIROS: TBlobField
      FieldName = 'FTI_DETALLEGIROS'
    end
    object SOperacionInvFTI_SALDOFINANCIAR: TCurrencyField
      FieldName = 'FTI_SALDOFINANCIAR'
    end
    object SOperacionInvFTI_PRIMERACUOTA: TDateField
      FieldName = 'FTI_PRIMERACUOTA'
    end
    object SOperacionInvFTI_CAPITALCUOTAEXTRA: TCurrencyField
      FieldName = 'FTI_CAPITALCUOTAEXTRA'
    end
    object SOperacionInvFTI_CREDICARD: TMemoField
      FieldName = 'FTI_CREDICARD'
      BlobType = ftMemo
    end
    object SOperacionInvFTI_MAQUINAFISCAL: TStringField
      FieldName = 'FTI_MAQUINAFISCAL'
      Size = 50
    end
    object SOperacionInvFTI_TOTALPAGINAS: TIntegerField
      FieldName = 'FTI_TOTALPAGINAS'
    end
    object SOperacionInvFTI_SUCURSALORIGEN: TSmallintField
      FieldName = 'FTI_SUCURSALORIGEN'
    end
    object SOperacionInvFTI_FECHALIBRO: TDateTimeField
      FieldName = 'FTI_FECHALIBRO'
    end
    object SOperacionInvFTI_IVAINTERESES: TCurrencyField
      FieldName = 'FTI_IVAINTERESES'
    end
  end
  object SDetalleInv: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    TableName = 'SDetalleInv'
    Left = 392
    Top = 344
    object SDetalleInvFDI_TIPOOPERACION: TIntegerField
      FieldName = 'FDI_TIPOOPERACION'
      Required = True
    end
    object SDetalleInvFDI_CODIGO: TStringField
      FieldName = 'FDI_CODIGO'
      Required = True
      Size = 40
    end
    object SDetalleInvFDI_LINEA: TIntegerField
      FieldName = 'FDI_LINEA'
      Required = True
    end
    object SDetalleInvFDI_DOCUMENTO: TStringField
      FieldName = 'FDI_DOCUMENTO'
      Required = True
    end
    object SDetalleInvFDI_AUTOINCREMENT: TAutoIncField
      FieldName = 'FDI_AUTOINCREMENT'
    end
    object SDetalleInvFDI_CLIENTEPROVEEDOR: TStringField
      FieldName = 'FDI_CLIENTEPROVEEDOR'
      Size = 40
    end
    object SDetalleInvFDI_DOCUMENTOORIGEN: TStringField
      FieldName = 'FDI_DOCUMENTOORIGEN'
    end
    object SDetalleInvFDI_LINEAORIGEN: TIntegerField
      FieldName = 'FDI_LINEAORIGEN'
    end
    object SDetalleInvFDI_CLASIFICACION: TIntegerField
      FieldName = 'FDI_CLASIFICACION'
    end
    object SDetalleInvFDI_STATUS: TIntegerField
      FieldName = 'FDI_STATUS'
    end
    object SDetalleInvFDI_VISIBLE: TBooleanField
      FieldName = 'FDI_VISIBLE'
    end
    object SDetalleInvFDI_COSTO: TCurrencyField
      FieldName = 'FDI_COSTO'
    end
    object SDetalleInvFDI_CANTIDAD: TFloatField
      FieldName = 'FDI_CANTIDAD'
    end
    object SDetalleInvFDI_CANTIDADPENDIENTE: TFloatField
      FieldName = 'FDI_CANTIDADPENDIENTE'
    end
    object SDetalleInvFDI_LOTE: TStringField
      FieldName = 'FDI_LOTE'
      Size = 100
    end
    object SDetalleInvFDI_LOTERANDOM: TIntegerField
      FieldName = 'FDI_LOTERANDOM'
    end
    object SDetalleInvFDI_NEWLOTE: TBooleanField
      FieldName = 'FDI_NEWLOTE'
    end
    object SDetalleInvFDI_DEPOSITOSOURCE: TIntegerField
      FieldName = 'FDI_DEPOSITOSOURCE'
    end
    object SDetalleInvFDI_DEPOSITOTARGET: TIntegerField
      FieldName = 'FDI_DEPOSITOTARGET'
    end
    object SDetalleInvFDI_OPERACION_AUTOINCREMENT: TIntegerField
      FieldName = 'FDI_OPERACION_AUTOINCREMENT'
    end
    object SDetalleInvFDI_DECIMALES: TBooleanField
      FieldName = 'FDI_DECIMALES'
    end
    object SDetalleInvFDI_DECIMALESPEN: TBooleanField
      FieldName = 'FDI_DECIMALESPEN'
    end
    object SDetalleInvFDI_SERIALNUMBER: TIntegerField
      FieldName = 'FDI_SERIALNUMBER'
    end
    object SDetalleInvFDI_USASERIALES: TBooleanField
      FieldName = 'FDI_USASERIALES'
    end
    object SDetalleInvFDI_USADEPOSITOS: TBooleanField
      FieldName = 'FDI_USADEPOSITOS'
    end
    object SDetalleInvFDI_COSTOOPERACION: TCurrencyField
      FieldName = 'FDI_COSTOOPERACION'
    end
    object SDetalleInvFDI_MEMODETALLE: TMemoField
      FieldName = 'FDI_MEMODETALLE'
      BlobType = ftMemo
    end
    object SDetalleInvFDI_MONEDA: TIntegerField
      FieldName = 'FDI_MONEDA'
    end
    object SDetalleInvFDI_FACTORCAMBIO: TCurrencyField
      FieldName = 'FDI_FACTORCAMBIO'
    end
    object SDetalleInvFDI_DETALLECOSTOSIMPORTACION: TBlobField
      FieldName = 'FDI_DETALLECOSTOSIMPORTACION'
    end
    object SDetalleInvFDI_DETALLEPLANILLAIMPORTACION: TBlobField
      FieldName = 'FDI_DETALLEPLANILLAIMPORTACION'
    end
    object SDetalleInvFDI_EXISTEDETALLEIMPORTACION: TBooleanField
      FieldName = 'FDI_EXISTEDETALLEIMPORTACION'
    end
    object SDetalleInvFDI_EXISTEDETALLEDECOSTOS: TBooleanField
      FieldName = 'FDI_EXISTEDETALLEDECOSTOS'
    end
    object SDetalleInvFDI_ALICUOTAFLETEOTROS: TCurrencyField
      FieldName = 'FDI_ALICUOTAFLETEOTROS'
    end
    object SDetalleInvFDI_IMPUESTO1: TCurrencyField
      FieldName = 'FDI_IMPUESTO1'
    end
    object SDetalleInvFDI_PORCENTIMPUESTO1: TBooleanField
      FieldName = 'FDI_PORCENTIMPUESTO1'
    end
    object SDetalleInvFDI_MONTOIMPUESTO1: TCurrencyField
      FieldName = 'FDI_MONTOIMPUESTO1'
    end
    object SDetalleInvFDI_IMPUESTO2: TCurrencyField
      FieldName = 'FDI_IMPUESTO2'
    end
    object SDetalleInvFDI_PORCENTIMPUESTO2: TBooleanField
      FieldName = 'FDI_PORCENTIMPUESTO2'
    end
    object SDetalleInvFDI_MONTOIMPUESTO2: TCurrencyField
      FieldName = 'FDI_MONTOIMPUESTO2'
    end
    object SDetalleInvFDI_ORIGENPRICE: TIntegerField
      FieldName = 'FDI_ORIGENPRICE'
    end
    object SDetalleInvFDI_PORCENTDESCPARCIAL: TCurrencyField
      FieldName = 'FDI_PORCENTDESCPARCIAL'
    end
    object SDetalleInvFDI_DESCUENTOPARCIAL: TCurrencyField
      FieldName = 'FDI_DESCUENTOPARCIAL'
    end
    object SDetalleInvFDI_PRECIOSINDESCUENTO: TCurrencyField
      FieldName = 'FDI_PRECIOSINDESCUENTO'
    end
    object SDetalleInvFDI_PRECIOCONDESCUENTO: TCurrencyField
      FieldName = 'FDI_PRECIOCONDESCUENTO'
    end
    object SDetalleInvFDI_PRECIODEVENTA: TCurrencyField
      FieldName = 'FDI_PRECIODEVENTA'
    end
    object SDetalleInvFDI_ROUNDDESCTPARCIAL: TIntegerField
      FieldName = 'FDI_ROUNDDESCTPARCIAL'
    end
    object SDetalleInvFDI_COMISIONFIJA: TCurrencyField
      FieldName = 'FDI_COMISIONFIJA'
    end
    object SDetalleInvFDI_COMISIONFIJAP: TBooleanField
      FieldName = 'FDI_COMISIONFIJAP'
    end
    object SDetalleInvFDI_UNDDESCARGA: TCurrencyField
      FieldName = 'FDI_UNDDESCARGA'
    end
    object SDetalleInvFDI_UNDCAPACIDAD: TCurrencyField
      FieldName = 'FDI_UNDCAPACIDAD'
    end
    object SDetalleInvFDI_UNDDETALLADA: TBooleanField
      FieldName = 'FDI_UNDDETALLADA'
    end
    object SDetalleInvFDI_INDEXPRICES: TIntegerField
      FieldName = 'FDI_INDEXPRICES'
    end
    object SDetalleInvFDI_PARTESUSANSERIALES: TBooleanField
      FieldName = 'FDI_PARTESUSANSERIALES'
    end
    object SDetalleInvFDI_COSTODEVENTAS: TCurrencyField
      FieldName = 'FDI_COSTODEVENTAS'
    end
    object SDetalleInvFDI_DESCRIPCIONOFERTA: TStringField
      FieldName = 'FDI_DESCRIPCIONOFERTA'
      Size = 100
    end
    object SDetalleInvFDI_VENDEDORASIGNADO: TStringField
      FieldName = 'FDI_VENDEDORASIGNADO'
      Size = 50
    end
    object SDetalleInvFDI_MONTOCOMISION: TCurrencyField
      FieldName = 'FDI_MONTOCOMISION'
    end
    object SDetalleInvFDI_PRECIOBASECOMISION: TCurrencyField
      FieldName = 'FDI_PRECIOBASECOMISION'
    end
    object SDetalleInvFDI_COMISIONBLOQUEADA: TBooleanField
      FieldName = 'FDI_COMISIONBLOQUEADA'
    end
    object SDetalleInvFDI_COMISIONYAPAGADA: TBooleanField
      FieldName = 'FDI_COMISIONYAPAGADA'
    end
    object SDetalleInvFDI_DOCUMENTOLIBERACION: TStringField
      FieldName = 'FDI_DOCUMENTOLIBERACION'
    end
    object SDetalleInvFDI_TIPODECOMISION: TIntegerField
      FieldName = 'FDI_TIPODECOMISION'
    end
    object SDetalleInvFDI_PRICEFORCOMISION: TIntegerField
      FieldName = 'FDI_PRICEFORCOMISION'
    end
    object SDetalleInvFDI_FECHAOPERACION: TDateField
      FieldName = 'FDI_FECHAOPERACION'
    end
    object SDetalleInvFDI_USER: TIntegerField
      FieldName = 'FDI_USER'
    end
    object SDetalleInvFDI_PORCENTDESCUENTO1: TCurrencyField
      FieldName = 'FDI_PORCENTDESCUENTO1'
    end
    object SDetalleInvFDI_PORCENTDESCUENTO2: TCurrencyField
      FieldName = 'FDI_PORCENTDESCUENTO2'
    end
    object SDetalleInvFDI_COSTOSUPDATE: TBooleanField
      FieldName = 'FDI_COSTOSUPDATE'
    end
    object SDetalleInvBASE_AUTOINCREMENT: TAutoIncField
      FieldName = 'BASE_AUTOINCREMENT'
    end
    object SDetalleInvFDI_TOTALPESO: TCurrencyField
      FieldName = 'FDI_TOTALPESO'
    end
    object SDetalleInvFDI_CTOCOSTO: TIntegerField
      FieldName = 'FDI_CTOCOSTO'
    end
    object SDetalleInvFDI_AUTORIZADO: TStringField
      FieldName = 'FDI_AUTORIZADO'
      Size = 10
    end
    object SDetalleInvFDI_MARKPERIODO: TBooleanField
      FieldName = 'FDI_MARKPERIODO'
    end
    object SDetalleInvFDI_CTOCOSTOSTR: TStringField
      FieldName = 'FDI_CTOCOSTOSTR'
      Size = 30
    end
    object SDetalleInvFDI_COSTOACTUALNACIONAL: TCurrencyField
      FieldName = 'FDI_COSTOACTUALNACIONAL'
    end
    object SDetalleInvFDI_COSTOACTUALEXT: TCurrencyField
      FieldName = 'FDI_COSTOACTUALEXT'
    end
    object SDetalleInvFDI_PREFIXINVENTARIO: TStringField
      FieldName = 'FDI_PREFIXINVENTARIO'
      Size = 10
    end
    object SDetalleInvFDI_COSTOAJUSTADO: TCurrencyField
      FieldName = 'FDI_COSTOAJUSTADO'
    end
    object SDetalleInvFDI_FECHALIBRO: TDateField
      FieldName = 'FDI_FECHALIBRO'
    end
    object SDetalleInvFDI_TIPODOCUMENTOORIGEN: TSmallintField
      FieldName = 'FDI_TIPODOCUMENTOORIGEN'
    end
    object SDetalleInvFDI_STATUSDOCUMENTOORIGEN: TSmallintField
      FieldName = 'FDI_STATUSDOCUMENTOORIGEN'
    end
  end
  object qrPedidosPendientes: TDBISAMQuery
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    SQL.Strings = (
      'SELECT '
      '  SOperacionInv.FTI_DOCUMENTO Documento,'
      '  SDetalleVenta.FDI_CLIENTEPROVEEDOR IdCliente,'
      '  SDetalleVenta.FDI_CODIGO Codigo,'
      '  SDetalleVenta.FDI_CANTIDAD AS Cantidad,'
      '  SOperacionInv.FTI_VENDEDORASIGNADO IdVendedor,'
      '  SOperacionInv.FTI_USER IdUsaurio,'
      '  SOperacionInv.FTI_FECHAEMISION FechaEmision,'
      '  SOperacionInv.FTI_FECHAVENCIDO FechaVencimiento'
      'FROM'
      ' SOperacionInv'
      
        ' INNER JOIN SDetalleVenta ON (SOperacionInv.FTI_DOCUMENTO=SDetal' +
        'leVenta.FDI_DOCUMENTO)'
      '  AND (SOperacionInv.FTI_TIPO=SDetalleVenta.FDI_TIPOOPERACION)'
      
        ' LEFT OUTER JOIN SEnsamblesOrden ON (SDetalleVenta.FDI_DOCUMENTO' +
        '=SEnsamblesOrden.FEO_NOORDENCOMPRA)'
      
        '    AND (SDetalleVenta.FDI_CODIGO=SEnsamblesOrden.FEO_CODEPRODUC' +
        'TO)'
      'WHERE'
      '  (SOperacionInv.FTI_TIPO = 10) AND '
      '  (SEnsamblesOrden.FEO_DOCUMENTO IS NULL) AND '
      '  (SOperacionInv.FTI_STATUS = 4)')
    Params = <>
    Left = 192
    Top = 128
    object qrPedidosPendientesDocumento: TStringField
      FieldName = 'Documento'
      Size = 15
    end
    object qrPedidosPendientesIdCliente: TStringField
      FieldName = 'IdCliente'
      Size = 40
    end
    object qrPedidosPendientesCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = Sclientes
      LookupKeyFields = 'FC_CODIGO'
      LookupResultField = 'FC_DESCRIPCION'
      KeyFields = 'IdCliente'
      Lookup = True
    end
    object qrPedidosPendientesCodigo: TStringField
      FieldName = 'Codigo'
      Size = 40
    end
    object qrPedidosPendientesDescripcion: TStringField
      FieldKind = fkLookup
      FieldName = 'Descripcion'
      LookupDataSet = Sinventario
      LookupKeyFields = 'FI_CODIGO'
      LookupResultField = 'FI_DESCRIPCION'
      KeyFields = 'Codigo'
      Lookup = True
    end
    object qrPedidosPendientesCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object qrPedidosPendientesFechaEmision: TDateTimeField
      FieldName = 'FechaEmision'
    end
    object qrPedidosPendientesFechaVencimiento: TDateField
      FieldName = 'FechaVencimiento'
    end
    object qrPedidosPendientesUsuario: TStringField
      FieldKind = fkLookup
      FieldName = 'Usuario'
      LookupDataSet = Susuarios
      LookupKeyFields = 'Code'
      LookupResultField = 'Nombre'
      KeyFields = 'IdUsaurio'
      Size = 50
      Lookup = True
    end
    object qrPedidosPendientesIdVendedor: TStringField
      FieldName = 'IdVendedor'
      Size = 50
    end
    object qrPedidosPendientesIdUsaurio: TIntegerField
      FieldName = 'IdUsaurio'
    end
    object qrPedidosPendientesVendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'Vendedor'
      LookupDataSet = Svendedores
      LookupKeyFields = 'FV_CODIGO'
      LookupResultField = 'FV_DESCRIPCION'
      KeyFields = 'IdVendedor'
      Size = 40
      Lookup = True
    end
  end
  object Sclientes: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    TableName = 'Sclientes'
    Left = 208
    Top = 216
    object SclientesFC_CODIGO: TStringField
      FieldName = 'FC_CODIGO'
      Required = True
      Size = 30
    end
    object SclientesFC_DESCRIPCION: TStringField
      FieldName = 'FC_DESCRIPCION'
      Required = True
      Size = 100
    end
  end
  object tbComponentes: TJvMemoryData
    FieldDefs = <
      item
        Name = 'Codigo'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Descripcion'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Lote'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Cantidad'
        DataType = ftFloat
      end
      item
        Name = 'Costo'
        DataType = ftCurrency
      end
      item
        Name = 'Random'
        DataType = ftInteger
      end
      item
        Name = 'Clasificacion'
        DataType = ftInteger
      end
      item
        Name = 'TipoInventario'
        DataType = ftInteger
      end>
    Left = 384
    Top = 224
    object tbComponentesCodigo: TStringField
      DisplayWidth = 20
      FieldName = 'Codigo'
      Size = 30
    end
    object tbComponentesDescripcion: TStringField
      DisplayWidth = 50
      FieldName = 'Descripcion'
      Size = 40
    end
    object tbComponentesLote: TStringField
      FieldName = 'Lote'
      Size = 50
    end
    object tbComponentesCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object tbComponentesExistencia: TFloatField
      FieldName = 'Existencia'
    end
    object tbComponentesCosto: TCurrencyField
      FieldName = 'Costo'
    end
    object tbComponentesRandom: TIntegerField
      FieldName = 'Random'
    end
    object tbComponentesClasificacion: TIntegerField
      FieldName = 'Clasificacion'
    end
    object tbComponentesTipoInventario: TIntegerField
      FieldName = 'TipoInventario'
    end
  end
  object Svendedores: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    TableName = 'Svendedores'
    Left = 288
    Top = 88
    object SvendedoresFV_CODIGO: TStringField
      FieldName = 'FV_CODIGO'
      Required = True
      Size = 30
    end
    object SvendedoresFV_DESCRIPCION: TStringField
      FieldName = 'FV_DESCRIPCION'
      Required = True
      Size = 50
    end
  end
  object tbPlantillas: TJvMemoryData
    FieldDefs = <>
    Left = 384
    Top = 272
    object tbPlantillasCosto: TFloatField
      FieldName = 'Costo'
    end
    object tbPlantillasPrecio: TFloatField
      FieldName = 'Precio'
    end
    object tbPlantillasValorIva: TFloatField
      FieldName = 'ValorIva'
    end
    object tbPlantillasNetoVenta: TFloatField
      FieldName = 'NetoVenta'
    end
    object tbPlantillasUtilidad: TFloatField
      FieldName = 'Utilidad'
    end
    object tbPlantillasRentabilidad: TFloatField
      FieldName = 'Rentabilidad'
    end
  end
end
