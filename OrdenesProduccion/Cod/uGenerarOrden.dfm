object frGenerarOrden: TfrGenerarOrden
  Left = 0
  Top = 0
  Caption = 'Generar Orden'
  ClientHeight = 406
  ClientWidth = 775
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 775
    Height = 187
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    ExplicitTop = -4
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 36
      Height = 13
      Caption = 'Pedido:'
    end
    object SpeedButton1: TSpeedButton
      Left = 143
      Top = 34
      Width = 23
      Height = 22
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000DCDCDCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCDCDCDCFFFFFFFFFFFFDCDCDCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCDCDCDC949391767472706D6C6D6A69696765666362838180FF
        FFFFFFFFFF949391767472706D6C6D6A696967656663628381807A7876817E7D
        9C9996898583716F6C595756605D5CFFFFFFFFFFFF7A7876817E7D9C99968985
        83716F6C595756615E5D777573CFCFCFD9D7D6D0CFCEC8C8C7C3C1C15E5A59FF
        FFFFFFFFFF777573D0CFCFD9D7D6D0CFCEC8C8C7C3C1C15E5B5A767472B3B1AF
        CAC9C7B0AEAD91908E7574725E5A59CCCCCCCCCCCC777573B3B1AFCAC9C7B0AE
        AD91908E7575725F5C5B767472B3B1AFCAC9C7B1AEAE9392907776745E5A597A
        7876646260777573B3B1AFCAC9C7B1AEAE939290777674605D5C767472B3B0AE
        CAC9C7B0ADAD91908E7574725B5857767472615F5D767472B3B1AFCAC9C7B0AD
        AD91908E7575735F5C5B777472DEDDDDEBEBE9DBDAD9CAC9C8BBBAB9575453D6
        D5D38C8B89757371DEDDDCEBEBE9DBDAD9CAC9C8BCBCBB5E5B5A7A78766F6D6B
        666261605D5C5E5C5A5E5A5A908F8FD3D2D08A8987A09F9E6C6A68646160625F
        5E615F5D615E5D979594FFFFFF777473BCBAB8CDCBCAA5A3A27E7C7B595655D6
        D5D38C8C89767372BCBAB7CCCAC9A4A2A17E7C7B5F5C5BFFFFFFFFFFFF777473
        B9B7B5C9C7C6A2A09F7D7B7A5C5858777472615F5D777473B9B8B5C9C7C6A2A0
        9F7E7C7B605D5CFFFFFFFFFFFF787574BDBBB9CECCCBA5A3A27E7C7B5E5B5A7B
        7977646260797675BCBBB8CECCCBA6A4A3807E7D605D5CFFFFFFFFFFFFA4A3A1
        716E6D69666564605F625E5D8D8C8BFFFFFFFFFFFF9C9B9A6F6C6B6966656764
        63656261959392FFFFFFFFFFFFFFFFFFCCCCCC787574CBCAC79B9A99625E5DFF
        FFFFFFFFFF787574CAC8C6989796605D5CCCCCCCFFFFFFFFFFFFFFFFFFFFFFFF
        7A7976908D8C908E8C656461615E5DFFFFFFFFFFFF7977758E8B8A918F8D6866
        6463605FFFFFFFFFFFFFFFFFFFFFFFFF7B797773716F6D6B69696665625F5EFF
        FFFFFFFFFF7B797773716F6D6B6969666563605FFFFFFFFFFFFF}
      OnClick = SpeedButton1Click
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 40
      Height = 13
      Caption = 'Plantilla:'
    end
    object lDescripcion: TLabel
      Left = 159
      Top = 86
      Width = 498
      Height = 13
      AutoSize = False
    end
    object Label5: TLabel
      Left = 180
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object lCliente: TLabel
      Left = 172
      Top = 38
      Width = 459
      Height = 13
      AutoSize = False
    end
    object Label3: TLabel
      Left = 16
      Top = 112
      Width = 74
      Height = 13
      Caption = 'Fecha Entrega:'
    end
    object Label4: TLabel
      Left = 143
      Top = 112
      Width = 43
      Height = 13
      Caption = 'Cantidad'
    end
    object Label6: TLabel
      Left = 208
      Top = 112
      Width = 46
      Height = 13
      Caption = 'Vendedor'
    end
    object lVendedor: TLabel
      Left = 208
      Top = 134
      Width = 217
      Height = 13
      AutoSize = False
    end
    object ePedido: TEdit
      Left = 16
      Top = 35
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object ePlantilla: TEdit
      Left = 16
      Top = 83
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object Panel3: TPanel
      Left = 2
      Top = 156
      Width = 771
      Height = 29
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 157
      object bAdicionar: TBitBtn
        Left = 296
        Top = 1
        Width = 146
        Height = 26
        Action = AAdicionarComponente
        Caption = 'Adicionar Componente'
        DoubleBuffered = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFD3D6F9858FEF505EE93E4EE63E4EE6515FE9858FEFD3D7F9FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F8FE818BEF3C4CE63C4CE63C4CE63C
          4CE63C4CE63C4CE63C4CE63D4DE6838DEFF8F9FEFFFFFFFFFFFFFFFFFFF8F9FE
          6874EC3C4CE63C4CE63C4CE63C4BE63B4BE53B4BE53C4BE63C4CE63C4CE63C4C
          E66975ECFAFAFEFFFFFFFFFFFF8892F03C4CE63C4CE63C4CE63C4CE63B4BE39E
          A4E79CA3E63B4BE33C4CE63C4CE63C4CE63C4CE68C95F0FFFFFFD9DCFA3E4DE6
          3C4CE63C4CE63C4CE63C4CE63949E0E3E4F1E0E2F03949E03C4CE63C4CE63C4C
          E63C4CE63E4DE6DBDEFA8F98F13C4CE63C4CE63C4CE63C4CE63C4CE63A49E0E3
          E4F1E0E2F03A49E03C4CE63C4CE63C4CE63C4CE63C4CE6919AF15967EA3C4CE6
          3C4BE63B4BE33A49E03949E03747DBE3E4F1E1E2F03747DB3949E03949E03A4B
          E43C4CE63C4CE65B69EA4454E73C4CE63B4BE6949CE5E2E3F1E2E3F1E2E3F0F1
          F1F4F0F1F4E2E3F0E2E3F1E2E3F1949CE53B4CE63C4CE64554E74554E73C4CE6
          3B4BE6959CE6E2E3F1E2E3F1E2E3F0F1F1F4F0F1F4E2E3F0E2E3F1E2E3F1959C
          E63B4BE63C4CE64655E75E6BEA3C4CE63C4CE63A4BE3394AE1394AE03748DBE2
          E3F0E2E3F03748DB394AE03949E13B4BE43C4CE63C4CE6606DEB929BF13C4CE6
          3C4CE63C4CE63C4CE63C4CE63A49E0E1E2F0E2E3F13A49E03C4CE63C4CE63C4C
          E63C4CE63C4CE6959DF1E2E4FB3F4FE63C4CE63C4CE63C4CE63C4CE63949E0E1
          E2F1E2E3F13949E03C4CE63C4CE63C4CE63C4CE64050E6E4E6FCFFFFFF939CF1
          3C4CE63C4CE63C4CE63C4CE63B4BE49199E6929AE73B4BE43C4CE63C4CE63C4C
          E63C4CE6969FF2FFFFFFFFFFFFFDFDFF7B86EE3C4CE63C4CE63C4CE63C4CE63B
          4CE63B4CE63C4CE63C4CE63C4CE63C4CE67D88EEFDFDFFFFFFFFFFFFFFFFFFFF
          FDFEFF9BA3F24151E73C4CE63C4CE63C4CE63C4CE63C4CE63C4CE64252E79DA5
          F2FDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E9FC9FA7F36975EC4F
          5EE84F5EE86A76EC9FA7F3E8EAFCFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        TabOrder = 0
      end
      object bGenerar: TBitBtn
        Left = 566
        Top = 1
        Width = 116
        Height = 26
        Action = aGenerarOrden
        Caption = 'Generar Orden'
        DoubleBuffered = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000D4E4F471A5DB
          0D65C10D65C10D65C10D65C10D65C10D65C10D65C10D65C10D65C10D65C10D65
          C10D65C171A5DBD4E4F472A5DC348CE14FA7F54FA7F54FA7F54FA7F54FA7F54F
          A7F54FA7F54FA7F54FA7F54FA7F54FA7F54FA7F5348CE172A5DC136BC74EA6F4
          0682F10582F1FFFFFF0582F10582F10582F10582F10582F10582F10582F10582
          F10682F14EA6F4136BC7126BC94FA7F50582F1FFFFFF0381F1FFFFFF0381F103
          81F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0582F14FA7F5126BC9156FCD4FA7F5
          0582F10381F10381F10381F1FFFFFF0381F10381F10381F10381F10381F10381
          F10582F14FA7F5156FCD1672D04FA7F50582F10381F10381F10381F10381F103
          81F10381F10381F10381F10381F10381F10582F14FA7F51672D01974D54FA7F5
          0582F10381F1FFFFFF0381F10381F10381F10381F10381F10381F10381F10381
          F10582F14FA7F51974D51C78D94FA7F50582F1FFFFFF0381F1FFFFFF0381F103
          81F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0582F14FA7F51C78D91E7CDE4FA7F5
          0582F10381F10381F10381F1FFFFFF0381F10381F10381F10381F10381F10381
          F10582F14FA7F51E7CDE217FE24FA7F50582F10381F10381F10381F10381F103
          81F10381F10381F10381F10381F10381F10582F14FA7F5217FE22483E64FA7F5
          0582F10381F1FFFFFF0381F10381F10381F10381F10381F10381F10381F10381
          F10582F14FA7F52483E62686EA4FA7F50582F1FFFFFF0381F1FFFFFF0381F103
          81F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0582F14FA7F52686EA2988EE4FA7F5
          0582F10381F10381F10381F1FFFFFF0381F10381F10381F10381F10381F10381
          F10582F14FA7F52988EE2A8BF14FA7F50582F10582F10582F10582F10582F105
          82F10582F10582F10582F10582F10582F10582F14FA7F52A8BF17EB9F8429DF4
          4FA7F54FA7F54FA7F54FA7F54FA7F54FA7F54FA7F54FA7F54FA7F54FA7F54FA7
          F54FA7F5429DF47EB9F8D5E9FD7FBBF92D8FF62D8FF62D8FF62D8FF62D8FF62D
          8FF62D8FF62D8FF62D8FF62D8FF62D8FF62D8FF67FBBF9D5E9FD}
        ParentDoubleBuffered = False
        TabOrder = 1
      end
      object BitBtn1: TBitBtn
        Left = 688
        Top = 1
        Width = 75
        Height = 26
        Caption = '&Cerrar'
        DoubleBuffered = True
        Kind = bkClose
        ParentDoubleBuffered = False
        TabOrder = 2
      end
      object BitBtn2: TBitBtn
        Left = 448
        Top = 1
        Width = 112
        Height = 26
        Action = aConsultarCosto
        Caption = 'Consultar Costo'
        DoubleBuffered = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF9F9F9F9F9F9FDFDFDFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDC3BCB2BBA88DBD
          A37EBCA17EB7A58EC4BFBAF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFEFECECAC5C8A980D0AA78CFA976CFA874CEA773CEA671CDA66FBAA17DD5D4
          D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDC8C2D1AD80D2AD7DD1AC7BD0AB79D9
          C3A5D4B58CCFA874CEA772CEA671C3A275D5D4D3FFFFFFFFFFFFFFFFFFE6E5E4
          D0AF86D3AF82D3AE80D2AE7FDECAAFE7E1DBE2D8CBD6BA94CFA975CEA873CEA7
          72BAA17EF2F2F2FFFFFFFFFFFFC6B9AAD5B387D4B185D4B083E1CEB6EFEEEEEA
          E5DEE5DBCEE9E8E6D5B78FCFA976CFA875CEA773C4C0BAFFFFFFFCFCFCD0B593
          D7B58CD6B489D5B287E5D4C0E4D4C0E3D2BDDABF9CE9E3DCDECCB4D0AB79D0AA
          78CFA976B8A790FDFDFDEDEDEDD9BA93D8B891D7B68ED6B58BD6B389D5B286E6
          D7C4E8DCCDF0EFEEDEC9ADD1AD7CD1AC7BD0AB79BDA483F9F9F9EAEAE9DBBD98
          DABB95D9B993D8B890D9BA93EEE5D9F6F6F6F4F4F3E8DCCDD4B286D3AE80D2AD
          7ED1AC7CBFA584F9F9F9FAFAFADABF9FDBBE9ADBBC98DABA95E9D9C5F9F8F7F2
          EBE3E0C9ACD5B287D4B185D4B083D3AF81D2AE7FBDAA91FDFDFDFFFFFFCFC0AF
          DDC19FDCBF9CDBBD9AEFE3D5F5EFE8EBDDCBE4D0B6E7D6C1D9BB95D5B287D4B1
          84D3B082C4BDB4FFFFFFFFFFFFDDDAD8DFC4A4DEC2A1DDC09FE6D1B8FDFDFDFA
          F7F3F9F7F4F7F4F1D9BA94D6B58BD5B388CCAE8AEEEEEEFFFFFFFFFFFFFFFFFF
          D1C7BBE0C5A6DFC3A4DEC2A1E5CFB5F6F0E8F0E4D5DEC2A1D9B992D8B790D5B6
          8DCFCBC7FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCD2C8BDE0C6A9DFC4A6DEC3A3DF
          C4A4DDC19FDBBE9ADABC97D5B895CECAC5FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFDEDCD9D1C3B4DCC4A9DFC4A5DEC2A2D5BDA0C9BEB1E7E6E5FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAEB
          EBEAEEEEEDFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        TabOrder = 3
      end
    end
    object eFechaEntrega: TDateTimePicker
      Left = 16
      Top = 131
      Width = 105
      Height = 21
      Date = 41649.011206261570000000
      Time = 41649.011206261570000000
      TabOrder = 3
    end
    object eCantidad: TEdit
      Left = 143
      Top = 131
      Width = 43
      Height = 21
      ReadOnly = True
      TabOrder = 4
      Text = '1'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 187
    Width = 775
    Height = 219
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    ExplicitTop = 153
    ExplicitWidth = 692
    ExplicitHeight = 253
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 771
      Height = 215
      Align = alClient
      DataSource = dsComponetes
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      PopupMenu = pmComponentes
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = aEditarExecute
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descripcion'
          Width = 288
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Lote'
          Width = 131
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cantidad'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Existencia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Costo'
          Visible = True
        end>
    end
  end
  object dsComponetes: TDataSource
    AutoEdit = False
    DataSet = dmDatos.tbComponentes
    Left = 568
    Top = 24
  end
  object alPlantillas: TActionList
    Left = 408
    Top = 24
    object AAdicionarComponente: TAction
      Category = 'Componentes'
      Caption = 'Adicionar Componente'
      OnExecute = AAdicionarComponenteExecute
    end
    object aBorrarComponente: TAction
      Category = 'Componentes'
      Caption = 'Borrar Componente'
      OnExecute = aBorrarComponenteExecute
    end
    object aEditar: TAction
      Category = 'Componentes'
      Caption = 'Editar'
      OnExecute = aEditarExecute
    end
    object aGenerarOrden: TAction
      Category = 'Componentes'
      Caption = 'Generar Orden'
      OnExecute = aGenerarOrdenExecute
    end
    object aConsultarCosto: TAction
      Category = 'Componentes'
      Caption = 'Consultar Costo'
      OnExecute = aConsultarCostoExecute
    end
  end
  object pmComponentes: TPopupMenu
    Left = 472
    Top = 24
    object Adicionar1: TMenuItem
      Action = AAdicionarComponente
    end
    object BorrarComponente1: TMenuItem
      Action = aEditar
    end
    object BorrarComponente2: TMenuItem
      Action = aBorrarComponente
    end
  end
end