unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvBaseDlg, JvSelectDirectory, Buttons, StdCtrls, ExtCtrls, ExtDlgs,
  DB, Grids, DBGrids, JvExDBGrids, JvDBGrid;

type
  TfrPrincipal = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    eRuta: TEdit;
    SpeedButton1: TSpeedButton;
    dgSeleccionarDirectorio: TJvSelectDirectory;
    Label2: TLabel;
    eArchivo: TEdit;
    SpeedButton2: TSpeedButton;
    dgAbrirArchivo: TOpenTextFileDialog;
    Label3: TLabel;
    eArchivoDestino: TComboBox;
    bSekeccionarCampos: TBitBtn;
    BorrarTablaDestino: TCheckBox;
    JvDBGrid1: TJvDBGrid;
    DataSource1: TDataSource;
    bCargar: TBitBtn;
    bImportar: TBitBtn;
    eSeparador: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure bSekeccionarCamposClick(Sender: TObject);
    procedure bCargarClick(Sender: TObject);
    procedure bImportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Validar : boolean;
  end;


var
  frPrincipal: TfrPrincipal;

implementation

uses uDatos, uBaseDatosA2, uSeleccionarCampos;

{$R *.dfm}

procedure TfrPrincipal.bCargarClick(Sender: TObject);
var
  Tabla : tArchivos;
begin
  if not Validar then
    exit;

  Tabla := tArchivos( eArchivoDestino.ItemIndex);
  dmDatos.CargarArchivo(eArchivo.Text, kSeparadores[eSeparador.ItemIndex], Tabla);

  DataSource1.DataSet := dmDAtos.tbArchivo;
end;

procedure TfrPrincipal.bImportarClick(Sender: TObject);
begin
  if dmDatos.tbArchivo.RecordCount <= 0 then
  begin
    ShowMessage('No hay registros a importar.');
    exit;
  end;

  dmDatos.ImportarArchivo(tArchivos( eArchivoDestino.ItemIndex), BorrarTablaDestino.Checked);
end;

procedure TfrPrincipal.bSekeccionarCamposClick(Sender: TObject);
var
  Tabla : tArchivos;
begin
  if not Validar then
    exit;

  Tabla := tArchivos( eArchivoDestino.ItemIndex);
  case Tabla of
    taLotes  : dmDatos.CargarCamposDestino(dmDatos.Sinvlote);
    taEnsambles : dmDatos.CargarCamposDestino(dmDAtos.SEnsambles);
    taInventario : dmDatos.CargarCamposDestino(dmDAtos.Sinventario);
  end;

  dmDatos.CargarCamposOrigen(eArchivo.Text, kSeparadores[eSeparador.ItemIndex]);

  SeleccionarCampos;
end;

procedure TfrPrincipal.SpeedButton1Click(Sender: TObject);
begin
  if dgSeleccionarDirectorio.Execute then
    eRuta.Text := dgSeleccionarDirectorio.Directory;

end;

procedure TfrPrincipal.SpeedButton2Click(Sender: TObject);
begin
  if dgAbrirArchivo.Execute then
    eArchivo.Text := dgAbrirArchivo.FileName;
end;

function TfrPrincipal.Validar : boolean;
begin
  Result := false;

  if Trim( eRuta.Text) = '' then
  begin
    ShowMessage('Debe seleccionar la ruta de los datos');
    eRuta.SetFocus;
    exit;
  end;

  if Trim( eArchivo.Text) = '' then
  begin
    ShowMessage('Debe seleccionar el archivo a importar');
    eArchivo.SetFocus;
    exit;
  end;

  if Trim( eArchivoDestino.Text) = '' then
  begin
    ShowMessage('Debe seleccionar el archivo de destino.');
    eArchivoDestino.SetFocus;
    exit;
  end;

  if Trim( eSeparador.Text) = '' then
  begin
    ShowMessage('Debe seleccionar el separador de los campos.');
    eSeparador.SetFocus;
    exit;
  end;

  dmBasesDatos.ConectarDB(eRuta.Text);

  Result := true;
end;

end.
