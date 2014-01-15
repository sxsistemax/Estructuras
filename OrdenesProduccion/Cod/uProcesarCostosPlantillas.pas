unit uProcesarCostosPlantillas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrProcesarCostoPlantilla = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    bProecesar: TBitBtn;
    bCancelar: TBitBtn;
    rgConservar: TRadioGroup;
    procedure bProecesarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frProcesarCostoPlantilla: TfrProcesarCostoPlantilla;

procedure RecalcularCostosPlantillas;

implementation

uses uDatos;

{$R *.dfm}

procedure RecalcularCostosPlantillas;
begin
  with TfrProcesarCostoPlantilla.Create(Application) do
  begin
    ShowModal;
    Free;
  end;
end;


procedure TfrProcesarCostoPlantilla.bProecesarClick(Sender: TObject);
begin
  bCancelar.Visible := false;
  bProecesar.Visible := false;
  dmDatos.ProcesarCostoPlantilas( rgConservar.ItemIndex);
  ShowMessage('Finalizó el proceso.');
  ModalResult := mrOk;
  Close;
end;

end.
