unit uSeleccionarInventario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MantenimientoSPA, DB, JvComponentBase, JvEnterTab, DBCtrls, ExtCtrls,
  StdCtrls, JvExStdCtrls, JvEdit, JvDBSearchEdit, Grids, DBGrids, ComCtrls,
  Buttons, Mask;

type
  TfrSeleccionarInventario = class(TfmBaseMantenimiento)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
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

end.
