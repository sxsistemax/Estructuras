program SPARevisarApartadosPedientes;

uses
  Forms,
  uApartadosPendientes in 'uApartadosPendientes.pas' {frmApartadosPendientes},
  uBaseDatosA2 in '..\..\..\CompartidosA2\uBaseDatosA2.pas' {dmBasesDatos: TDataModule},
  uTablasConBlobAdministrativo in '..\..\..\CompartidosA2\uTablasConBlobAdministrativo.pas' {dmAdministrativo: TDataModule},
  uUtilidadesSPA in '..\..\..\CompartidosA2\uUtilidadesSPA.pas',
  uDatos in 'uDatos.pas' {dmDatos: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmBasesDatos, dmBasesDatos);
  Application.CreateForm(TdmAdministrativo, dmAdministrativo);
  Application.CreateForm(TdmDatos, dmDatos);
  Application.CreateForm(TfrmApartadosPendientes, frmApartadosPendientes);
  Application.Run;
end.
