object frRecalcularCosto: TfrRecalcularCosto
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Recalcular'
  ClientHeight = 213
  ClientWidth = 291
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 176
    Width = 291
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object bGuardar: TBitBtn
      Left = 72
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Guardar'
      DoubleBuffered = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      ModalResult = 1
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = bGuardarClick
    end
    object bCancelar: TBitBtn
      Left = 153
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      DoubleBuffered = True
      Kind = bkCancel
      ParentDoubleBuffered = False
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 291
    Height = 176
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object Label4: TLabel
      Left = 24
      Top = 16
      Width = 32
      Height = 13
      Caption = 'Costo:'
    end
    object Label6: TLabel
      Left = 24
      Top = 43
      Width = 33
      Height = 13
      Caption = 'Precio:'
    end
    object Label7: TLabel
      Left = 24
      Top = 70
      Width = 48
      Height = 13
      Caption = 'Valor IVA:'
    end
    object Label8: TLabel
      Left = 24
      Top = 97
      Width = 58
      Height = 13
      Caption = 'Neto Venta:'
    end
    object Label9: TLabel
      Left = 24
      Top = 124
      Width = 39
      Height = 13
      Caption = 'Utilidad:'
    end
    object Label1: TLabel
      Left = 24
      Top = 151
      Width = 63
      Height = 13
      Caption = 'Rentabilidad:'
    end
    object eCosto: TLabel
      Left = 146
      Top = 13
      Width = 119
      Height = 13
      AutoSize = False
    end
    object ePrecio: TLabel
      Left = 146
      Top = 40
      Width = 119
      Height = 13
      AutoSize = False
    end
    object eValorIVA: TLabel
      Left = 146
      Top = 67
      Width = 119
      Height = 13
      AutoSize = False
    end
    object eNetoVenta: TLabel
      Left = 146
      Top = 94
      Width = 119
      Height = 13
      AutoSize = False
    end
    object eUtilidad: TLabel
      Left = 146
      Top = 121
      Width = 95
      Height = 13
      AutoSize = False
    end
    object eRentabilidad: TEdit
      Left = 144
      Top = 149
      Width = 121
      Height = 21
      TabOrder = 0
      OnChange = eRentabilidadChange
    end
  end
end
