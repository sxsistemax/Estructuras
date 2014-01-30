unit uSeleccionarInventario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MantenimientoSPA, DB, JvComponentBase, JvEnterTab, DBCtrls, ExtCtrls,
  StdCtrls, JvExStdCtrls, JvEdit, JvDBSearchEdit, Grids, DBGrids, ComCtrls,
  Buttons, Mask, JvGridFilter, JvBDEFilter, JvExMask, JvToolEdit, JvMaskEdit,
  JvDBFindEdit;

type
  TfrSeleccionarInventario = class(TfmBaseMantenimiento)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frSeleccionarInventario: TfrSeleccionarInventario;

implementation

uses uTablasConBlobAdministrativo, uDatos;

{$R *.dfm}

procedure TfrSeleccionarInventario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if dsDataSource.DataSet = dmDatos.qrSeleccionarComponentes then
    dmDatos.AbrirDatosComponente( dsDataSource.DataSet.FieldByName('Codigo').Value,
       varToStr( dsDataSource.DataSet.FieldByName('Lote').Value))
  else
    if dsDataSource.DataSet = dmDatos.qrSeleccionarComponentes then
      dmDatos.AbrirDatosPlantilla(dsDataSource.DataSet.FieldByName('Codigo').Value);
  inherited;
end;

end.
