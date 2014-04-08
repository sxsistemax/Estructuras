object frPrincipal: TfrPrincipal
  Left = 0
  Top = 0
  Caption = 'Configuraci'#243'n Ordenes de Producci'#243'n'
  ClientHeight = 123
  ClientWidth = 604
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 604
    Height = 72
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
    Top = 72
    Width = 604
    Height = 51
    Align = alBottom
    BevelOuter = bvNone
    Caption = '`'
    TabOrder = 1
    object pAcciones: TActionToolBar
      AlignWithMargins = True
      Left = 4
      Top = 6
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
      Orientation = boTopToBottom
      ParentFont = False
      Spacing = 0
    end
    object Panel3: TPanel
      Left = 264
      Top = 0
      Width = 340
      Height = 51
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object btCancelar: TBitBtn
        Left = 178
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
        Left = 101
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
        Left = 256
        Top = 6
        Width = 75
        Height = 25
        Caption = '&Cerrar'
        DoubleBuffered = True
        Kind = bkClose
        ParentDoubleBuffered = False
        TabOrder = 2
      end
      object bRegistro: TBitBtn
        Left = 20
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Registro'
        DoubleBuffered = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFAFAFAE8E8E8D3D3D3B9B9B9B9B9B9D3D3D3E8E8E8FAFAFAFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDAEAEAEC1C1C1DCDCDCF6
          F6F6F6F6F6DCDCDCC1C1C1AEAEAEEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          D7D7D7ABABABF2F2F2FCFAF7DFC9B4CAA580CCA882E2CDB9FCFAF7F2F2F2ABAB
          ABD7D7D7FFFFFFFFFFFFFFFFFFEDEDEDABABABFEFEFEE1CEBBA66423AB5500AE
          5700AE5801AE5700B77029E7D5C2FEFEFEABABABEDEDEDFFFFFFFAFAFAAEAEAE
          F2F2F2E1CEBB9C5006B36211CECECED5D5D5DDDDDDE4E4E4AE5700B05A05E8D4
          C3F2F2F2AEAEAEFAFAFAE8E8E8C1C1C1FCFAF7995B1FB05B06BF7C37B7691BDF
          DFDFE6E6E6B7691BB25F0CAE5700BC732BFCF9F7C1C1C1E8E8E8D3D3D3DCDCDC
          DEC9B2994D00BA6F25B3610FAE5700E9E9E9F0F0F0B66719B86D21B36211AE57
          00E5D0BBDCDCDCD3D3D3B9B9B9F6F6F6C09B76A45507B86C20AE5700AE5700F2
          F2F2FAFAFAB2600DB66718B86D21B3610FD2AE88F6F6F6B9B9B9B9B9B9F6F6F6
          C09B76A9611AB36211AE5700F2EFECFCFCFCFAFAFAB05C07B36210B7691CB769
          1BD2AD89F6F6F6B9B9B9D3D3D3DCDCDCDEC9B2965A1DB6681ABA7127C07E3ACD
          9964D7B18CC2803EBF7A34BB7229B96E23DFCBB6DCDCDCD3D3D3E8E8E8C1C1C1
          FCFAF79A6633BB742CBF7B36C58647D2AB85D6B08BC88D52C58748C38241C78B
          4EFCFAF7C1C1C1E8E8E8FAFAFAAEAEAEF2F2F2DBC5AF8C4D12C17E3BCE9D6BF5
          F5F5FEFEFED3A679C88E53C58648E1CFBCF2F2F2AEAEAEFAFAFAFFFFFFEDEDED
          ABABABFEFEFED8BFA794582099622CEFE4D9E9E0D6CF9B68A06C3BD8C0AAFEFE
          FEABABABEDEDEDFFFFFFFFFFFFFFFFFFD7D7D7ABABABF2F2F2FBF8F4D2B79BB8
          8F69B8906AD3B89FFBF8F4F2F2F2ABABABD7D7D7FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFEDEDEDAEAEAEC1C1C1DCDCDCF6F6F6F6F6F6DCDCDCC1C1C1AEAEAEEDED
          EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAE8E8E8D3D3D3B9
          B9B9B9B9B9D3D3D3E8E8E8FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        TabOrder = 3
        OnClick = bRegistroClick
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
    Left = 440
    Top = 16
  end
end
