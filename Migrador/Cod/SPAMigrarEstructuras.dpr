program SPAMigrarEstructuras;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {frPrincipal},
  uBaseDatosA2 in '..\..\..\CompartidosA2\uBaseDatosA2.pas' {dmBasesDatos: TDataModule},
  uTablasConBlobAdministrativo in '..\..\..\CompartidosA2\uTablasConBlobAdministrativo.pas' {dmAdministrativo: TDataModule},
  uUtilidadesSPA in '..\..\..\CompartidosA2\uUtilidadesSPA.pas',
  uDatos in 'uDatos.pas' {dmDatos: TDataModule},
  uSeleccionarCampos in 'uSeleccionarCampos.pas' {frSeleccionarCampos},
  uVisualizarLog in 'uVisualizarLog.pas' {frVisualizarLog};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmBasesDatos, dmBasesDatos);
  Application.CreateForm(TdmAdministrativo, dmAdministrativo);
  Application.CreateForm(TdmDatos, dmDatos);
  Application.CreateForm(TfrPrincipal, frPrincipal);
  Application.Run;
end.
