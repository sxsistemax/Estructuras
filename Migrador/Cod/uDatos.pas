unit uDatos;

interface

uses
  SysUtils, Classes, DB, dbisamtb, JvMemoryDataset, Dialogs, JvBaseDlg,
  JvProgressDialog, Variants;

type
  tArchivos = (taLotes, taEnsambles, taInventario);

  tSeparadores = (tsComa, tsDosPuntos, tsEspacio, tsGuion, tsPuntoyComa, Tabulador);

  TdmDatos = class(TDataModule)
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
    qrConsulta: TDBISAMQuery;
    tbCamposDestino: TJvMemoryData;
    tbCamposOrigen: TJvMemoryData;
    tbCamposOrigenCampoOrigen: TStringField;
    tbCamposDestinoCampoDestino: TStringField;
    tbCamposOrigenOrden: TIntegerField;
    tbCamposDestinoNumeroCampoOrigen: TIntegerField;
    tbCamposDestinoCampoOrigen: TStringField;
    tbArchivo: TJvMemoryData;
    tbCamposDestinoTipoDato: TIntegerField;
    tbCamposDestinoTamanoDato: TIntegerField;
    pdProceso: TJvProgressDialog;
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
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AbrirLotes;
    procedure BorrarLotes;
    procedure ActualizarLotes;
    procedure AbrirEnsambles;
    procedure BorrarEnsambles;
    procedure ActualizarEnsambles;
    procedure AbrirInventario;
    procedure BorrarInventario;
    procedure ActualizarInventario;
    procedure CargarCamposOrigen( Archivo : String; Separador : char);
    procedure CargarCamposDestino( T : TDBISAMTable);
    procedure CargarArchivo( Archivo : String; Separador : char;
                Tabla : tArchivos );
    procedure ImportarArchivo( Tabla : tArchivos; BorrarTabla : boolean);
  end;

var
  dmDatos: TdmDatos;

const
  kSeparadores : array [0..5] of char = (',', ':', ' ', '-', ';', char(9));

implementation

uses uBaseDatosA2, uTablasConBlobAdministrativo;

{$R *.dfm}

{ TdmDatos }

procedure TdmDatos.AbrirEnsambles;
begin
  SEnsambles.Open;
end;

procedure TdmDatos.AbrirInventario;
begin
  Sinventario.Open;
end;

procedure TdmDatos.AbrirLotes;
begin
  Sinvlote.Open
end;

procedure TdmDatos.ActualizarEnsambles;
begin
  try
    if SEnsambles.State in [dsEdit, dsInsert] then
      SEnsambles.Post;

    qrConsulta.SQL.Text := 'update SEnsambles set FEN_OTRO1 = 0, FEN_TIPORECORD = 1, FEN_CTDPLANTILLA = 1 where FEN_CODEPARTE = ''$$$$$$$$$$''';
    qrConsulta.ExecSQL;

    qrConsulta.SQL.Text := 'SELECT Sinvlote.FL_RANDOM, SEnsambles.FEN_CODE FROM SEnsambles INNER JOIN Sinvlote ON (SEnsambles.FEN_CODEPARTE=Sinvlote.FL_CODIGO)  AND (SEnsambles.FEN_CODEPRESENTA=Sinvlote.FL_LOTE)';
    qrConsulta.ExecSQL;

  except

  end;

end;

procedure TdmDatos.ActualizarInventario;
begin

end;

procedure TdmDatos.ActualizarLotes;
begin
  try
    if Sinvlote.State in [dsEdit, dsInsert] then
      Sinvlote.Post;

    qrConsulta.SQL.Text := 'update SInvLote set FL_Visible = True, FL_TIPO = 3';
    qrConsulta.ExecSQL;
  except

  end;
end;

procedure TdmDatos.BorrarEnsambles;
begin
  try
    qrConsulta.SQL.Text := 'Delete From SEnsambles';
    qrConsulta.ExecSQL;
  except

  end;
end;

procedure TdmDatos.BorrarInventario;
begin

end;

procedure TdmDatos.BorrarLotes;
begin
  try
    qrConsulta.SQL.Text := 'Delete From SInvLote';
    qrConsulta.ExecSQL;
  except

  end;
end;

procedure TdmDatos.CargarArchivo(Archivo: String; Separador: char;
                Tabla : tArchivos);
var
  F : TextFile;
  S, R : string;
  Campo : string;
  I : integer;
  CamposClave : string;
  Posicion : integer;
  TipoCampo : Integer;
  Log: TextFile;
begin
  pdProceso.Show;

  try
    case Tabla of
      taLotes: AbrirLotes;
      taEnsambles : AbrirEnsambles;
    end;

    tbArchivo.Close;

    AssignFile(F, Archivo);
    Reset(F);

    // Crea el archivo log
    AssignFile(Log, ChangeFileExt(Archivo, '.log'));
    Rewrite(Log);

    // Lee los encabezados
    Readln(F, S);

    // Lee el primer registro de datos del archivo
    Readln(F, S);

    // Borra la definición de los campos en la tabla temporal
    tbArchivo.FieldDefs.Clear;

    // Crea los campos en el archivo temporal
    tbCamposDestino.First;
    while  not tbCamposDestino.eof do
    begin
      if tbCamposDestinoNumeroCampoOrigen.Value > 0 then
      begin
        if TFieldType( tbCamposDestinoTipoDato.Value) = ftString then
          tbArchivo.FieldDefs.Add(tbCamposDestinoCampoDestino.Value,
            TFieldType( tbCamposDestinoTipoDato.Value), tbCamposDestinoTamanoDato.Value)
        else
          tbArchivo.FieldDefs.Add(tbCamposDestinoCampoDestino.Value,
            TFieldType( tbCamposDestinoTipoDato.Value));
      end;
      tbCamposDestino.Next;
    end;

    tbArchivo.Open;

    pdProceso.Max := FileSize(F);

    // Recorre el archivo texto y procesa el registro
    while not EOF(f) do
    begin
      pdProceso.Position := FilePos(F);

      R := S;

      tbArchivo.Append;

      tbCamposDestino.First;
      while  not tbCamposDestino.eof do
      begin
        if tbCamposDestinoNumeroCampoOrigen.Value > 0 then
        begin

          i := 0;
          S := R;
          // Busca el campo
          while (Length(s) > 0) and (i < tbCamposDestinoNumeroCampoOrigen.Value) do
          begin
            if Pos(Separador, S) <> 0 then
            begin
              Campo := Copy(S, 1, Pos(Separador, S) - 1);
              Delete(S, 1, Pos(Separador, S));
            end
            else
            begin
              Campo := S;
              S := '';
            end;

            Inc(i);
          end;

          // si encontro el campo asignelo al campo en la tabla
          if (tbCamposDestinoNumeroCampoOrigen.Value = i) and (Campo <> '') then
          begin
            TipoCampo := tbCamposDestinoTipoDato.Value;
            try
              case TFieldType(TipoCampo) of
                ftSmallint,
                ftInteger,
                ftWord,
                ftLongWord,
                ftLargeint : tbArchivo.FieldByName(tbCamposDestinoCampoDestino.Value).Value := StrToInt( Campo);
                ftFloat, ftCurrency, ftSingle : tbArchivo.FieldByName(tbCamposDestinoCampoDestino.Value).Value := StrToFloat( Campo);
                ftDate, ftDateTime : tbArchivo.FieldByName(tbCamposDestinoCampoDestino.Value).Value := StrToDateTime( Campo);
                ftBoolean : tbArchivo.FieldByName(tbCamposDestinoCampoDestino.Value).Value := StrToBool( Campo);
                else   tbArchivo.FieldByName(tbCamposDestinoCampoDestino.Value).Value := Campo;
              end;
            except on E: Exception do
              WriteLn( Log, R, ' ', tbCamposDestinoCampoDestino.Value, ' ', E.Message);
            end;
          end;
        end;

        tbCamposDestino.Next;
      end;


      // Leo el siguiente
      Readln( F, s);
    end;

    tbArchivo.Post;

    CloseFile(F);
    CloseFile( Log);

    // Quita el filtro
    tbCamposDestino.Filtered := false;

    pdProceso.Hide;
  except
    pdProceso.Hide;
    CloseFile( Log);
  end;
end;

procedure TdmDatos.CargarCamposDestino(T: TDBISAMTable);
var
  F : TField;
begin
  // Inicializa la tabla de campos destino
  tbCamposDestino.Close;
  tbCamposDestino.Open;

  for F  in T.Fields do
  begin
    tbCamposDestino.Append;
    tbCamposDestinoCampoDestino.Value := F.FieldName;
    tbCamposDestinoTipoDato.Value := Integer( F.DataType);
    tbCamposDestinoTamanoDato.Value := F.DataSize;
  end;

  tbCamposDestino.Post;

  tbCamposDestino.First;
end;

procedure TdmDatos.CargarCamposOrigen(Archivo: String; Separador : char);
var
  F : TextFile;
  S : string;
  Campo : string;
  I : integer;
begin
  AssignFile(F, Archivo);
  Reset(F);
  Readln(F, S);

  // Abre la tabla de campos origen
  tbCamposOrigen.Close;
  tbCamposOrigen.Open;
  tbCamposOrigen.Append;
  tbCamposOrigenCampoOrigen.Value := '';
  tbCamposOrigenOrden.Value := 0;


  i := 1;
  while Length(s) > 0 do
  begin
    if Pos(Separador, S) <> 0 then
    begin
      Campo := Copy(S, 1, Pos(Separador, S) - 1);
      Delete(S, 1, Pos(Separador, S));
    end
    else
    begin
      Campo := S;
      S := '';
    end;

    tbCamposOrigen.Append;
    tbCamposOrigenCampoOrigen.Value := Campo;
    tbCamposOrigenOrden.Value := i;


    Inc(i);
  end;

  tbCamposOrigen.Post;
  CloseFile(F);

end;

procedure TdmDatos.ImportarArchivo(Tabla: tArchivos; BorrarTabla: boolean);
var
  i : integer;

  procedure AsignarCamposARegistro(aArchivo : TDBISAMTable);
  var
    i : integer;
    Encontro : boolean;
  begin
    if BorrarTabla then
      aArchivo.Append
    else
    begin
      case Tabla of
        taLotes: Encontro := aArchivo.Locate('FL_CODIGO;FL_LOTE',
                  VarArrayOf([tbArchivo.FieldByName('FL_CODIGO').Value, tbArchivo.FieldByName('FL_LOTE').Value]),[]);
        taEnsambles: Encontro := aArchivo.Locate('FEN_CODIGO;FEN_CODEPARTE;FEN_CODEPRESENTA',
                  VarArrayOf([tbArchivo.FieldByName('FEN_CODIGO').Value,
                              tbArchivo.FieldByName('FEN_CODEPARTE').Value,
                              tbArchivo.FieldByName('FEN_CODEPRESENTA').Value]),[]);
      end;

      if Encontro then
      begin
        aArchivo.edit;
      end
      else // si no lo encuentra lo debe adicionar
        aArchivo.Append;
    end;
    for I := 0 to tbArchivo.FieldDefList.Count - 1 do
    begin
      aArchivo.FieldByName(tbArchivo.FieldDefList[i].Name).Value := tbArchivo.FieldByName(tbArchivo.FieldDefList[i].Name).Value;
    end;
  end;

begin
  pdProceso.Show;
  try

    case Tabla of
      taLotes: AbrirLotes;
      taEnsambles : AbrirEnsambles;
    end;

    if BorrarTabla then
    begin
      case Tabla of
        taLotes: BorrarLotes;
        taEnsambles : BorrarEnsambles;
      end;
    end;

    pdProceso.Max := tbArchivo.RecordCount;
    i := 1;

    tbArchivo.First;
    while not tbArchivo.Eof do
    begin
      case Tabla of
        taLotes:
          begin
            AsignarCamposARegistro( Sinvlote);

            if BorrarTabla then
            begin
              // Asigna el campo random
              if Sinvlote.FieldByName('FL_RANDOM').Value = Null then
                Sinvlote.FieldByName('FL_RANDOM').Value := Random(1000000);

              // Asigna el correlativo
              if Sinvlote.FieldByName('FL_CORRELATIVO').Value = Null then
                Sinvlote.FieldByName('FL_CORRELATIVO').Value := i;
            end;
          end;
        taEnsambles:
          begin
            AsignarCamposARegistro( SEnsambles);

            if BorrarTabla then
            begin
              // Busca el lote y actualiza
            end;
          end;
      end;

      inc(i);
      tbArchivo.Next;
      pdProceso.Position := i;
    end;

    case Tabla of
      taLotes: ActualizarLotes;
      taEnsambles : ActualizarEnsambles;
    end;

    pdProceso.Hide;
  except
    pdProceso.Hide;
  end;

end;

end.
