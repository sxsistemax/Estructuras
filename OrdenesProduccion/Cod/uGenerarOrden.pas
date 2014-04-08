unit uGenerarOrden;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, DB, Grids, DBGrids, ActnList, Menus,
  ComCtrls;

type
  TfrGenerarOrden = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ePedido: TEdit;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    ePlantilla: TEdit;
    lDescripcion: TLabel;
    Panel2: TPanel;
    Label5: TLabel;
    lCliente: TLabel;
    DBGrid1: TDBGrid;
    dsComponetes: TDataSource;
    Panel3: TPanel;
    alPlantillas: TActionList;
    AAdicionarComponente: TAction;
    aBorrarComponente: TAction;
    aEditar: TAction;
    bAdicionar: TBitBtn;
    bGenerar: TBitBtn;
    aGenerarOrden: TAction;
    pmComponentes: TPopupMenu;
    Adicionar1: TMenuItem;
    BorrarComponente1: TMenuItem;
    BorrarComponente2: TMenuItem;
    Label3: TLabel;
    eFechaEntrega: TDateTimePicker;
    Label4: TLabel;
    eCantidad: TEdit;
    BitBtn1: TBitBtn;
    Label6: TLabel;
    lVendedor: TLabel;
    aConsultarCosto: TAction;
    BitBtn2: TBitBtn;
    procedure SpeedButton1Click(Sender: TObject);
    procedure aGenerarOrdenExecute(Sender: TObject);
    procedure AAdicionarComponenteExecute(Sender: TObject);
    procedure aEditarExecute(Sender: TObject);
    procedure aBorrarComponenteExecute(Sender: TObject);
    procedure aConsultarCostoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frGenerarOrden: TfrGenerarOrden;

procedure GenerarOrdenes;

implementation

uses uSeleccionarPedidos, uDatos, uAdicionarComponente, uUtilidades,
  uRecalcular, uUtilidadesSPA;

{$R *.dfm}

procedure GenerarOrdenes;
begin
  with TfrGenerarOrden.Create(Application) do
  begin
    dmDatos.qrPedidosPendientes.Close;
    ShowModal;
    Free;
  end;

end;

procedure TfrGenerarOrden.AAdicionarComponenteExecute(Sender: TObject);
begin
  AdicionarComponente(ePlantilla.Text, lDescripcion.Caption, '', '', 0, tpcTemporal, 1);
end;

procedure TfrGenerarOrden.aBorrarComponenteExecute(Sender: TObject);
begin
  if Confirmar('Desea borrar el componte ' + dmDatos.tbComponentesDescripcion.Value +
      ', Lote: ' + dmDatos.tbComponentesLote.Value ) then
  begin
    dmDatos.tbComponentes.Delete;
  end;

end;

procedure TfrGenerarOrden.aConsultarCostoExecute(Sender: TObject);
begin
  dmDatos.CargarCostosPlantilla(ePlantilla.Text);
  MostrarCosto(ePlantilla.Text);
end;

procedure TfrGenerarOrden.aEditarExecute(Sender: TObject);
begin
  AdicionarComponente(ePlantilla.Text, lDescripcion.Caption, dmDatos.tbComponentesCodigo.Value, dmDatos.tbComponentesLote.Value,
        dmDatos.tbComponentesCantidad.Value, tpcTemporal, 0);
end;

procedure TfrGenerarOrden.aGenerarOrdenExecute(Sender: TObject);
begin
  if ModoDemo then
  begin
    ShowMessage('Esta opción no esta habilitada en modo demo');
    exit;
  end;

  dmDatos.GenerarOrden(ePedido.Text, ePlantilla.Text, lCliente.Caption, eFechaEntrega.Date, StrToFloat( eCantidad.Text));

  ePlantilla.Text := '';
  lCliente.Caption := '';
  lDescripcion.Caption := '';

  ePedido.Text := '';
  ePedido.SetFocus;
end;

procedure TfrGenerarOrden.FormCreate(Sender: TObject);
begin
  dsComponetes.DataSet := dmDatos.tbComponentes;
end;

procedure TfrGenerarOrden.SpeedButton1Click(Sender: TObject);
begin
  dmDatos.AbrirArchivosParaOrdenes;
  ePedido.Text := TfrSeleccionarPedido.Seleccionar(dmDatos.qrPedidosPendientes, true, 'Documento');
  if ePedido.Text <> '' then
  begin
    ePlantilla.Text := dmDatos.qrConsulta.FieldByName('Codigo').Value;
    lCliente.Caption := dmDatos.qrConsulta.FieldByName('Cliente').Value;
    lDescripcion.Caption := dmDatos.qrConsulta.FieldByName('Descripcion').Value;
    eCantidad.Text := dmDatos.qrConsulta.FieldByName('Cantidad').AsString;
    lVendedor.Caption := dmDatos.qrConsulta.FieldByName('Vendedor').AsString;
    eFechaEntrega.Date := dmDAtos.qrConsulta.FieldByName('FechaVencimiento').AsDateTime;
    dmDatos.CargarTablaComponentes(ePlantilla.Text);
  end;
end;

end.
