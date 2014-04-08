unit uSeleccionarPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MantenimientoSPA, DB, JvComponentBase, JvEnterTab, DBCtrls, ExtCtrls,
  StdCtrls, JvExStdCtrls, JvEdit, JvDBSearchEdit, Grids, DBGrids, ComCtrls,
  Buttons, JvFormPlacement, JvAppStorage, JvAppRegistryStorage;

type
  TfrSeleccionarPedido = class(TfmBaseMantenimiento)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frSeleccionarPedido: TfrSeleccionarPedido;

implementation

uses uDatos;

{$R *.dfm}

procedure TfrSeleccionarPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmDatos.AbrirDatosPedido(dsDataSource.DataSet.FieldByName('Documento').Value,
       dsDataSource.DataSet.FieldByName('Codigo').Value);
  inherited;
end;

end.
