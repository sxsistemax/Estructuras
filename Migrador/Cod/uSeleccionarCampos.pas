unit uSeleccionarCampos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB;

type
  TfrSeleccionarCampos = class(TForm)
    dsCamposDestino: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frSeleccionarCampos: TfrSeleccionarCampos;

procedure SeleccionarCampos;


implementation

uses uDatos;

{$R *.dfm}

procedure SeleccionarCampos;
begin
  with TfrSeleccionarCampos.Create(Application) do
  begin
    ShowModal;
    Free;
  end;

end;

end.
