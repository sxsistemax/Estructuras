unit uSeleccionarLotes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MantenimientoSPA, DB, JvComponentBase, JvEnterTab, DBCtrls, ExtCtrls,
  StdCtrls, JvExStdCtrls, JvEdit, JvDBSearchEdit, Grids, DBGrids, ComCtrls,
  Buttons;

type
  TfrSeleccionarLotes = class(TfmBaseMantenimiento)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frSeleccionarLotes: TfrSeleccionarLotes;

implementation

uses uDatos;

{$R *.dfm}

end.
