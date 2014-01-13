unit uSeleccionarPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MantenimientoSPA, DB, JvComponentBase, JvEnterTab, DBCtrls, ExtCtrls,
  StdCtrls, JvExStdCtrls, JvEdit, JvDBSearchEdit, Grids, DBGrids, ComCtrls,
  Buttons;

type
  TfrSeleccionarPedido = class(TfmBaseMantenimiento)
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

end.
