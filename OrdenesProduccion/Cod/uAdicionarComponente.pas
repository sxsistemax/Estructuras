unit uAdicionarComponente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, DB;

type
  TfrAdicionarComponente = class(TForm)
    DataSource1: TDataSource;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    CodigoDestino: TLabel;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    eCodigo: TDBEdit;
    eDescripcion: TDBEdit;
    eComponente: TEdit;
    eDescripcionComponente: TEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    eLote: TEdit;
    Label5: TLabel;
    eCantidad: TEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure eComponenteExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FComponente, FLote: String;
    FCantidad : double;
  end;

var
  frAdicionarComponente: TfrAdicionarComponente;

procedure AdicionarComponente(Componente, Lote: String; Cantidad : Double);

implementation

uses uSeleccionarInventario, uDatos;

{$R *.dfm}

procedure AdicionarComponente(Componente, Lote: String; Cantidad : Double);
begin
  with TfrAdicionarComponente.Create(Application) do
  begin
    FComponente := Componente;
    FLote := Lote;
    FCantidad := Cantidad;
    ShowModal;
    Free;
  end;
end;

procedure TfrAdicionarComponente.BitBtn1Click(Sender: TObject);
begin
  if eComponente.Text = '' then
  begin
    ShowMessage('Debe seleccionar un componente. ');
    eComponente.SetFocus;
  end;

  if eLote.Text = '' then
  begin
    ShowMessage('Debe seleccionar un lote. ');
    eLote.SetFocus;
  end;

  if eCantidad.Text = '' then
  begin
    ShowMessage('Debe digitar una cantidad para el componente. ');
    eCantidad.SetFocus;
  end;

  dmDatos.ActualizaarComponente(eCodigo.Text, eComponente.Text, eLote.Text, StrToFloat(eCantidad.Text));
  dmDatos.AbrirComponentes(eCodigo.Text);
end;

procedure TfrAdicionarComponente.eComponenteExit(Sender: TObject);
begin
  eDescripcionComponente.Text := dmDatos.DescripcionReferencia(eComponente.Text);
end;

procedure TfrAdicionarComponente.FormShow(Sender: TObject);
begin
  eComponente.Text := FComponente;
  eLote.Text := FLote;
  eCantidad.Text := FloatToStr( FCantidad);
  eDescripcionComponente.Text := dmDatos.DescripcionReferencia(eComponente.Text);
end;

procedure TfrAdicionarComponente.SpeedButton1Click(Sender: TObject);
begin
  eComponente.Text :=  TfrSeleccionarInventario.Seleccionar(dmDatos.qrSeleccionarComponentes, True, 'CODIGO');
  if eComponente.Text <> '' then
  begin
    eDescripcionComponente.Text := dmDAtos.qrSeleccionarComponentesDescripcion.Value;
    eLote.Text := dmDatos.qrSeleccionarComponentesLote.Value;
    eCantidad.SetFocus;
  end;
end;

end.
