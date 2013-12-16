object frPrincipal: TfrPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 262
  ClientWidth = 599
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
  object pAcciones: TPanel
    Left = 0
    Top = 0
    Width = 599
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitTop = 24
    object ActionToolBar2: TActionToolBar
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 591
      Height = 33
      ActionManager = ActionManager1
      Align = alClient
      Caption = 'ActionToolBar2'
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
      ExplicitLeft = 28
      ExplicitTop = 8
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
        ActionBar = ActionToolBar2
      end>
    Left = 360
    Top = 72
    StyleName = 'Platform Default'
    object aPlantillas: TAction
      Caption = 'Plantillas'
      OnExecute = aPlantillasExecute
    end
  end
end
