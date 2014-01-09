program SPAOrdenesDeProduccion;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {frPrincipal},
  uDatos in 'uDatos.pas' {dmDatos: TDataModule},
  uBaseDatosA2 in '..\..\..\CompartidosA2\uBaseDatosA2.pas' {dmBasesDatos: TDataModule},
  uTablasConBlobAdministrativo in '..\..\..\CompartidosA2\uTablasConBlobAdministrativo.pas' {dmAdministrativo: TDataModule},
  uUtilidadesSPA in '..\..\..\CompartidosA2\uUtilidadesSPA.pas',
  uPlantillas in 'uPlantillas.pas' {frPlantillas},
  uCargarComponentes in 'uCargarComponentes.pas' {frCargarComponentes},
  MantenimientoSPA in 'C:\Vcl\Comun\MantenimientoSPA.pas' {fmBaseMantenimiento},
  uSeleccionarComponentes in 'uSeleccionarComponentes.pas' {frSeleccionarComponentes},
  uDuplicarComponente in 'uDuplicarComponente.pas' {frDuplicarComponentes},
  uAdicionarComponente in 'uAdicionarComponente.pas' {frAdicionarComponente},
  uSeleccionarInventario in 'uSeleccionarInventario.pas' {frSeleccionarInventario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'SPA Ordenes de Producción';
  Application.CreateForm(TdmBasesDatos, dmBasesDatos);
  Application.CreateForm(TdmAdministrativo, dmAdministrativo);
  Application.CreateForm(TdmDatos, dmDatos);
  Application.CreateForm(TfrPrincipal, frPrincipal);
  Application.Run;
end.
