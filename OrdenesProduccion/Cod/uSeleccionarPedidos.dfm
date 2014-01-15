inherited frSeleccionarPedido: TfrSeleccionarPedido
  Caption = 'Pedidos Pendiente'
  ClientHeight = 285
  ClientWidth = 809
  ExplicitWidth = 825
  ExplicitHeight = 324
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 253
    Width = 809
    ExplicitTop = 253
    ExplicitWidth = 809
    inherited Panel2: TPanel
      Left = 477
      ExplicitLeft = 477
    end
  end
  inherited PageControl1: TPageControl
    Width = 809
    Height = 253
    ExplicitWidth = 809
    ExplicitHeight = 253
    inherited tsListado: TTabSheet
      ExplicitWidth = 801
      ExplicitHeight = 222
      inherited dgGrid: TDBGrid
        Width = 801
        Height = 153
        Columns = <
          item
            Expanded = False
            FieldName = 'Documento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente'
            Width = 256
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Codigo'
            Width = 116
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descripcion'
            Width = 187
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cantidad'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FechaEmision'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FechaVencimiento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Vendedor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Usuario'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IdVendedor'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'IdUsaurio'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'IdCliente'
            Visible = False
          end>
      end
      inherited pBuscar: TPanel
        Width = 801
      end
      inherited pFiltro: TPanel
        Width = 801
      end
    end
    inherited tsRegistro: TTabSheet
      ExplicitWidth = 715
      ExplicitHeight = 222
      inherited Bevel1: TBevel
        Width = 801
        ExplicitWidth = 715
      end
      inherited Bevel2: TBevel
        Height = 218
        ExplicitHeight = 218
      end
      inherited Bevel3: TBevel
        Top = 220
        Width = 801
        ExplicitTop = 220
        ExplicitWidth = 715
      end
      inherited Bevel4: TBevel
        Left = 799
        Height = 218
        ExplicitLeft = 713
        ExplicitHeight = 218
      end
    end
  end
end
