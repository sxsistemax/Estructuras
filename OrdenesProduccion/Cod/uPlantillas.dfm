inherited frPlantillas: TfrPlantillas
  Caption = 'Plantillas'
  ClientHeight = 515
  ClientWidth = 822
  ExplicitLeft = -95
  ExplicitWidth = 838
  ExplicitHeight = 554
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 483
    Width = 822
    ExplicitTop = 483
    ExplicitWidth = 822
    inherited Panel2: TPanel
      Left = 490
      ExplicitLeft = 490
      inherited btSeleccionar: TBitBtn
        Enabled = False
      end
    end
  end
  inherited PageControl1: TPageControl
    Width = 822
    Height = 483
    ActivePage = tsRegistro
    ExplicitWidth = 822
    ExplicitHeight = 483
    inherited tsListado: TTabSheet
      ExplicitWidth = 814
      ExplicitHeight = 452
      inherited dgGrid: TDBGrid
        Width = 814
        Height = 426
        PopupMenu = pmPlantilla
        Columns = <
          item
            Expanded = False
            FieldName = 'Fi_Codigo'
            Title.Caption = 'Codigo'
            Width = 106
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fi_Descripcion'
            Title.Caption = 'Descripcion'
            Width = 367
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FI_CLASIFICACION'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Costo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PrecioSinImpuesto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Impuesto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Precio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Rentabilidad'
            Visible = True
          end>
      end
      inherited pBusqueda: TPanel
        Width = 814
        ExplicitWidth = 814
        inherited Panel4: TPanel
          Left = 625
          ExplicitLeft = 625
          inherited cbCampoBusqueda: TComboBox
            Left = -8
            Items.Strings = (
              'FI_CODIGO'
              'FI_DESCRIPCION')
            ExplicitLeft = -8
          end
        end
      end
    end
    inherited tsRegistro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 27
      ExplicitWidth = 814
      ExplicitHeight = 452
      inherited Bevel1: TBevel
        Top = 223
        Width = 814
        ExplicitLeft = 11
        ExplicitTop = 29
        ExplicitWidth = 818
      end
      inherited Bevel2: TBevel
        Top = 225
        Height = 225
        ExplicitTop = 231
        ExplicitHeight = 448
      end
      inherited Bevel3: TBevel
        Top = 450
        Width = 814
        ExplicitTop = 450
        ExplicitWidth = 818
      end
      inherited Bevel4: TBevel
        Left = 812
        Top = 225
        Height = 225
        ExplicitLeft = 816
        ExplicitTop = 231
        ExplicitHeight = 448
      end
      object Panel5: TPanel
        AlignWithMargins = True
        Left = 5
        Top = 228
        Width = 804
        Height = 219
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object grComponentes: TDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 798
          Height = 213
          Align = alClient
          DataSource = dsComponentes
          PopupMenu = pmComponentes
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Codigo'
              Width = 108
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Descripcion'
              Width = 405
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Lote'
              Width = 97
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cantidad'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Costo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FX_COSTOS'
              Visible = False
            end>
        end
      end
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 814
        Height = 223
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 1
        object Label1: TLabel
          Left = 6
          Top = 4
          Width = 33
          Height = 13
          Caption = 'Codigo'
          FocusControl = eCodigo
        end
        object Label2: TLabel
          Left = 7
          Top = 56
          Width = 56
          Height = 13
          Caption = 'Descripci'#243'n'
          FocusControl = eDescripcion
        end
        object eCodigo: TDBEdit
          Left = 7
          Top = 23
          Width = 137
          Height = 21
          DataField = 'FI_CODIGO'
          DataSource = dsDataSource
          ReadOnly = True
          TabOrder = 0
        end
        object eDescripcion: TDBEdit
          Left = 6
          Top = 75
          Width = 513
          Height = 21
          DataField = 'FI_DESCRIPCION'
          DataSource = dsDataSource
          ReadOnly = True
          TabOrder = 1
        end
        object GroupBox1: TGroupBox
          Left = 7
          Top = 144
          Width = 524
          Height = 75
          Caption = ' Componentes '
          TabOrder = 2
          object bCargar: TBitBtn
            Left = 11
            Top = 32
            Width = 116
            Height = 25
            Action = aCargarDesde
            Caption = 'Cargar desde'
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
            TabOrder = 0
          end
          object bDuplicar: TBitBtn
            Left = 133
            Top = 32
            Width = 116
            Height = 25
            Action = aCopiarA
            Caption = 'Copiar A'
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
            TabOrder = 1
          end
          object bEliminarComponentes: TBitBtn
            Left = 377
            Top = 32
            Width = 116
            Height = 25
            Action = aEliminarTodosComponentes
            Caption = 'Eliminar Todos'
            DoubleBuffered = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F2E6E7E8C0C0C3FEFEFEFEFE
              FEB9B9BCF2F2F2FFFFFF151823171A2516192416192416192416192416192448
              4A53F5F5F66062691E212AAAABAE8B8C902F31388B8D90FFFFFF181A24191B25
              181A25181A25181A25181A25191B26242630C5C6C9DCDDDE393C44292B332F31
              38535459EAEAEAFFFFFF1B1D271C1E281C1E281C1E281C1E281C1E281C1F281D
              1F292A2C35EBEBEC7D7E832E303735363CA4A5A7FEFEFEFFFFFF20222B21232C
              FFFFFFFFFFFFFFFFFFFFFFFF20222B23252EA9AAAE95969A2F31375253585051
              56454549BEBEC0FFFFFF24262F252730272931282A32282A3227293127293151
              5259F9F9F99A9B9E58595EE8E9E9E1E1E2606163C0C0C1FFFFFF282A32292B33
              292B33292B33292B33292B33282A32292B326C6E73F9F9F9FDFDFDAFB0B3FEFE
              FEFFFFFFFFFFFFFFFFFF2C2E352D2F36FFFFFFFFFFFFFFFFFFFFFFFF2C2E352D
              2E362E2F376F70759C9DA0414249FEFEFEFFFFFFFFFFFFFFFFFF303238313339
              31333931333931333931333930323831323931323931323931323943444BFEFE
              FEFFFFFFFFFFFFFFFFFF34353B35363C2F31372F31372F31372F31372F313742
              444A35363C34353B35363C46484DFEFEFEFFFFFFFFFFFFFFFFFF38393F393A40
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF68686D38393F38393F38393F4B4C51FEFE
              FEFFFFFFFFFFFFFFFFFF3C3D423D3E423E3E423E3E423E3F433D3E433D3E423D
              3E42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404145414145
              3D3D423D3D423D3E423C3D423C3D423B3C41FFFFFFA2A2A4909093C1C2C3FFFF
              FFFFFFFFFFFFFFFFFFFF444548444548FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58
              585CFFFFFF6464675D5D60F2F2F3FFFFFFFFFFFFFFFFFFFFFFFF47474A48484B
              49494C49494C49494C49494C49494C48484BFFFFFF6F6F71DBDBDCFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF4B4B4E4C4C4F4B4B4E4B4B4E4B4B4E4B4B4E4B4B4E4C
              4C4FFFFFFFD4D4D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentDoubleBuffered = False
            TabOrder = 2
          end
          object bAdicionar: TBitBtn
            Left = 255
            Top = 32
            Width = 116
            Height = 25
            Action = AAdicionarComponente
            Caption = 'Adicionar'
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
            TabOrder = 3
          end
        end
        object JvGroupBox1: TJvGroupBox
          Left = 537
          Top = 4
          Width = 270
          Height = 214
          Caption = ' Costos '
          TabOrder = 3
          object Label4: TLabel
            Left = 16
            Top = 24
            Width = 30
            Height = 13
            Caption = 'Costo:'
          end
          object Label5: TLabel
            Left = 16
            Top = 51
            Width = 38
            Height = 13
            Caption = 'Utilidad:'
          end
          object Label6: TLabel
            Left = 16
            Top = 78
            Width = 33
            Height = 13
            Caption = 'Precio:'
          end
          object Label7: TLabel
            Left = 16
            Top = 105
            Width = 47
            Height = 13
            Caption = 'Valor IVA:'
          end
          object Label8: TLabel
            Left = 16
            Top = 132
            Width = 57
            Height = 13
            Caption = 'Neto Venta:'
          end
          object Label9: TLabel
            Left = 16
            Top = 159
            Width = 62
            Height = 13
            Caption = 'Rentabilidad:'
          end
          object eCosto: TEdit
            Left = 138
            Top = 21
            Width = 121
            Height = 21
            ReadOnly = True
            TabOrder = 0
          end
          object eUtilidad: TEdit
            Left = 138
            Top = 48
            Width = 121
            Height = 21
            ReadOnly = True
            TabOrder = 1
          end
          object ePrecio: TEdit
            Left = 138
            Top = 75
            Width = 121
            Height = 21
            ReadOnly = True
            TabOrder = 2
          end
          object eValorIVA: TEdit
            Left = 138
            Top = 102
            Width = 121
            Height = 21
            ReadOnly = True
            TabOrder = 3
          end
          object eNetoVenta: TEdit
            Left = 138
            Top = 129
            Width = 121
            Height = 21
            ReadOnly = True
            TabOrder = 4
          end
          object eRentabilidad: TEdit
            Left = 138
            Top = 156
            Width = 121
            Height = 21
            ReadOnly = True
            TabOrder = 5
          end
          object bRecalcular: TBitBtn
            Left = 72
            Top = 183
            Width = 137
            Height = 25
            Action = aRecalcular
            Caption = 'Recalcular'
            DoubleBuffered = True
            Glyph.Data = {
              AA040000424DAA04000000000000360000002800000014000000130000000100
              1800000000007404000074120000741200000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBA7956BA7956BF6636FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFBA7956BA7956BA7956BA7956BA7956BF6636FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF8E
              75BF8E75FFFFFFBA7956BA7956BA7956BA7956BA7956BF6636FFFFFFBF6636BF
              6636D46524FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD46524D46524BF8E75BF8E75
              D46524BA7956BA7956BA7956BA7956BA7956BF6636C3BFBDBF6636BF6636D465
              24FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF8E75BF8E75BF8E75BF8E75BF8E75BA
              7956FFFFFFBA7956BA7956BF6636BF6636BF6636BF6636BF6636BF6636D46524
              FFFFFFFFFFFFFFFFFFFFFFFFBF8E75BF8E75BF8E75BF8E75BF8E75BA7956FFFF
              FFFFFFFFFFFFFFFFFFFFBF6636BF6636BF6636BF6636BF6636D46524FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFBF8E75BF8E75FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFBF6636BF6636D46524FFFFFFFFFFFFFFFFFFFFFF
              FFC4A393C4A393C4A393FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFD46524D46524D46524FFFFFFC4A393C4A393
              C4A393C4A393C4A393FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFD46524D46524D46524D46524D46524C4A393C4A393C4A393C4
              A393C4A393FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFD46524D46524D46524D46524D46524C4A393C4A393C4A393C4A393C4A3
              93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4
              6524D46524D46524D46524D46524FFFFFFC4A393C4A393C4A393FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD465
              24D46524D46524FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9B9B1C9B9B1FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3BFBDC3BFBDC3BFBDFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFC9B9B1C9B9B1C9B9B1C9B9B1C9B9B1C4A393FFFF
              FFFFFFFFFFFFFFFFFFFFC9B9B1C3BFBDC3BFBDC3BFBDC3BFBDC3BFBDFFFFFFFF
              FFFFFFFFFFFFFFFFC9B9B1C9B9B1C9B9B1C9B9B1C9B9B1C4A393FFFFFFC3BFBD
              C3BFBDC9B9B1C9B9B1C3BFBDC3BFBDC3BFBDC3BFBDC3BFBDFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFC9B9B1C9B9B1FFFFFFC3BFBDC3BFBDC3BFBDC3BFBDC3
              BFBDC9B9B1FFFFFFC3BFBDC3BFBDC3BFBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFC9B9B1C9B9B1FFFFFFC3BFBDC3BFBDC3BFBDC3BFBDC3BFBDC9B9
              B1FFFFFFC3BFBDC3BFBDC3BFBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFC3BFBDC3BFBDC3BFBDC3BFBDC3BFBDC9B9B1FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFC3BFBDC3BFBDC9B9B1FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentDoubleBuffered = False
            TabOrder = 6
          end
        end
      end
    end
  end
  inherited DBNavigator1: TDBNavigator
    Width = 184
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    ExplicitWidth = 184
  end
  inherited dsDataSource: TDataSource
    Left = 368
    Top = 16
  end
  object dsComponentes: TDataSource
    AutoEdit = False
    DataSet = dmDatos.qrComponentes
    Left = 512
  end
  object pmPlantilla: TPopupMenu
    Left = 480
    Top = 64
    object Cargardesde1: TMenuItem
      Action = aCargarDesde
    end
    object CopiarA1: TMenuItem
      Action = aCopiarA
    end
    object EliminarTodos1: TMenuItem
      Action = aEliminarTodosComponentes
      Caption = 'Eliminar Todos Los Componentes'
    end
    object Recalcular1: TMenuItem
      Action = aRecalcular
    end
  end
  object alPlantillas: TActionList
    Left = 144
    Top = 128
    object aCargarDesde: TAction
      Category = 'Plantillas'
      Caption = 'Cargar desde'
      OnExecute = aCargarDesdeExecute
    end
    object aCopiarA: TAction
      Category = 'Plantillas'
      Caption = 'Copiar A'
      OnExecute = aCopiarAExecute
    end
    object AAdicionarComponente: TAction
      Category = 'Componentes'
      Caption = 'Adicionar'
      OnExecute = AAdicionarComponenteExecute
    end
    object aBorrarComponente: TAction
      Category = 'Componentes'
      Caption = 'Borrar Componente'
      OnExecute = aBorrarComponenteExecute
    end
    object aRecalcular: TAction
      Category = 'Plantillas'
      Caption = 'Recalcular'
    end
    object aEliminarTodosComponentes: TAction
      Category = 'Plantillas'
      Caption = 'Eliminar Todos'
      OnExecute = aEliminarTodosComponentesExecute
    end
    object aEditar: TAction
      Category = 'Componentes'
      Caption = 'Editar'
      OnExecute = aEditarExecute
    end
  end
  object pmComponentes: TPopupMenu
    Left = 328
    Top = 128
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
