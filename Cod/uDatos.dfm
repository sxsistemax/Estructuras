object dmDatos: TdmDatos
  OldCreateOrder = False
  Height = 417
  Width = 521
  object SEnsambles: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    TableName = 'SEnsambles'
    Left = 48
    Top = 40
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
  object qrPlantillas: TDBISAMQuery
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    SQL.Strings = (
      'SELECT'
      '  SEnsambles.FEN_CODIGO,'
      '  Sinventario.FI_DESCRIPCION,'
      '  Scategoria.FD_DESCRIPCION'
      'FROM'
      ' SEnsambles'
      
        ' INNER JOIN Sinventario ON (SEnsambles.FEN_CODIGO=Sinventario.FI' +
        '_CODIGO)'
      
        ' INNER JOIN Scategoria ON (Sinventario.FI_CATEGORIA=Scategoria.F' +
        'D_CODIGO)'
      'WHERE'
      '  (SEnsambles.FEN_CODEPARTE = '#39'$$$$$$$$$$'#39')')
    Params = <>
    Left = 152
    Top = 48
    object qrPlantillasFEN_CODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'FEN_CODIGO'
      Size = 30
    end
    object qrPlantillasFI_DESCRIPCION: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'FI_DESCRIPCION'
      Size = 40
    end
    object qrPlantillasFD_DESCRIPCION: TStringField
      DisplayLabel = 'Categoria'
      FieldName = 'FD_DESCRIPCION'
      Size = 40
    end
  end
  object Sinventario: TDBISAMTable
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    TableName = 'Sinventario'
    Left = 280
    Top = 56
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
    object SinventarioFI_POSENTREGA: TBooleanField
      FieldName = 'FI_POSENTREGA'
    end
  end
  object qrSeleccionarPlantillas: TDBISAMQuery
    DatabaseName = 'dbA2'
    EngineVersion = '4.29 Build 1'
    SQL.Strings = (
      'SELECT'
      '  SEnsambles.FEN_CODIGO,'
      '  Sinventario.FI_DESCRIPCION,'
      '  Scategoria.FD_DESCRIPCION'
      'FROM'
      ' SEnsambles'
      
        ' INNER JOIN Sinventario ON (SEnsambles.FEN_CODIGO=Sinventario.FI' +
        '_CODIGO)'
      
        ' INNER JOIN Scategoria ON (Sinventario.FI_CATEGORIA=Scategoria.F' +
        'D_CODIGO)'
      'WHERE'
      '  (SEnsambles.FEN_CODEPARTE = '#39'$$$$$$$$$$'#39')')
    Params = <>
    Left = 160
    Top = 168
    object qrSeleccionarPlantillasFEN_CODIGO: TStringField
      FieldName = 'FEN_CODIGO'
      Size = 30
    end
    object qrSeleccionarPlantillasFI_DESCRIPCION: TStringField
      FieldName = 'FI_DESCRIPCION'
      Size = 40
    end
    object qrSeleccionarPlantillasFD_DESCRIPCION: TStringField
      FieldName = 'FD_DESCRIPCION'
      Size = 40
    end
  end
end
