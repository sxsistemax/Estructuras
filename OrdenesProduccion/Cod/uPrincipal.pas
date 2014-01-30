unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, PlatformDefaultStyleActnCtrls, ActnMan, ToolWin, ActnCtrls,
  ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, DB, Buttons, uSeguridad;

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
    bRegistro: TBitBtn;
    procedure aPlantillasExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btGuardarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure aGenerarOrdenExecute(Sender: TObject);
    procedure aProcesarCostosExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bRegistroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CargarPlantillas;
    procedure CargarDatosAplicaion;
  end;

var
  frPrincipal: TfrPrincipal;

implementation

uses uUtilidadesSPA, uBaseDatosA2, uPlantillas, uDatos,
  uTablasConBlobAdministrativo, uGenerarOrden, uProcesarCostosPlantillas, OnGuard;

Const
  IdentificadorAplicacion : TKey = ($53,$71,$23,$01,$CE,$CE,$85,$96,$58,$36,$E6,$2E,$87,$C6,$77,$98);

{$R *.dfm}

procedure TfrPrincipal.CargarDatosAplicaion;
begin
  // Se debe sobre escribir para llenar los datos necesaros de la aplicación

  // Ejemplo el identificador para validar el registro.
  Key := IdentificadorAplicacion;
end;


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

procedure TfrPrincipal.bRegistroClick(Sender: TObject);
begin
  MostrarRegistrado;
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

procedure TfrPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmBasesDatos.dbA2.CloseDataSets;
end;

procedure TfrPrincipal.FormCreate(Sender: TObject);
begin
  CargarDatosAplicaion;

  ModoDemo := False;

  ValidarRegistro(ModoDemo);

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

    dsConfiguracion.DataSet := dmDatos.SPAOrdenesConfiguracion;
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
