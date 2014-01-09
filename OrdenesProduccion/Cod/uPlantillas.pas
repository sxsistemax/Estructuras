unit uPlantillas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MantenimientoSPA, DB, JvComponentBase, JvEnterTab, DBCtrls, ExtCtrls,
  StdCtrls, JvExStdCtrls, JvEdit, JvDBSearchEdit, Grids, DBGrids, ComCtrls,
  Buttons, Mask, JvGroupBox, JvMemoryDataset, ActnList, Menus, uUtilidades;

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
    pmPlantilla: TPopupMenu;
    alPlantillas: TActionList;
    aCargarDesde: TAction;
    aCopiarA: TAction;
    AAdicionarComponente: TAction;
    aBorrarComponente: TAction;
    aRecalcular: TAction;
    bAdicionar: TBitBtn;
    aEliminarTodosComponentes: TAction;
    Cargardesde1: TMenuItem;
    CopiarA1: TMenuItem;
    EliminarTodos1: TMenuItem;
    Recalcular1: TMenuItem;
    pmComponentes: TPopupMenu;
    Adicionar1: TMenuItem;
    BorrarComponente1: TMenuItem;
    aEditar: TAction;
    BorrarComponente2: TMenuItem;
    procedure dgGridCellClick(Column: TColumn);
    procedure dgGridDblClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure aCopiarAExecute(Sender: TObject);
    procedure aCargarDesdeExecute(Sender: TObject);
    procedure AAdicionarComponenteExecute(Sender: TObject);
    procedure aEditarExecute(Sender: TObject);
    procedure aEliminarTodosComponentesExecute(Sender: TObject);
    procedure aBorrarComponenteExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure PonerFiltroComponentes;
  end;

var
  frPlantillas: TfrPlantillas;

implementation

uses uDatos, uDuplicarComponente, uBaseDatosA2, uTablasConBlobAdministrativo,
  uCargarComponentes, uAdicionarComponente;

{$R *.dfm}

procedure TfrPlantillas.AAdicionarComponenteExecute(Sender: TObject);
begin
  inherited;
  AdicionarComponente('', '', 0);
end;

procedure TfrPlantillas.aBorrarComponenteExecute(Sender: TObject);
begin
  inherited;
  if Confirmar('Desea borrar el componte ' + dmDatos.qrComponentesDescripcion.Value +
      ', Lote: ' + dmDatos.qrComponentesLote.Value ) then
  begin
    dmDatos.BorrarComponentes(dmDatos.tbEnsamblesFI_CODIGO.Value,
      dmDatos.qrComponentesCodigo.Value, dmDatos.qrComponentesLote.Value);
    dmDatos.AbrirComponentes(dmDatos.tbEnsamblesFI_CODIGO.Value);
  end;
end;

procedure TfrPlantillas.aCargarDesdeExecute(Sender: TObject);
begin
  inherited;
  CargarComponente;
end;

procedure TfrPlantillas.aCopiarAExecute(Sender: TObject);
begin
  inherited;
  DuplicarComponente;
end;

procedure TfrPlantillas.aEditarExecute(Sender: TObject);
begin
  inherited;
  AdicionarComponente(dmDatos.qrComponentesCodigo.Value, dmDatos.qrComponentesLote.Value,
        dmDatos.qrComponentesCantidad.Value);
end;

procedure TfrPlantillas.aEliminarTodosComponentesExecute(Sender: TObject);
begin
  inherited;
  if Confirmar('Desea borrar todos los componentes de  ' + dmDatos.tbEnsamblesFI_DESCRIPCION.Value) then
  begin
    dmDatos.BorrarComponentes(dmDatos.tbEnsamblesFI_CODIGO.Value, '', '');
    dmDatos.AbrirComponentes(dmDatos.tbEnsamblesFI_CODIGO.Value);
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
//  PonerFiltroComponentes;
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
  dmDatos.AbrirComponentes(dmDatos.tbEnsambles.FieldByName('FI_CODIGO').Value);
end;

end.
