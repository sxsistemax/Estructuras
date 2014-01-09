unit uVisualizarLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrVisualizarLog = class(TForm)
    mLog: TMemo;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FArchivo : string;
  end;

var
  frVisualizarLog: TfrVisualizarLog;

procedure VisualizarLog( Archivo : string);

implementation

{$R *.dfm}

procedure VisualizarLog( Archivo : string);
begin
  with TfrVisualizarLog.Create(Application) do
  begin
    FArchivo := Archivo;
    ShowModal;
    Free;
  end;
end;

procedure TfrVisualizarLog.FormShow(Sender: TObject);
begin
  mLog.Lines.LoadFromFile(FArchivo);
end;

end.
