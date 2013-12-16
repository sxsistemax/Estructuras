unit uPlantillas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MantenimientoSPA, DB, JvComponentBase, JvEnterTab, DBCtrls, ExtCtrls,
  StdCtrls, JvExStdCtrls, JvEdit, JvDBSearchEdit, Grids, DBGrids, ComCtrls,
  Buttons, Mask, JvGroupBox, uSeleccionarInventario;

type
  TfrPlantillas = class(TfrSeleccionarInventario)
    dsComponentes: TDataSource;
    grComponentes: TDBGrid;
    Label1: TLabel;
    eCodigo: TDBEdit;
    Label2: TLabel;
    eDescripcion: TDBEdit;
    Label3: TLabel;
    eCategoria: TDBEdit;
    GroupBox1: TGroupBox;
    bCargar: TBitBtn;
    bDuplicar: TBitBtn;
    bEliminarComponentes: TBitBtn;
    JvGroupBox1: TJvGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    eCosto: TDBEdit;
    eUtilidad: TDBEdit;
    ePrecio: TDBEdit;
    eValorIVA: TDBEdit;
    eNetoVenta: TDBEdit;
    eRentabilidad: TDBEdit;
    bRecalcular: TBitBtn;
    procedure dgGridCellClick(Column: TColumn);
    procedure dgGridDblClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure bDuplicarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure PonerFiltroComponentes;
  end;

var
  frPlantillas: TfrPlantillas;

implementation

uses uDatos, uDuplicarComponente;

{$R *.dfm}

procedure TfrPlantillas.bDuplicarClick(Sender: TObject);
begin
  inherited;
  if DuplicarComponente then
  begin
    ShowMessage('Componente duplicado.');
  end;
end;

procedure TfrPlantillas.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  PonerFiltroComponentes;
  inherited;

end;

procedure TfrPlantillas.dgGridCellClick(Column: TColumn);
begin
  exit;
  inherited;

end;

procedure TfrPlantillas.dgGridDblClick(Sender: TObject);
begin
  PonerFiltroComponentes;

  Exit;

  inherited;
end;

procedure TfrPlantillas.PageControl1Change(Sender: TObject);
begin
  PonerFiltroComponentes;

  inherited;
end;

procedure TfrPlantillas.PonerFiltroComponentes;
begin
  dsComponentes.DataSet.Filtered := false;
  dsComponentes.DataSet.Filter := 'FEN_CODEPARTE <> ''$$$$$$$$$$''' + ' and FEN_CODIGO = ''' + dmDatos.qrPlantillas.FieldByName('FEN_CODIGO').Value + '''';
  dsComponentes.DataSet.Filtered := True;
end;

end.
