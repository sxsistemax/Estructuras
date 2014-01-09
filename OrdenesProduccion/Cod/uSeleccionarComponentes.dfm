inherited frSeleccionarComponentes: TfrSeleccionarComponentes
  Caption = 'Seleccionar Componentes'
  ClientHeight = 492
  ClientWidth = 790
  ExplicitWidth = 806
  ExplicitHeight = 531
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 460
    Width = 790
    ExplicitTop = 460
    ExplicitWidth = 790
    inherited Panel2: TPanel
      Left = 458
      ExplicitLeft = 458
    end
  end
  inherited PageControl1: TPageControl
    Width = 790
    Height = 460
    ExplicitTop = -3
    ExplicitWidth = 790
    ExplicitHeight = 460
    inherited tsListado: TTabSheet
      ExplicitWidth = 782
      ExplicitHeight = 429
      inherited dgGrid: TDBGrid
        Width = 782
        Height = 403
        Columns = <
          item
            Expanded = False
            FieldName = 'FI_CODIGO'
            Width = 133
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FI_DESCRIPCION'
            Width = 448
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FI_CATEGORIA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_DESCRIPCIONDETALLADA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_VENDEDOR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_STATUS'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_UNIDAD'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_TIPOCODIGOBARRA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_IMAGEN'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_SUSTITUTO1'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_SUSTITUTO2'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_SUSTITUTO3'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_REFERENCIA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_MARCA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_MONEDA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_FACTORCONVERSION'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_UNDEXISTENCIA2'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_PUESTO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_SUJETOACOMISION'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_MONTOCOMISION'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_CUENTASCONTABLES'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_PESOPRODUCTO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_DIASDEREPOSICION'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_PRESENTACION'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_GARANTIA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_SUSTITUTO4'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_SUSTITUTO5'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_MONTOCOMISIONP'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_DEPOSITOS'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_OFERTAS'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_VENCIMIENTOS'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_CLASIFICACION'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_MANEJOINVENTARIO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_SERIALES'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_CREACION'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_INVENTARIOINICIALUNIDADES'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_INVENTARIOINICIALCOSTO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_CAPACIDAD'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_EXISTDECIMAL'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_COMPUESTOSERIALES'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_VENDEDORFIJO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_VENDEDORFIJOACTIVO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_MODELO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_SUBCATEGORIA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_PESOAFECTACOSTO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_IMPRESORA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'BASE_AUTOINCREMENT'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_ZEXTRA1'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_ZEXTRA2'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_ZEXTRA3'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_ZEXTRA4'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_ZEXTRA5'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_ZEXTRA6'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_ZEXTRA1VENTA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_ZEXTRA2VENTA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_ZEXTRA3VENTA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_ZEXTRA4VENTA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_ZEXTRA5VENTA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_ZEXTRA6VENTA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_ZEXTRA1VENTAMOD'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_ZEXTRA2VENTAMOD'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_ZEXTRA3VENTAMOD'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_ZEXTRA4VENTAMOD'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_ZEXTRA5VENTAMOD'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_ZEXTRA6VENTAMOD'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_INTERNET'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_BALANZA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_CODIGOBARRA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_PRECIOLISTA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_APROVECHAPORC'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_ARANCEL'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FI_POSENTREGA'
            Visible = False
          end>
      end
      inherited pBusqueda: TPanel
        Width = 782
        ExplicitWidth = 782
        inherited Panel4: TPanel
          Left = 593
          ExplicitLeft = 593
          inherited cbCampoBusqueda: TComboBox
            Items.Strings = (
              'FI_Codigo'
              'FI_Descripcion')
          end
        end
      end
    end
    inherited tsRegistro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 27
      ExplicitWidth = 782
      ExplicitHeight = 429
      inherited Bevel1: TBevel
        Width = 782
        ExplicitWidth = 782
      end
      inherited Bevel2: TBevel
        Height = 425
        ExplicitHeight = 425
      end
      inherited Bevel3: TBevel
        Top = 427
        Width = 782
        ExplicitTop = 427
        ExplicitWidth = 782
      end
      inherited Bevel4: TBevel
        Left = 780
        Height = 425
        ExplicitLeft = 780
        ExplicitHeight = 425
      end
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 33
        Height = 13
        Caption = 'Codigo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 56
        Width = 56
        Height = 13
        Caption = 'Descripci'#243'n'
        FocusControl = DBEdit2
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 32
        Width = 394
        Height = 21
        DataField = 'Codigo'
        DataSource = dsDataSource
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 72
        Width = 524
        Height = 21
        DataField = 'Codigo'
        DataSource = dsDataSource
        TabOrder = 1
      end
    end
  end
  inherited dsDataSource: TDataSource
    DataSet = dmDatos.Sinventario
    Left = 416
    Top = 56
  end
end
