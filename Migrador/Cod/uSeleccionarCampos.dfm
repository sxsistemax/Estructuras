object frSeleccionarCampos: TfrSeleccionarCampos
  Left = 0
  Top = 0
  Caption = 'Seleccionar Campos'
  ClientHeight = 314
  ClientWidth = 608
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 608
    Height = 273
    Align = alClient
    DataSource = dsCamposDestino
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CampoDestino'
        Width = 224
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NumeroCampoOrigen'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CampoOrigen'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TipoDato'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'TamanoDato'
        Visible = False
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 273
    Width = 608
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    ExplicitTop = 272
    ExplicitWidth = 185
    object BitBtn1: TBitBtn
      Left = 237
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Aceptar'
      DoubleBuffered = True
      Kind = bkOK
      ParentDoubleBuffered = False
      TabOrder = 0
    end
  end
  object dsCamposDestino: TDataSource
    DataSet = dmDatos.tbCamposDestino
    Left = 128
    Top = 24
  end
end
