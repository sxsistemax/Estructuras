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
    Sinvlote: TDBISAMTable;
    SinvloteFL_CODIGO: TStringField;
    SinvloteFL_LOTE: TStringField;
    SinvloteFL_RANDOM: TIntegerField;
    SinvloteFL_CORRELATIVO: TAutoIncField;
    SinvloteFL_FECHA: TDateField;
    SinvloteFL_VENCIMIENTO: TDateField;
    SinvloteFL_COSTO: TCurrencyField;
    SinvloteFL_PRECIO: TCurrencyField;
    SinvloteFL_OFERTA: TCurrencyField;
    SinvloteFL_INICIOOFERTA: TDateField;
    SinvloteFL_FINOFERTA: TDateField;
    SinvloteFL_NAMEOFERTA: TStringField;
    SinvloteFL_EXISTENCIA: TBCDField;
    SinvloteFL_PUESTO: TStringField;
    SinvloteFL_TIPO: TIntegerField;
    SinvloteFL_COSTOIMPORTADO: TCurrencyField;
    SinvloteFL_UTILIDADIMPORTADO: TCurrencyField;
    SinvloteFL_PRECIOIMPORTADO: TCurrencyField;
    SinvloteFL_PORCENTUTILIDADIMP: TBooleanField;
    SinvloteFL_PORCENTUTILIDAD: TBooleanField;
    SinvloteFL_MONTOIMPUESTO1: TCurrencyField;
    SinvloteFL_MONTOIMPUESTO2: TCurrencyField;
    SinvloteFL_PRECIOSINIMPUESTO: TCurrencyField;
    SinvloteFL_UTILIDAD: TCurrencyField;
    SinvloteFL_TIPOROUND: TIntegerField;
    SinvloteFL_VISIBLE: TBooleanField;
    SinvloteFL_IMPUESTO1VISIBLE: TBooleanField;
    SinvloteFL_IMPUESTO2VISIBLE: TBooleanField;
    SinvloteFL_STATUS: TBooleanField;
    SinvloteBASE_AUTOINCREMENT: TAutoIncField;
    qrSeleccionarPlantillasFI_CODIGO: TStringField;
    qrSeleccionarPlantillasFI_DESCRIPCION: TStringField;
    qrComponentes: TDBISAMQuery;
    qrComponentesCodigo: TStringField;
    qrComponentesDescripcion: TStringField;
    qrComponentesLote: TStringField;
    qrComponentesCantidad: TFloatField;
    qrComponentesCosto: TCurrencyField;
    qrComponentesFX_COSTOS: TBlobField;
    qrPlantillasFEN_CODIGO: TStringField;
    qrPlantillasFI_DESCRIPCION: TStringField;
    qrPlantillasFX_COSTOS: TBlobField;
    qrPlantillasPrecio: TFloatField;
    qrPlantillasCosto: TFloatField;
    qrPlantillasRentabilidad: TFloatField;
    procedure qrComponentesCostoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qrPlantillasCalcFields(DataSet: TDataSet);
    procedure qrPlantillasPrecioGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qrPlantillasCostoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qrPlantillasRentabilidadGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AbrirSEnsambles;
    procedure AbrirPlantillas;
    procedure AbrirComponentes( Plantilla : string);
    procedure AbrirSFixed;
  end;

var
  dmDatos: TdmDatos;

implementation

uses uBaseDatosA2, uTablasConBlobAdministrativo;

{$R *.dfm}

{ TdmDatos }

procedure TdmDatos.AbrirComponentes( Plantilla : string);
begin
  qrComponentes.Close;
  qrComponentes.ParamByName('CodigoPlantilla').Value := Plantilla;
  qrComponentes.Open;
end;

procedure TdmDatos.AbrirPlantillas;
begin
  qrPlantillas.Close;
  qrPlantillas.Open;
end;

procedure TdmDatos.AbrirSEnsambles;
begin
  SEnsambles.Open;
end;

procedure TdmDatos.AbrirSFixed;
begin
  if not dmAdministrativo.sFixed.Active then
   dmAdministrativo.sFixed.Open;

  dmAdministrativo.sFixed.Filtered := false;
  dmAdministrativo.sFixed.Filter := 'FX_TIPO = ''B''';
  dmAdministrativo.sFixed.Filtered := true;

end;

procedure TdmDatos.qrComponentesCostoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  with dmAdministrativo do
  begin
    CargarTablaCostos(TDBISAMTable(qrComponentes), qrComponentesFX_COSTOS);

    tbCostos.First;

    Text := FloatToStr(tbCostosCostoPromedio.Value);

  end;

end;
 procedure TdmDatos.qrPlantillasCalcFields(DataSet: TDataSet);
begin
  with dmAdministrativo do
  begin
    CargarTablaCostos(TDBISAMTable(qrPlantillas), qrPlantillasFX_COSTOS );

    tbCostos.First;

    tbPrecios.First;

//    // Cargo los valores en los campos calculados
    qrPlantillasCosto.Value := tbCostosCostoActual.Value;
//    qrPlantillasUtilidad.Value := tbPreciosUtilidad.Value;
    qrPlantillasPrecio.Value := tbPreciosPrecio.Value;
//    qrPlantillasValorIVA.Value := tbCostosmImpuesto1.Value;
//    qrPlantillasNetoVenta.Value := tbPreciosPrecio.Value + tbCostosmImpuesto1.Value;
    if tbCostosCostoActual.Value > 0 then
      qrPlantillasRentabilidad.Value := tbPreciosUtilidad.Value / tbCostosCostoActual.Value
    else
      qrPlantillasRentabilidad.Value := 100;
  end;
end;


procedure TdmDatos.qrPlantillasCostoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := FloatToStr( qrPlantillasCosto.Value);
end;

procedure TdmDatos.qrPlantillasPrecioGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  with dmAdministrativo do
  begin
     CargarTablaCostos(TDBISAMTable(qrPlantillas), qrPlantillasFX_COSTOS );

      tbCostos.First;

      tbPrecios.First;

      Text := FloatToStr( tbPreciosPrecio.Value);
  end;
end;

procedure TdmDatos.qrPlantillasRentabilidadGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FloatToStr( qrPlantillasRentabilidad.Value);
end;

end.
