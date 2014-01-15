inherited frSeleccionarLotes: TfrSeleccionarLotes
  BorderStyle = bsDialog
  Caption = 'Seleccionar Lotes'
  ClientHeight = 211
  ClientWidth = 335
  ExplicitWidth = 341
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 179
    Width = 335
    ExplicitTop = 179
    ExplicitWidth = 335
    inherited Panel2: TPanel
      Left = 3
      ExplicitLeft = 3
    end
  end
  inherited PageControl1: TPageControl
    Width = 335
    Height = 179
    ExplicitWidth = 335
    ExplicitHeight = 179
    inherited tsListado: TTabSheet
      ExplicitWidth = 327
      ExplicitHeight = 148
      inherited dgGrid: TDBGrid
        Width = 327
        Height = 79
      end
      inherited pBuscar: TPanel
        Width = 327
      end
      inherited pFiltro: TPanel
        Width = 327
      end
    end
    inherited tsRegistro: TTabSheet
      ExplicitWidth = 694
      inherited Bevel1: TBevel
        Width = 327
        ExplicitWidth = 327
      end
      inherited Bevel2: TBevel
        Height = 144
        ExplicitHeight = 144
      end
      inherited Bevel3: TBevel
        Top = 146
        Width = 327
        ExplicitTop = 146
        ExplicitWidth = 327
      end
      inherited Bevel4: TBevel
        Left = 325
        Height = 144
        ExplicitLeft = 325
        ExplicitHeight = 144
      end
    end
  end
  inherited dsDataSource: TDataSource
    Left = 112
    Top = 40
  end
end
