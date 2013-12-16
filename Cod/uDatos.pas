unit uDatos;

interface

uses
  SysUtils, Classes, DB, dbisamtb;

type
  TdmDatos = class(TDataModule)
    SEnsambles: TDBISAMTable;
    SEnsamblesFEN_CODIGO: TStringField;
    SEnsamblesFEN_CODE: TAutoIncField;
    SEnsamblesFEN_CTDPLANTILLA: TFloatField;
    SEnsamblesFEN_CODEPARTE: TStringField;
    SEnsamblesFEN_CANTIDAD: TFloatField;
    SEnsamblesFEN_CODEPRESENTA: TStringField;
    SEnsamblesFEN_ORIGENAUTO: TIntegerField;
    SEnsamblesFEN_FACTORPRESENTA: TFloatField;
    SEnsamblesFEN_DETALLE: TMemoField;
    SEnsamblesFEN_OTRO1: TFloatField;
    SEnsamblesFEN_TIPORECORD: TSmallintField;
    qrPlantillas: TDBISAMQuery;
    qrPlantillasFEN_CODIGO: TStringField;
    qrPlantillasFI_DESCRIPCION: TStringField;
    qrPlantillasFD_DESCRIPCION: TStringField;
    Sinventario: TDBISAMTable;
    SinventarioFI_CODIGO: TStringField;
    SinventarioFI_DESCRIPCION: TStringField;
    SinventarioFI_CATEGORIA: TStringField;
    SinventarioFI_DESCRIPCIONDETALLADA: TMemoField;
    SinventarioFI_VENDEDOR: TStringField;
    SinventarioFI_STATUS: TBooleanField;
    SinventarioFI_UNIDAD: TStringField;
    SinventarioFI_TIPOCODIGOBARRA: TSmallintField;
    SinventarioFI_IMAGEN: TGraphicField;
    SinventarioFI_SUSTITUTO1: TStringField;
    SinventarioFI_SUSTITUTO2: TStringField;
    SinventarioFI_SUSTITUTO3: TStringField;
    SinventarioFI_REFERENCIA: TStringField;
    SinventarioFI_MARCA: TStringField;
    SinventarioFI_MONEDA: TStringField;
    SinventarioFI_FACTORCONVERSION: TCurrencyField;
    SinventarioFI_UNDEXISTENCIA2: TStringField;
    SinventarioFI_PUESTO: TStringField;
    SinventarioFI_SUJETOACOMISION: TBooleanField;
    SinventarioFI_MONTOCOMISION: TCurrencyField;
    SinventarioFI_CUENTASCONTABLES: TSmallintField;
    SinventarioFI_PESOPRODUCTO: TCurrencyField;
    SinventarioFI_DIASDEREPOSICION: TSmallintField;
    SinventarioFI_PRESENTACION: TSmallintField;
    SinventarioFI_GARANTIA: TIntegerField;
    SinventarioFI_SUSTITUTO4: TStringField;
    SinventarioFI_SUSTITUTO5: TStringField;
    SinventarioFI_MONTOCOMISIONP: TBooleanField;
    SinventarioFI_DEPOSITOS: TBooleanField;
    SinventarioFI_OFERTAS: TBooleanField;
    SinventarioFI_VENCIMIENTOS: TBooleanField;
    SinventarioFI_CLASIFICACION: TIntegerField;
    SinventarioFI_MANEJOINVENTARIO: TIntegerField;
    SinventarioFI_SERIALES: TBooleanField;
    SinventarioFI_CREACION: TDateField;
    SinventarioFI_INVENTARIOINICIALUNIDADES: TCurrencyField;
    SinventarioFI_INVENTARIOINICIALCOSTO: TCurrencyField;
    SinventarioFI_CAPACIDAD: TCurrencyField;
    SinventarioFI_EXISTDECIMAL: TBooleanField;
    SinventarioFI_COMPUESTOSERIALES: TBooleanField;
    SinventarioFI_VENDEDORFIJO: TStringField;
    SinventarioFI_VENDEDORFIJOACTIVO: TBooleanField;
    SinventarioFI_MODELO: TStringField;
    SinventarioFI_SUBCATEGORIA: TStringField;
    SinventarioFI_PESOAFECTACOSTO: TBooleanField;
    SinventarioFI_IMPRESORA: TStringField;
    SinventarioBASE_AUTOINCREMENT: TAutoIncField;
    SinventarioFI_ZEXTRA1: TCurrencyField;
    SinventarioFI_ZEXTRA2: TCurrencyField;
    SinventarioFI_ZEXTRA3: TCurrencyField;
    SinventarioFI_ZEXTRA4: TCurrencyField;
    SinventarioFI_ZEXTRA5: TCurrencyField;
    SinventarioFI_ZEXTRA6: TCurrencyField;
    SinventarioFI_ZEXTRA1VENTA: TBooleanField;
    SinventarioFI_ZEXTRA2VENTA: TBooleanField;
    SinventarioFI_ZEXTRA3VENTA: TBooleanField;
    SinventarioFI_ZEXTRA4VENTA: TBooleanField;
    SinventarioFI_ZEXTRA5VENTA: TBooleanField;
    SinventarioFI_ZEXTRA6VENTA: TBooleanField;
    SinventarioFI_ZEXTRA1VENTAMOD: TBooleanField;
    SinventarioFI_ZEXTRA2VENTAMOD: TBooleanField;
    SinventarioFI_ZEXTRA3VENTAMOD: TBooleanField;
    SinventarioFI_ZEXTRA4VENTAMOD: TBooleanField;
    SinventarioFI_ZEXTRA5VENTAMOD: TBooleanField;
    SinventarioFI_ZEXTRA6VENTAMOD: TBooleanField;
    SinventarioFI_INTERNET: TBooleanField;
    SinventarioFI_BALANZA: TBooleanField;
    SinventarioFI_CODIGOBARRA: TBooleanField;
    SinventarioFI_PRECIOLISTA: TBooleanField;
    SinventarioFI_APROVECHAPORC: TCurrencyField;
    SinventarioFI_ARANCEL: TStringField;
    SinventarioFI_POSENTREGA: TBooleanField;
    qrSeleccionarPlantillas: TDBISAMQuery;
    qrSeleccionarPlantillasFEN_CODIGO: TStringField;
    qrSeleccionarPlantillasFI_DESCRIPCION: TStringField;
    qrSeleccionarPlantillasFD_DESCRIPCION: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AbrirSEnsambles;
  end;

var
  dmDatos: TdmDatos;

implementation

uses uBaseDatosA2, uTablasConBlobAdministrativo;

{$R *.dfm}

{ TdmDatos }

procedure TdmDatos.AbrirSEnsambles;
begin
  SEnsambles.Open;
end;

end.
