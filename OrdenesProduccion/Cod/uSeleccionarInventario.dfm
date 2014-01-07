inherited frSeleccionarInventario: TfrSeleccionarInventario
  Caption = 'Seleccionar Inventario'
  ClientHeight = 492
  ClientWidth = 790
  ExplicitWidth = 806
  ExplicitHeight = 531
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 460
    Width = 790
    inherited Panel2: TPanel
      Left = 458
    end
  end
  inherited PageControl1: TPageControl
    Width = 790
    Height = 460
    inherited tsListado: TTabSheet
      inherited dgGrid: TDBGrid
        Width = 782
        Height = 403
      end
      inherited pBusqueda: TPanel
        Width = 782
        inherited Panel4: TPanel
          Left = 593
          inherited cbCampoBusqueda: TComboBox
            Items.Strings = (
              'FI_CODIGO'
              'FI_DESCRIPCION')
          end
        end
      end
    end
    inherited tsRegistro: TTabSheet
      inherited Bevel1: TBevel
        Width = 782
      end
      inherited Bevel2: TBevel
        Height = 425
      end
      inherited Bevel3: TBevel
        Top = 427
        Width = 782
      end
      inherited Bevel4: TBevel
        Left = 780
        Height = 425
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
        DataField = 'FI_CODIGO'
        DataSource = dsDataSource
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 72
        Width = 524
        Height = 21
        DataField = 'FI_DESCRIPCION'
        DataSource = dsDataSource
        TabOrder = 1
      end
    end
  end
  inherited dsDataSource: TDataSource
    DataSet = dmDatos.qrSeleccionarPlantillas
  end
end
