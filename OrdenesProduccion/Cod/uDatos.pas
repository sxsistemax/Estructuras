unit uDatos;

interface

uses
  SysUtils, Classes, DB, dbisamtb, dialogs, variants, JvComponentBase,
  JvProgressComponent;

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
    qrPlantillas1: TDBISAMQuery;
    Sinventario: TDBISAMTable;
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
    qrComponentes: TDBISAMQuery;
    qrComponentesCodigo: TStringField;
    qrComponentesDescripcion: TStringField;
    qrComponentesLote: TStringField;
    qrComponentesCantidad: TFloatField;
    qrComponentesCosto: TCurrencyField;
    qrComponentesFX_COSTOS: TBlobField;
    qrPlantillas1FEN_CODIGO: TStringField;
    qrPlantillas1FI_DESCRIPCION: TStringField;
    qrPlantillas1FX_COSTOS: TBlobField;
    qrPlantillas1Precio: TFloatField;
    qrPlantillas1Costo: TFloatField;
    qrPlantillas1Rentabilidad: TFloatField;
    Susuarios: TDBISAMTable;
    SusuariosNombre: TStringField;
    SusuariosCode: TAutoIncField;
    SusuariosDescripcion: TStringField;
    SPAOrdenesConfiguracion: TDBISAMTable;
    SPAOrdenesConfiguracionUsuario: TIntegerField;
    SPAOrdenesConfiguracionNombre: TStringField;
    tbEnsambles: TDBISAMTable;
    tbEnsamblesFI_CODIGO: TStringField;
    tbEnsamblesFI_DESCRIPCION: TStringField;
    tbEnsamblesFI_CLASIFICACION: TIntegerField;
    tbEnsamblesPrecio: TFloatField;
    tbEnsamblesCosto: TFloatField;
    tbEnsamblesRentabilidad: TFloatField;
    qrConsulta: TDBISAMQuery;
    qrSeleccionarPlantillasCodigo: TStringField;
    qrSeleccionarPlantillasDescripcion: TStringField;
    qrSeleccionarPlantillasTotalComponentes: TIntegerField;
    pdProgreso: TJvProgressComponent;
    qrSeleccionarComponentes: TDBISAMQuery;
    qrSeleccionarComponentesCodigo: TStringField;
    qrSeleccionarComponentesDescripcion: TStringField;
    qrSeleccionarComponentesLote: TStringField;
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
    tbEnsamblesImpuesto: TFloatField;
    tbEnsamblesPrecioSinImpuesto: TFloatField;
    procedure qrComponentesCostoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbEnsamblesCostoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbEnsamblesPrecioGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbEnsamblesPrecioSinImpuestoGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure tbEnsamblesImpuestoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbEnsamblesRentabilidadGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AbrirSEnsambles;
    procedure AbrirComponentes( Plantilla : string);
    procedure AbrirSFixed;
    procedure AbrirConfiguracion;
    procedure AbrirUsuarios;
    procedure AbrirInventario;
    procedure AdicionarComponentes( Origen, Destino : string);
    procedure ActualizaarComponente( Plantilla, Componente, Lote : string; Cantidad : double);
    Function DescripcionReferencia( Codigo : String) : string;
    Procedure BorrarComponentes(Plantilla, Componente, Lote : string);
  end;

var
  dmDatos: TdmDatos;

implementation

uses uBaseDatosA2, uTablasConBlobAdministrativo;

{$R *.dfm}

{ TdmDatos }

procedure TdmDatos.AbrirComponentes( Plantilla : string);
begin
  pdProgreso.Execute;
  pdProgreso.ProgressMax := 100;
  pdProgreso.ProgressPosition := 0;
  qrComponentes.Close;
  qrComponentes.ParamByName('CodigoPlantilla').Value := Plantilla;
  qrComponentes.Open;
  pdProgreso.ProgressPosition := 100;
  pdProgreso.Hide;
end;

procedure TdmDatos.AbrirConfiguracion;
var
  C: TStringField;
  S: string;
begin
  S := IncludeTrailingPathDelimiter(dmBasesDatos.dbA2.Directory);

  S := S + SPAOrdenesConfiguracion.TableName + '.dat';

  // Si no existe el erachivo debe crearlo
  if Not FileExists(S) then
  begin
    SPAOrdenesConfiguracion.CreateTable();
  end;

  if not SPAOrdenesConfiguracion.Active then
    SPAOrdenesConfiguracion.Open;

  if SPAOrdenesConfiguracion.RecordCount = 0 then
  begin
    SPAOrdenesConfiguracion.Insert;
    SPAOrdenesConfiguracion.Post;
  end;
end;

procedure TdmDatos.AbrirInventario;
begin
  try
    if not Sinventario.Active then
      Sinventario.Open;
        
  except on E: Exception do
    ShowMessage('Ocurrió un error abriendo SInventario.' + E.Message)
  end;
end;

procedure TdmDatos.AbrirSEnsambles;
begin
  if not SEnsambles.Active then
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

procedure TdmDatos.AbrirUsuarios;
begin
  if not Susuarios.Active then
    Susuarios.Open;
end;

procedure TdmDatos.AdicionarComponentes(Origen, Destino: string);
begin
  try
    pdProgreso.ProgressStep := 0;
    pdProgreso.Execute;

    AbrirSEnsambles;

    qrConsulta.Close;
    qrConsulta.SQL.Text := 'Select * from SEnsambles Where FEN_CodeParte <> ''$$$$$$$$$$'' and FEN_Codigo = ''' + Origen + '''';
    qrConsulta.Open;

    pdProgreso.ProgressMax := qrConsulta.RecordCount;

    // si no existe el padre Inserta el padre del ensamble
    if not SEnsambles.Locate('FEN_CODIGO;FEN_CODEPARTE', VarArrayOf([Destino, '$$$$$$$$$$']), []) then
    begin
      SEnsambles.Append;

      SEnsamblesFEN_CODIGO.Value := Destino;
      SEnsamblesFEN_CTDPLANTILLA.Value := 1;
      SEnsamblesFEN_CODEPARTE.Value := '$$$$$$$$$$';
      SEnsamblesFEN_CANTIDAD.Value := 0;
      SEnsamblesFEN_CODEPRESENTA.Value := '';
      SEnsamblesFEN_OTRO1.Value := 0;
      SEnsamblesFEN_TIPORECORD.Value := 1;

    end;

    qrConsulta.First;
    while not qrConsulta.EOF do
    begin
      SEnsambles.Append;

      SEnsamblesFEN_CODIGO.Value := Destino;
      SEnsamblesFEN_CODEPARTE.Value := qrConsulta.FieldByName('FEN_CODEPARTE').Value;
      SEnsamblesFEN_CANTIDAD.Value := qrConsulta.FieldByName('FEN_CANTIDAD').Value;
      SEnsamblesFEN_CODEPRESENTA.Value := qrConsulta.FieldByName('FEN_CODEPRESENTA').Value;

      pdProgreso.InfoLabel := qrConsulta.FieldByName('FEN_CODEPARTE').Value;
      pdProgreso.ProgressPosition := qrConsulta.RecNo;
      qrConsulta.Next;
    end;

    SEnsambles.Post;

  except on E: Exception do
    begin
      ShowMessage( 'Ocurrio un error ejecutnado consulta copiar componentes. ' + E.Message);
      if SEnsambles.State = dsEdit then
         SEnsambles.Cancel;
    end;
  end;
  pdProgreso.Hide;
end;

procedure TdmDatos.BorrarComponentes(Plantilla, Componente, Lote: string);
begin
  try
    qrConsulta.Close;
    qrConsulta.SQL.Text := 'Delete from SEnsambles Where FEN_CODEPARTE <> ''$$$$$$$$$$'' and FEN_CODIGO = ''' + Plantilla + ''' ';
    if (Componente <> '') and (Lote <> '') then
      qrConsulta.SQL.Text := qrConsulta.SQL.Text + ' and FEN_CODEPARTE = ''' + Componente + ''' and FEN_CODEPRESENTA = ''' + Lote + '''';

    qrConsulta.ExecSQL;
      
  except on E: Exception do
    ShowMessage('Ocurrió un error borrando componentes.');
  end;
end;

function TdmDatos.DescripcionReferencia(Codigo: String): string;
begin
  Result := 'No encontrado.';
  try
    AbrirInventario;

    if SInventario.Locate('FI_CODIGO', Codigo, []) then
      Result := SInventarioFI_DESCRIPCION.Value;
    
  except on E: Exception do
    ShowMessage('Ocurrió un error buscando la descripción.' + E.Message);
  end;
end;

procedure TdmDatos.ActualizaarComponente(Plantilla, Componente, Lote: string;
  Cantidad: double);
begin
  try
    AbrirSEnsambles;
  
    if SEnsambles.Locate('FEN_CODIGO;FEN_CODEPARTE;FEN_CODEPRESENTA', 
        VarArrayOf([Plantilla, Componente, Lote]), []) then
      SEnsambles.Edit
    Else
      SEnsambles.Append;

    SEnsamblesFEN_CODIGO.Value := Plantilla;
    SEnsamblesFEN_CODEPARTE.Value := Componente;
    SEnsamblesFEN_CANTIDAD.Value := Cantidad;
    SEnsamblesFEN_CODEPRESENTA.Value := Lote;

    SEnsambles.Post;

  except on E: Exception do
    ShowMessage('Ocurrió un error actualizando componente. ' + E.Message);
  end;
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

procedure TdmDatos.tbEnsamblesCostoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  dmAdministrativo.CargarCostos( tbEnsamblesFI_CODIGO.Value);

  dmAdministrativo.tbCostos.First;

  Text := dmAdministrativo.tbCostosCostoPromedio.AsString;

end;

procedure TdmDatos.tbEnsamblesImpuestoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  dmAdministrativo.CargarCostos( tbEnsamblesFI_CODIGO.Value);

  dmAdministrativo.tbPrecios.First;

  Text := dmAdministrativo.tbPreciosMtoImpuesto1.AsString;
end;

procedure TdmDatos.tbEnsamblesPrecioGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  dmAdministrativo.CargarCostos( tbEnsamblesFI_CODIGO.Value);

  dmAdministrativo.tbPrecios.First;

  Text := dmAdministrativo.tbPreciosPrecio.AsString;
end;

procedure TdmDatos.tbEnsamblesPrecioSinImpuestoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  dmAdministrativo.CargarCostos( tbEnsamblesFI_CODIGO.Value);

  dmAdministrativo.tbPrecios.First;

  Text := dmAdministrativo.tbPreciosSinImpuesto.AsString;
end;

procedure TdmDatos.tbEnsamblesRentabilidadGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  dmAdministrativo.CargarCostos( tbEnsamblesFI_CODIGO.Value);

  dmAdministrativo.tbPrecios.First;

  Text := dmAdministrativo.tbPreciosUtilidad.AsString;
end;

end.
