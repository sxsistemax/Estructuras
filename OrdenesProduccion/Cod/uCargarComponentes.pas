unit uCargarComponentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Mask, DBCtrls, Buttons, ExtCtrls;

type
  TfrCargarComponentes = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    eCodigo: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    eDescripcion: TDBEdit;
    CodigoDestino: TLabel;
    eCodigoOrigen: TEdit;
    SpeedButton1: TSpeedButton;
    eDescripcionOrigen: TEdit;
    Label3: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCargarComponentes: TfrCargarComponentes;

  function CargarComponente : boolean;

implementation

uses uDatos, uSeleccionarInventario;

{$R *.dfm}

function CargarComponente : boolean;
begin
  with TfrCargarComponentes.Create(Application) do
  begin
    ShowModal;
    result := ModalResult = mrOk;
    Free;
  end;
end;

procedure TfrCargarComponentes.BitBtn1Click(Sender: TObject);
begin
  dmDatos.AdicionarComponentes( eCodigoOrigen.Text, eCodigo.Text );
  dmDatos.AbrirComponentes(eCodigo.Text);
end;

procedure TfrCargarComponentes.SpeedButton1Click(Sender: TObject);
begin
  eCodigoOrigen.Text :=  TfrSeleccionarInventario.Seleccionar(dmDatos.qrSeleccionarPlantillas, True, 'CODIGO');
  if eCodigoOrigen.Text <> '' then
  begin
    eDescripcionOrigen.Text := dmDAtos.qrSeleccionarPlantillasDESCRIPCION.Value;
  end;
end;

end.
