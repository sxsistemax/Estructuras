object frPrincipal: TfrPrincipal
  Left = 0
  Top = 0
  Caption = 'Migrar Estructuras'
  ClientHeight = 408
  ClientWidth = 744
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 744
    Height = 209
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 58
      Height = 13
      Caption = 'Ruta Datos:'
    end
    object SpeedButton1: TSpeedButton
      Left = 664
      Top = 24
      Width = 23
      Height = 22
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B6D6E1B3D52
        1B3D531B3D521B3E541C3F551C40571D41581D425A1E435B1E445C1F455E1F46
        5F2248617CA6C0FFFFFF7B7B7B3383B24591BF4C93C14B93C14B93C04B92C04B
        92C04B92BF4B92BF4B91BF4B91BE4B91BE468EBC214C69FBFDFE7D7D7D214760
        3885B73984B43884B43884B43884B43984B43A85B43A85B43A85B43A85B43A85
        B43985B52C546CD2E0EA7D7D7D2A47593B88B9438BB84E91BB4D91BB468DB943
        8AB73B85B53985B43A85B43B86B43C86B53A85B4325A73A4C0D17D7D7D354955
        6CA7CD5B99C25A98C05897BF5898BF5596BE5595BF4C90BB4088B73A85B43884
        B33783B32D587289ABC17D7D7D3E4A537BB0D0639FC5649FC4629EC4619DC35F
        9CC25E9BC25D9BC15D9AC25C9AC15596BE4B8FBA478FBC4A606F7D7D7D55585A
        80A9C36DA7CD6CA5CA6AA4CA68A3C967A2C864A1C764A0C5639FC5649FC4639F
        C5629EC45D9DC54D63717D7D7DA5A19F4356614F65724F64724F64714F64704E
        63704F637199BED674AACD68A2C766A1C565A0C5629FC64F65717D7D7DA3A2A1
        B1ADABBAB5B1BDB8B5C3BEBAC9C4C0CFC9C6D7D1CC525D64586872A3C6DEA0C8
        E0A2C9E2A4CBE3596A747D7D7DA3A3A3ADADADB2B2B2B8B8B8BCBCBCC2C2C2C5
        C5C5CDCCCCD8D5D3D9D7D5525F66535F665E6A704D5A62ECF1F47E7E7EA4A4A4
        AFAFAFB4B4B4B9B9B9BDBDBDC1C1C1CDCDCDD6D6D6DCDCDCE5E4E3ECEAE8FAF7
        F5FEFAF9848484FFFFFF7D7D7DB2B2B2ACACACB2B2B2B7B7B7C0C0C0E7E7E783
        8383777777727272727272727272727272707070FFFFFFFFFFFFCBCBCB7E7E7E
        7F7F7F7F7F7F7F7F7F808080737373F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = SpeedButton1Click
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 94
      Height = 13
      Caption = 'Archivo a Importar:'
    end
    object SpeedButton2: TSpeedButton
      Left = 664
      Top = 72
      Width = 23
      Height = 22
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B6D6E1B3D52
        1B3D531B3D521B3E541C3F551C40571D41581D425A1E435B1E445C1F455E1F46
        5F2248617CA6C0FFFFFF7B7B7B3383B24591BF4C93C14B93C14B93C04B92C04B
        92C04B92BF4B92BF4B91BF4B91BE4B91BE468EBC214C69FBFDFE7D7D7D214760
        3885B73984B43884B43884B43884B43984B43A85B43A85B43A85B43A85B43A85
        B43985B52C546CD2E0EA7D7D7D2A47593B88B9438BB84E91BB4D91BB468DB943
        8AB73B85B53985B43A85B43B86B43C86B53A85B4325A73A4C0D17D7D7D354955
        6CA7CD5B99C25A98C05897BF5898BF5596BE5595BF4C90BB4088B73A85B43884
        B33783B32D587289ABC17D7D7D3E4A537BB0D0639FC5649FC4629EC4619DC35F
        9CC25E9BC25D9BC15D9AC25C9AC15596BE4B8FBA478FBC4A606F7D7D7D55585A
        80A9C36DA7CD6CA5CA6AA4CA68A3C967A2C864A1C764A0C5639FC5649FC4639F
        C5629EC45D9DC54D63717D7D7DA5A19F4356614F65724F64724F64714F64704E
        63704F637199BED674AACD68A2C766A1C565A0C5629FC64F65717D7D7DA3A2A1
        B1ADABBAB5B1BDB8B5C3BEBAC9C4C0CFC9C6D7D1CC525D64586872A3C6DEA0C8
        E0A2C9E2A4CBE3596A747D7D7DA3A3A3ADADADB2B2B2B8B8B8BCBCBCC2C2C2C5
        C5C5CDCCCCD8D5D3D9D7D5525F66535F665E6A704D5A62ECF1F47E7E7EA4A4A4
        AFAFAFB4B4B4B9B9B9BDBDBDC1C1C1CDCDCDD6D6D6DCDCDCE5E4E3ECEAE8FAF7
        F5FEFAF9848484FFFFFF7D7D7DB2B2B2ACACACB2B2B2B7B7B7C0C0C0E7E7E783
        8383777777727272727272727272727272707070FFFFFFFFFFFFCBCBCB7E7E7E
        7F7F7F7F7F7F7F7F7F808080737373F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = SpeedButton2Click
    end
    object Label3: TLabel
      Left = 16
      Top = 104
      Width = 79
      Height = 13
      Caption = 'Archivo Destino:'
    end
    object Label4: TLabel
      Left = 324
      Top = 104
      Width = 109
      Height = 13
      Caption = 'Inicializar tabla destino'
    end
    object Label5: TLabel
      Left = 471
      Top = 104
      Width = 50
      Height = 13
      Caption = 'Separador'
    end
    object eRuta: TEdit
      Left = 16
      Top = 24
      Width = 641
      Height = 21
      TabOrder = 0
    end
    object eArchivo: TEdit
      Left = 16
      Top = 72
      Width = 641
      Height = 21
      TabOrder = 1
    end
    object eArchivoDestino: TComboBox
      Left = 24
      Top = 123
      Width = 273
      Height = 21
      TabOrder = 2
      Items.Strings = (
        'Lotes'
        'Ensambles')
    end
    object bSekeccionarCampos: TBitBtn
      Left = 16
      Top = 161
      Width = 130
      Height = 25
      Caption = 'Seleccionar Campos'
      DoubleBuffered = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000DBDBDBCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCDBDBDBBC9444B67E0EB57C09B57C09B57C09B57B08B47B08B5
        7B08B57B08B47B08B57B08B57B08B57B08B57C09B67E0EBC9444B67E0EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFB67E0EB57C09FFFFFFA09D9E8F8F8F939291D2D1D2FFFFFFC1
        C2C3C1C2C4FFFFFFC1C2C4C3C4C6C3C4C6C2C4C7FFFFFFB57B09B57B08FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFB47B08B57B08FFFFFF9996968B88868F8C8ACAC9C8FCFCFBBB
        BBBBBBBBBBFCFCFBBBBBBBBDBDBDBDBDBDBBBCBEFFFFFFB57B08B57B08FFFFFF
        FCFDFEFFFFFFFFFFFEFAFAF9F7F7F6F8F8F7F8F8F7F7F7F6F8F9F7FAFAF9FAFA
        F9F8F9F9FFFFFFB57B08B57B08FFFFFF92908F868381888684C4C1BFF3F2F1B3
        B2B2B3B2B2F4F2F1B3B2B2B5B4B4B5B4B4B2B2B4FFFFFFB57B08B57B08FFFFFF
        F2F1F2F6F5F5F5F4F4F0F0EFEEEDECEFEEEDEFEEEDEEEDECEFEEEDF1F0EFF1F0
        EFEEEEEEFFFFFFB57B08B57C09FFFFFF8B8988807E7C83817FBABAB7E9E8E7AC
        ABAAADACABE9E8E7ADACABAFAEADAEADACABABABFFFFFFB57B08B57B09FFFFFF
        E6E6E5EBEAE8EAE9E7E5E4E2E2E1DFE4E3E1E4E3E1E3E2DFE4E3E1E6E5E2E5E4
        E2E2E2E1FFFFFFB57B08B57C09FFFFFF807E7D767372797776AEADACDADAD9A1
        A09FA1A09FDADADAA1A1A0A2A2A1A2A2A19F9FA0FFFFFFB57B09B57C0BFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFB57C0BB67F10F5DDB7DC9D37DC9E39DC9F3ADB9E39DB9E39DB
        9E39DB9E39DB9E39DB9E39DC9E39DB9E39DB9D37F5DDB7B67F10B88216EFD09E
        ECCD99ECCD99ECCD9AECCD9AECCD9AECCD9AECCD9AECCD9AECCD9AECCD9AECCD
        99ECCD99EFD09EB88216CBA353B88217B78115B68114B68115B68115B68115B6
        8115B68115B68115B68115B68115B68114B78115B88217CBA353}
      ParentDoubleBuffered = False
      TabOrder = 4
      OnClick = bSekeccionarCamposClick
    end
    object BorrarTablaDestino: TCheckBox
      Left = 375
      Top = 125
      Width = 18
      Height = 17
      TabOrder = 3
    end
    object bCargar: TBitBtn
      Left = 152
      Top = 161
      Width = 75
      Height = 25
      Caption = 'Cargar'
      DoubleBuffered = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000AE7C53AE7C53
        AE7C53AE7C53AE7C53AE7C53AE7C53AE7C53AE7C53AE7C53AE7C53AE7C53AE7C
        53AE7C53FFFFFFFFFFFFB07E54FFFFFCFFFCF5FFFCF5FFFCF5FFFCF5FFFCF5FF
        FCF5FFFCF5FFFCF53D45B56062B9FFFCF5AE7C53FFFFFFFFFFFFB28055FFFCF6
        FFFCF5FFFCF5FFFFF2FFFEEFFFFCECFFFBEAFFFFE9FFFCF5313EBBA2A7EB5059
        C2AE7C53FFFFFFFFFFFFB58256FFFFF8FFFCF56A70C86066C26469C26569C264
        69C1646AC14F56BB656ECFA2A7EBA2A7EB434AB7D1CEE3FFFFFFB78557FFFFF8
        FFFCF53B48BF9BA1ED545FDF5963E0606AE16871E36F78E4777FE67E86E78B92
        EAAEBAEC414DBFB6BAEFBA8758FFFFF8FFFCF54E59C79BA1ED868DE8979EEB9B
        A3EB9FA7EBA2ACEBA6B0EBAAB5EBA6B1ECAEBAEC3F4BC0B6BAEFBC8959FFFFF8
        FFFCF5323EBA323EBA323EBA323EBA323EBA323EBA323EBA4F57C0B6BAEFB6BA
        EF3B45B9FFFFFFFFFFFFBE8B5AFEFAF6FFFCF5FEF6F0FEF6F0FEF6F0FEF6F0FE
        F6F0FEF6F0FFFCF5323EBAB6BAEF3D48BEAE7C53FFFFFFFFFFFFC18E5CFEF9F6
        FFF7F0FFFEF2FFFFF3FFFEF2FFFEF2FFFEF1FFFFF1FFFCF52E3BB84F57C0E2DF
        E7AE7C53FFFFFFFFFFFFC3905DFEF9F6FEF6F0FEF6F0FEF6F0FEF6F0FEF6F0FE
        F6F0FEF6EFFFFCF5FFF6EFFFF3E8FFFBF0AE7C53FFFFFFFFFFFFC8925EFEF9F6
        FEF6F0FEF6F0FEF6F0FEF6F0FEF6F0FEF6F0FEF6F0FFF6EFFFFBEFFFF4EBFFF8
        F2AE7C53FFFFFFFFFFFFCA945FFEFAF8FFF7F3FFF8F4FFF8F4FFF9F5FFF9F5FF
        F9F5FFF9F6FFF9F6FFF9F5FFF8F3FEF6F0AE7C53FFFFFFFFFFFFCC9760FEF6F0
        F4DFB7F3DBB3F1D5ACF0CEA5EEC89DECC197EBBD93EBBD92EBBD92EBBD91FEF6
        F0AE7C53FFFFFFFFFFFFCF9961FEF6F0EFD49DEECE97EBC48DE9BA82E6B177E4
        A96FE3A468E3A467E3A467E3A467FEF6F0AE7C53FFFFFFFFFFFFD19B62FEF6F0
        FEF6F0FEF6F0FEF6F0FEF6F0FEF6F0FEF6F0FEF6F0FEF6F0FEF6F0FEF6F0FEF6
        F0AE7C53FFFFFFFFFFFFD49F66D19B62CE9861CB9660C8935EC4905DC18E5CBE
        8B5ABB8959B98658B68356B38155B07E54AE7C53FFFFFFFFFFFF}
      ParentDoubleBuffered = False
      TabOrder = 5
      OnClick = bCargarClick
    end
    object bImportar: TBitBtn
      Left = 233
      Top = 161
      Width = 75
      Height = 25
      Caption = 'Importar'
      DoubleBuffered = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000B07E55B07E55
        B07E55B07E55B07E55B07E55B07E55B07E55B07E55B07E55B07E55B07E55B07E
        55B07E55FFFFFFFFFFFFB28056FFFFFEFFF8F3FFF7F1FFF6EEFFF5EDFFFEFB8E
        AF82429B4EFFF6EBFFEFE1FFEDE0FFF8ECB07E55FFFFFFFFFFFFB48257FFFAF6
        FEF2EBFEF1E8FFF2EAFFF1E956905196DBA7429B4EFFF2EAFFECDFFFE9DBFFF4
        E9B07E55FFFFFFFFFFFFB78458FFFBF7FEF3EDFFF9F6DCDCC945924B9BE5AA9F
        EAAD5FB26B419B50419B503F994E3D974C409C504D9F5A429B4EB98759FFFCF9
        FFF9F693B38B57A663ACF3BA88E29379D9877CDA8C77D5886CCE7F62C67557BF
        6D4EB7658CDBA1429B4EBC895AFFFCF8FFFAF793B48C57A662ACF3BA88E3957B
        DC8880DD8E7AD98A70D18165C8795AC16F51B9678DDCA2429B4EBE8B5BFFFCF8
        FEF5EFFFFCFADCDFCF45924B9DE5ACA3EEB161B26D449B50439B51429B4E3F99
        4E429D504D9E58429B4EC08D5CFFFBF8FEF5EFFEF6F0FFF8F4FFF8F557935497
        DBA7429B4EFFFBFAFFF5EDFFF2EAFFFAF4B07E55FFFFFFFFFFFFC3905EFFFBF8
        FEF5EFFEF6F0FEF6F0FFF6F1FFFFFF8AAD82429B4EFFF7F1FEEFE7FEEEE3FFF4
        ECB07E55FFFFFFFFFFFFC5925FFFFBF8FEF5EFFEF6F0FEF6F0FEF6F0FEF6F0FF
        FAF6FFF8F3FEF3ECFEF2E8FEEFE6FFF7EEB07E55FFFFFFFFFFFFC89460FFFBF8
        FEF5EFFEF6F0FEF6F0FEF6F0FEF6F0FEF6F0FEF5EFFEF4EEFEF3ECFEF1E8FFF7
        F2B07E55FFFFFFFFFFFFCA9661FFFCFBFEF7F2FEF7F3FEF8F3FEF8F4FFF8F4FF
        F8F5FFF9F5FFF8F4FFF7F3FFF5F0FFFBF9B07E55FFFFFFFFFFFFCC9962FFFCFB
        F7E5CAF6E3C7F5DDC2F4DABDF1D5B7F2D2B3F0D0B1F0D1B2F0CFB1F0D0AFFFFC
        FBB07E55FFFFFFFFFFFFCF9B63FFFCFBEFD4A3EDCE9AEBC590E9BB85E5B37CE5
        AC73E3A86EE4A86EE4A96EE4A96FFFFCFBB07E55FFFFFFFFFFFFD19D64FFFCFB
        FFFCFBFFFCFBFFFCFBFFFCFBFFFCFBFFFCFBFFFCFBFFFCFBFFFCFBFFFCFBFFFC
        FBB07E55FFFFFFFFFFFFD4A168D19D64CE9A63CB9862C89560C6925FC3905EC0
        8D5CBD8B5BBB885AB88558B58357B28056B3835CFFFFFFFFFFFF}
      ParentDoubleBuffered = False
      TabOrder = 6
      OnClick = bImportarClick
    end
    object eSeparador: TComboBox
      Left = 471
      Top = 123
      Width = 145
      Height = 21
      TabOrder = 7
      Items.Strings = (
        'Coma'
        'Dos puntos'
        'Espacio'
        'Gui'#243'n'
        'Punto y coma'
        'Tabulador')
    end
  end
  object JvDBGrid1: TJvDBGrid
    Left = 0
    Top = 209
    Width = 744
    Height = 199
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
  end
  object dgSeleccionarDirectorio: TJvSelectDirectory
    Left = 616
    Top = 24
  end
  object dgAbrirArchivo: TOpenTextFileDialog
    Left = 616
    Top = 72
  end
  object DataSource1: TDataSource
    AutoEdit = False
    Left = 664
    Top = 152
  end
end