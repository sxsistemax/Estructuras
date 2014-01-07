unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, PlatformDefaultStyleActnCtrls, ActnMan, ToolWin, ActnCtrls,
  ExtCtrls, Grids, DBGrids;

type
  TfrPrincipal = class(TForm)
    ActionManager1: TActionManager;
    aPlantillas: TAction;
    pAcciones: TPanel;
    ActionToolBar2: TActionToolBar;
    procedure aPlantillasExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  uTablasConBlobAdministrativo;

{$R *.dfm}

procedure TfrPrincipal.aPlantillasExecute(Sender: TObject);
begin
  CargarPlantillas;
end;

procedure TfrPrincipal.CargarPlantillas;
begin
  TfrPlantillas.prMantenimiento( dmDatos.qrPlantillas, 'FEN_CODIGO');
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
    dmBasesDatos.ConectarDB(dmBasesDatos.sEmpresaFE_DIRDATOS.Value);

    //dmDatos.AbrirSEnsambles;
    dmDatos.AbrirSFixed;
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
      1 : begin
            Self.Visible := false;
            CargarPlantillas;
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
