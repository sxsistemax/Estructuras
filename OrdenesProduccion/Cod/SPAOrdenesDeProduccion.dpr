program SPAOrdenesDeProduccion;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {frPrincipal},
  uDatos in 'uDatos.pas' {dmDatos: TDataModule},
  uBaseDatosA2 in '..\..\..\CompartidosA2\uBaseDatosA2.pas' {dmBasesDatos: TDataModule},
  uTablasConBlobAdministrativo in '..\..\..\CompartidosA2\uTablasConBlobAdministrativo.pas' {dmAdministrativo: TDataModule},
  uUtilidadesSPA in '..\..\..\CompartidosA2\uUtilidadesSPA.pas',
  uPlantillas in 'uPlantillas.pas' {frPlantillas},
  uDuplicarComponente in 'uDuplicarComponente.pas' {frDuplicarComponentes},
  MantenimientoSPA in 'C:\Vcl\Comun\MantenimientoSPA.pas' {fmBaseMantenimiento},
  uSeleccionarInventario in 'uSeleccionarInventario.pas' {frSeleccionarInventario};

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
