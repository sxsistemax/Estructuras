unit uAdicionarComponente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, DB, uDatos;

type
  TfrAdicionarComponente = class(TForm)
    DataSource1: TDataSource;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    CodigoDestino: TLabel;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    eCodigo: TLabel;
    eDescripcion: TLabel;
    eComponente: TEdit;
    eDescripcionComponente: TEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    eLote: TEdit;
    Label5: TLabel;
    eCantidad: TEdit;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure eComponenteExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FPlantilla, FDescripcion : string;
    FComponente, FLote: String;
    FCantidad : double;
    FTipoProceso : tProcesoComponentes;
    FTipoOperacion : integer;
  end;

var
  frAdicionarComponente: TfrAdicionarComponente;

procedure AdicionarComponente(Plantilla, Descripcion, Componente, Lote: String; Cantidad : Double; TipoProceso : tProcesoComponentes; TipoOperacion : integer );

implementation

uses uSeleccionarInventario, uSeleccionarLotes;

{$R *.dfm}

procedure AdicionarComponente(Plantilla, Descripcion, Componente, Lote: String; Cantidad : Double; TipoProceso : tProcesoComponentes; TipoOperacion : integer);
begin
  with TfrAdicionarComponente.Create(Application) do
  begin
    eCodigo.Caption := Plantilla;
    eDescripcion.Caption := Descripcion;
    FComponente := Componente;
    FLote := Lote;
    FCantidad := Cantidad;
    FTipoProceso := TipoProceso;
    FTipoOperacion :=  TipoOperacion;
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

  if eCantidad.Text = '' then
  begin
    ShowMessage('Debe digitar una cantidad para el componente. ');
    eCantidad.SetFocus;
  end;

  dmDatos.ActualizarComponente(eCodigo.Caption, eComponente.Text, eLote.Text, StrToFloat(eCantidad.Text), FTipoProceso,  FTipoOperacion);

  if FTipoProceso = tpcConsulta then
    dmDatos.AbrirComponentes(eCodigo.Caption);
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

procedure TfrAdicionarComponente.SpeedButton2Click(Sender: TObject);
begin
  dmDatos.AbrirSeleccionLote( eComponente.Text);
  if dmDatos.qrSeleccionarLotes.RecordCount > 0 then
    eLote.Text :=  TfrSeleccionarLotes.Seleccionar(dmDatos.qrSeleccionarLotes, True, 'Lote')
  else
  begin
    eLote.Text := '';
    ShowMessage('Este componente no tienen lotes que seleccionar');
  end;

end;

end.
