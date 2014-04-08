unit uApartadosPendientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvComponentBase, JvTrayIcon, ExtCtrls;

type
  TfrmApartadosPendientes = class(TForm)
    Intervalo: TTimer;
    JvTrayIcon1: TJvTrayIcon;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IntervaloTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmApartadosPendientes: TfrmApartadosPendientes;

Procedure ChequeoApartadosPendientes;

implementation

uses uDatos, uUtilidadesSPA, uBaseDatosA2;

{$R *.dfm}

Procedure ChequeoApartadosPendientes;
begin
  with TfrmApartadosPendientes.Create(Application) do
  begin
    ShowModal;
    Free;
  end;
end;

procedure TfrmApartadosPendientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Intervalo.Enabled := false;
end;

procedure TfrmApartadosPendientes.FormCreate(Sender: TObject);
begin
  OpcionParametro(1);

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
    dmDatos.AbrirApartadosOrdenes;

  End ;

  Intervalo.Enabled := true;
end;

procedure TfrmApartadosPendientes.IntervaloTimer(Sender: TObject);
begin
  Intervalo.Enabled := False;
  dmDatos.BuscarApatados;
  Intervalo.Enabled := True;
end;

end.
