unit uDuplicarComponente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Mask, DBCtrls, Buttons, ExtCtrls;

type
  TfrDuplicarComponentes = class(TForm)
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
    eCodigoDestino: TEdit;
    SpeedButton1: TSpeedButton;
    eDescripcionDestino: TEdit;
    Label3: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frDuplicarComponentes: TfrDuplicarComponentes;

  function DuplicarComponente : boolean;

implementation

uses uDatos, uSeleccionarInventario;

{$R *.dfm}

function DuplicarComponente : boolean;
begin
  with TfrDuplicarComponentes.Create(Application) do
  begin
    ShowModal;
    result := ModalResult = mrOk;
    Free;
  end;
end;

procedure TfrDuplicarComponentes.SpeedButton1Click(Sender: TObject);
begin
  eCodigoDestino.Text :=  TfrSeleccionarInventario.Seleccionar(dmDatos.qrSeleccionarPlantillas, True, 'FEN_CODIGO');
  if eCodigoDestino.Text <> '' then
  begin
    eDescripcionDestino.Text := dmDAtos.qrSeleccionarPlantillasFI_DESCRIPCION.Value;
  end;
end;

end.
