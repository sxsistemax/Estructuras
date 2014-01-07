unit uPlantillas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MantenimientoSPA, DB, JvComponentBase, JvEnterTab, DBCtrls, ExtCtrls,
  StdCtrls, JvExStdCtrls, JvEdit, JvDBSearchEdit, Grids, DBGrids, ComCtrls,
  Buttons, Mask, JvGroupBox, JvMemoryDataset;

type
  TfrPlantillas = class(TfmBaseMantenimiento)
    dsComponentes: TDataSource;
    Panel5: TPanel;
    grComponentes: TDBGrid;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    eCodigo: TDBEdit;
    eDescripcion: TDBEdit;
    GroupBox1: TGroupBox;
    bCargar: TBitBtn;
    bDuplicar: TBitBtn;
    bEliminarComponentes: TBitBtn;
    BitBtn1: TBitBtn;
    JvGroupBox1: TJvGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    eCosto: TEdit;
    eUtilidad: TEdit;
    ePrecio: TEdit;
    eValorIVA: TEdit;
    eNetoVenta: TEdit;
    eRentabilidad: TEdit;
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

uses uDatos, uDuplicarComponente, uBaseDatosA2, uTablasConBlobAdministrativo;

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
  PonerFiltroComponentes;
  inherited;

end;

procedure TfrPlantillas.dgGridDblClick(Sender: TObject);
begin
  PonerFiltroComponentes;

  inherited;
end;

procedure TfrPlantillas.PageControl1Change(Sender: TObject);
begin
  PonerFiltroComponentes;

  inherited;
end;

procedure TfrPlantillas.PonerFiltroComponentes;
begin
  dmDatos.AbrirComponentes(dmDatos.qrPlantillas.FieldByName('FEN_CODIGO').Value);
end;

end.
