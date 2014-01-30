inherited frSeleccionarInventario: TfrSeleccionarInventario
  Caption = 'Seleccionar Inventario'
  ClientHeight = 492
  ClientWidth = 934
  ExplicitWidth = 950
  ExplicitHeight = 531
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 460
    Width = 934
    ExplicitTop = 460
    ExplicitWidth = 934
    inherited Panel2: TPanel
      Left = 602
      ExplicitLeft = 602
    end
  end
  inherited PageControl1: TPageControl
    Width = 934
    Height = 460
    ExplicitWidth = 934
    ExplicitHeight = 460
    inherited tsListado: TTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 926
      ExplicitHeight = 429
      inherited dgGrid: TDBGrid
        Width = 926
        Height = 360
      end
      inherited pBuscar: TPanel
        Width = 926
        ExplicitWidth = 926
      end
      inherited pFiltro: TPanel
        Width = 926
        ExplicitWidth = 926
      end
      inherited pCampos: TPanel
        inherited cbCampoBusqueda: TComboBox
          Top = 6
          Items.Strings = (
            'Descripcion'
            'Codigo')
          ExplicitTop = 6
        end
      end
    end
    inherited tsRegistro: TTabSheet
      ExplicitWidth = 926
      ExplicitHeight = 429
      inherited Bevel1: TBevel
        Width = 926
        ExplicitWidth = 782
      end
      inherited Bevel2: TBevel
        Height = 425
        ExplicitHeight = 425
      end
      inherited Bevel3: TBevel
        Top = 427
        Width = 926
        ExplicitTop = 427
        ExplicitWidth = 782
      end
      inherited Bevel4: TBevel
        Left = 924
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
    Left = 416
  end
end
