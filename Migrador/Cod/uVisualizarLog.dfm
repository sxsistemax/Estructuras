object frVisualizarLog: TfrVisualizarLog
  Left = 0
  Top = 0
  Caption = 'Resultado Importaci'#243'n'
  ClientHeight = 422
  ClientWidth = 705
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object mLog: TMemo
    Left = 0
    Top = 0
    Width = 705
    Height = 392
    Align = alClient
    Lines.Strings = (
      'mLog')
    TabOrder = 0
    WordWrap = False
    ExplicitTop = -6
  end
  object Panel1: TPanel
    Left = 0
    Top = 392
    Width = 705
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 320
      Top = 0
      Width = 75
      Height = 25
      Caption = '&Cerrar'
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 0
    end
  end
end
