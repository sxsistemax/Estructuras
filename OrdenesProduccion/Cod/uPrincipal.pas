unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, PlatformDefaultStyleActnCtrls, ActnMan, ToolWin, ActnCtrls,
  ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, DB, Buttons;

type
  TfrPrincipal = class(TForm)
    ActionManager1: TActionManager;
    aPlantillas: TAction;
    Panel1: TPanel;
    Panel2: TPanel;
    pAcciones: TActionToolBar;
    Panel3: TPanel;
    btCancelar: TBitBtn;
    btGuardar: TBitBtn;
    BitBtn1: TBitBtn;
    dsConfiguracion: TDataSource;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    aGenerarOrden: TAction;
    aProcesarCostos: TAction;
    procedure aPlantillasExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btGuardarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure aGenerarOrdenExecute(Sender: TObject);
    procedure aProcesarCostosExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CargarPlantillas;
  end;

var
  frPrincipal: TfrPrincipal;

implementation

uses uUtilidadesSPA, uBaseDatosA2, uPlantillas, uDatos,
  uTablasConBlobAdministrativo, uGenerarOrden, uProcesarCostosPlantillas;

{$R *.dfm}

procedure TfrPrincipal.aGenerarOrdenExecute(Sender: TObject);
begin
  GenerarOrdenes;
end;

procedure TfrPrincipal.aPlantillasExecute(Sender: TObject);
begin
  CargarPlantillas;
end;

procedure TfrPrincipal.aProcesarCostosExecute(Sender: TObject);
begin
  RecalcularCostosPlantillas;
end;

procedure TfrPrincipal.btCancelarClick(Sender: TObject);
begin
  if dsConfiguracion.State = dsEdit then
    dsConfiguracion.DataSet.Cancel;
end;

procedure TfrPrincipal.btGuardarClick(Sender: TObject);
begin
  if dsConfiguracion.State = dsEdit then
    dsConfiguracion.DataSet.Post;
end;

procedure TfrPrincipal.CargarPlantillas;
begin
  TfrPlantillas.prMantenimiento( dmDatos.tbEnsambles, 'FI_CODIGO');
end;

procedure TfrPrincipal.FormCreate(Sender: TObject);
begin
  OpcionParametro;

  // Hace la verificación de sEmpresa.Dat
  if dmBasesDatos.ExisteSEmpresa then
  Begin
    // Abre empresas
    dmBasesDatos.AbrirSEmpresa;

    // Conecta la base de datos
    dmBasesDatos.ConectarDB(dmBasesDatos.sEmpresaFE_DIRDATOS.AsString);

    //dmDatos.AbrirSEnsambles;
    dmDatos.AbrirSFixed;
    dmDatos.AbrirUsuarios;
    dmDatos.AbrirConfiguracion;
 End
  Else
  begin
    ShowMessage(
      'No se encontro el archivo sEmpresas.dat, no puede ejecutar el programa'
      );
     Halt(1);
  end;

  Case OpcionA2 of
    100 : Begin
            pAcciones.Visible := True;
          End;
      1 : pAcciones.Visible := false;
      2 : begin
            Self.Visible := false;
            CargarPlantillas;
            if not ModoPruebas then
              Halt(1);
          end;
      3 : begin
            Self.Visible := false;
              GenerarOrdenes;;
            if not ModoPruebas then
              Halt(1);
          end;
      4 : begin
            Self.Visible := false;
              RecalcularCostosPlantillas;;
            if not ModoPruebas then
              Halt(1);
          end;
    else  begin
            ShowMessage('La opción no esta implementada.');
            halt(1);
          end;
  End;
end;

end.
