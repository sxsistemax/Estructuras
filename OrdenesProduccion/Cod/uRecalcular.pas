unit uRecalcular;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, uDatos;

type
  TfrRecalcularCosto = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    eCosto: TLabel;
    ePrecio: TLabel;
    eValorIVA: TLabel;
    eNetoVenta: TLabel;
    eUtilidad: TLabel;
    bGuardar: TBitBtn;
    bCancelar: TBitBtn;
    Label1: TLabel;
    eRentabilidad: TEdit;
    procedure FormShow(Sender: TObject);
    procedure bGuardarClick(Sender: TObject);
    procedure eRentabilidadChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FCodigo: String;
    FCosto, FPrecio, FValorIVA, FNetoVenta, FUtilidad, FRentabilidad : string;
    FTipoConsulta : tProcesoComponentes;
    procedure MostrarDatos;
  end;

var
  frRecalcularCosto: TfrRecalcularCosto;

var
  Costo,
  Precio,
  ValorIVA,
  NetoVenta,
  Utilidad,
  Rentabilidad : Double;

function Recalcular(Codigo: String; pCosto, pPrecio, pValorIVA, pNetoVenta, pUtilidad, pRentabilidad : string) : boolean;
procedure MostrarCosto(Codigo: String);

implementation



{$R *.dfm}

function Recalcular(Codigo: String; pCosto, pPrecio, pValorIVA, pNetoVenta, pUtilidad, pRentabilidad : string) : boolean;
begin
  with TfrRecalcularCosto.Create(Application) do
  begin
    // Recalcula el costo de la plantilla
    Costo := dmDatos.CostoPlantilla(tpcConsulta);
    FCosto        := FormatFloat( '#,##0.00', Costo);
    FCodigo       := Codigo;
    FPrecio       := pPrecio;
    FValorIVA     := pValorIVA;
    FNetoVenta    := pNetoVenta;
    FUtilidad     := pUtilidad;
    FRentabilidad := pRentabilidad;
    ShowModal;
    Free;
  end;
end;

procedure MostrarCosto(Codigo: String);
begin
  with TfrRecalcularCosto.Create(Application) do
  begin
    FCodigo      := Codigo;
    Precio       := dmDatos.tbPlantillasPrecio.Value;
    ValorIVA     := dmDatos.tbPlantillasValorIVA.Value;
    NetoVenta    := dmDatos.tbPlantillasNetoVenta.Value;
    Utilidad     := dmDatos.tbPlantillasUtilidad.Value;
    Rentabilidad := dmDatos.tbPlantillasRentabilidad.Value;
    Costo        := dmDatos.CostoPlantilla(tpcTemporal);
    FCosto        := FormatFloat( '#,##0.00', Costo);
    FPrecio       := FormatFloat( '#,##0.00', Precio);
    FValorIVA     := FormatFloat( '#,##0.00', ValorIVA);
    FNetoVenta    := FormatFloat( '#,##0.00', NetoVenta);
    FUtilidad     := FormatFloat( '#,##0.00', Utilidad);
    FRentabilidad := FormatFloat( '#,##0.00', Rentabilidad);
    eRentabilidad.Text := FRentabilidad;
    eRentabilidad.ReadOnly := True;
    bGuardar.Visible := false;
    ShowModal;
    Free;
  end;
end;

procedure TfrRecalcularCosto.bGuardarClick(Sender: TObject);
begin
  dmDatos.GuardarRecalculo(FCodigo, Costo, Precio, ValorIVA,
      NetoVenta, Rentabilidad);
end;

procedure TfrRecalcularCosto.eRentabilidadChange(Sender: TObject);
begin
  MostrarDatos;
end;

procedure TfrRecalcularCosto.FormShow(Sender: TObject);
begin
  eCosto.Caption := FormatFloat( '#,##0.00', Costo);

  ePrecio.Caption    := FPrecio;
  eValorIVA.Caption  := FValorIVA;
  eNetoVenta.Caption := FNetoVenta;
  eUtilidad.Caption  := FUtilidad;
  eRentabilidad.Text := FRentabilidad;
  eRentabilidad.SetFocus;
end;

procedure TfrRecalcularCosto.MostrarDatos;
begin

  Rentabilidad := dmDatos.Valor(eRentabilidad.Text);

  // Calcula el precio
  if (Rentabilidad / 100)  <> 1 then
    Precio := Costo / ( 1 - (Rentabilidad / 100))
  else
    Precio := Costo;

  ePrecio.Caption := FormatFloat( '#,##0.00', Precio);

  // Calcula el iva
  ValorIva := Precio * dmDatos.ValorIVA( FCodigo) / 100 ;
  eValorIva.Caption := FormatFloat( '#,##0.00', ValorIva);

  // Calcula el Neto
  NetoVenta := Round( Precio + ValorIVA);
  eNetoVenta.Caption := FormatFloat( '#,##0.00', NetoVenta);

  // Utilidad
  Utilidad := Precio - Costo;
  eUtilidad.Caption := FormatFloat( '#,##0.00', Utilidad);
end;

end.
