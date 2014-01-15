object frPrincipal: TfrPrincipal
  Left = 0
  Top = 0
  Caption = 'Configuraci'#243'n Ordenes de Producci'#243'n'
  ClientHeight = 98
  ClientWidth = 604
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 604
    Height = 63
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 13
      Width = 152
      Height = 13
      Caption = 'Usuario para generar procesos:'
      FocusControl = DBLookupComboBox1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 16
      Top = 32
      Width = 274
      Height = 21
      DataField = 'Nombre'
      DataSource = dsConfiguracion
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 63
    Width = 604
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    Caption = '`'
    TabOrder = 1
    object pAcciones: TActionToolBar
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 355
      Height = 51
      ActionManager = ActionManager1
      Align = alNone
      Color = clMenuBar
      ColorMap.HighlightColor = clWhite
      ColorMap.UnusedColor = clWhite
      EdgeInner = esNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Spacing = 0
    end
    object Panel3: TPanel
      Left = 359
      Top = 0
      Width = 245
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object btCancelar: TBitBtn
        Left = 82
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        DoubleBuffered = True
        Kind = bkCancel
        ParentDoubleBuffered = False
        TabOrder = 0
        OnClick = btCancelarClick
      end
      object btGuardar: TBitBtn
        Left = 5
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Guardar'
        DoubleBuffered = True
        Kind = bkOK
        ParentDoubleBuffered = False
        TabOrder = 1
        OnClick = btGuardarClick
      end
      object BitBtn1: TBitBtn
        Left = 160
        Top = 6
        Width = 75
        Height = 25
        Caption = '&Cerrar'
        DoubleBuffered = True
        Kind = bkClose
        ParentDoubleBuffered = False
        TabOrder = 2
      end
    end
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = aPlantillas
            Caption = '&Plantillas'
          end>
      end
      item
        Items = <
          item
            Caption = '-'
          end
          item
            Action = aPlantillas
            Caption = '&Plantillas'
          end>
      end
      item
        Items = <
          item
            Action = aPlantillas
            Caption = '&Plantillas'
          end>
      end
      item
        Items = <
          item
            Action = aPlantillas
            Caption = '&Plantillas'
          end
          item
            Action = aGenerarOrden
            Caption = '&Generar Orden'
          end
          item
            Action = aProcesarCostos
            Caption = 'P&rocesar Costos'
          end>
        ActionBar = pAcciones
      end>
    Left = 344
    Top = 16
    StyleName = 'Platform Default'
    object aPlantillas: TAction
      Caption = 'Plantillas'
      OnExecute = aPlantillasExecute
    end
    object aGenerarOrden: TAction
      Caption = 'Generar Orden'
      OnExecute = aGenerarOrdenExecute
    end
    object aProcesarCostos: TAction
      Caption = 'Procesar Costos'
      OnExecute = aProcesarCostosExecute
    end
  end
  object dsConfiguracion: TDataSource
    DataSet = dmDatos.SPAOrdenesConfiguracion
    Left = 440
    Top = 16
  end
end
