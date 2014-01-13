unit uDatos;

interface

uses
  SysUtils, Classes, DB, dbisamtb, dialogs, variants, JvComponentBase,
  JvProgressComponent, JvMemoryDataset;

type

  tProcesoComponentes = (tpcConsulta, tpcTemporal);

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
    tbEnsamblesUtilidad: TFloatField;
    SEnsamblesDetalle: TDBISAMTable;
    SEnsamblesDetalleFED_DOCUMENTO: TStringField;
    SEnsamblesDetalleFED_PRODUCTO: TStringField;
    SEnsamblesDetalleFED_AUTO: TAutoIncField;
    SEnsamblesDetalleFED_CODEPRINCIPAL: TStringField;
    SEnsamblesDetalleFED_FECHAEMISION: TDateField;
    SEnsamblesDetalleFED_STATUS: TSmallintField;
    SEnsamblesDetalleFED_CANTIDAD: TFloatField;
    SEnsamblesDetalleFED_CANTIDADDESCARGA: TFloatField;
    SEnsamblesDetalleFED_COSTOUNITARIO: TFloatField;
    SEnsamblesDetalleFED_CODEPRESENTA: TStringField;
    SEnsamblesDetalleFED_ORIGENAUTO: TIntegerField;
    SEnsamblesDetalleFED_FACTORPRESENTA: TFloatField;
    SEnsamblesDetalleFED_CANTIDADCIERRE: TFloatField;
    SEnsamblesDetalleFED_ESPRESENTA: TBooleanField;
    SEnsamblesDetalleFED_TIPOOFERTA: TIntegerField;
    SEnsamblesDetalleFED_RANDOMOPERACION: TIntegerField;
    SEnsamblesDetalleFED_EXISTENCIA: TFloatField;
    SEnsamblesDetalleFED_EXISTENCIADETALLE: TFloatField;
    SEnsamblesDetalleFED_PUESTOINV: TStringField;
    SEnsamblesOrden: TDBISAMTable;
    SEnsamblesOrdenFEO_DOCUMENTO: TStringField;
    SEnsamblesOrdenFEO_FECHAEMISION: TDateField;
    SEnsamblesOrdenFEO_FECHAENTREGA: TDateField;
    SEnsamblesOrdenFEO_HORAEMISION: TTimeField;
    SEnsamblesOrdenFEO_NOORDENCOMPRA: TStringField;
    SEnsamblesOrdenFEO_CANTIDADORDEN: TFloatField;
    SEnsamblesOrdenFEO_CODEPRODUCTO: TStringField;
    SEnsamblesOrdenFEO_STATUS: TSmallintField;
    SEnsamblesOrdenFEO_NOITEMSINICIO: TIntegerField;
    SEnsamblesOrdenFEO_COSTOINICIAL: TFloatField;
    SEnsamblesOrdenFEO_OTROCOSTO1: TFloatField;
    SEnsamblesOrdenFEO_OTROCOSTO1PORCENT: TFloatField;
    SEnsamblesOrdenFEO_OTROCOSTO2: TFloatField;
    SEnsamblesOrdenFEO_OTROCOSTO2PORCENT: TFloatField;
    SEnsamblesOrdenFEO_OTROCOSTO3: TFloatField;
    SEnsamblesOrdenFEO_OTROCOSTO3PORCENT: TFloatField;
    SEnsamblesOrdenFEO_DETALLE: TMemoField;
    SEnsamblesOrdenFEO_USUARIO: TStringField;
    SEnsamblesOrdenFEO_COMPUTERNAME: TStringField;
    SEnsamblesOrdenFEO_COSTOFINAL: TCurrencyField;
    SEnsamblesOrdenFEO_FECHACIERRE: TDateField;
    SEnsamblesOrdenFEO_RESPONSABLE: TStringField;
    SEnsamblesOrdenFEO_AUTORIZADOPOR: TStringField;
    SEnsamblesOrdenFEO_PROPOSITO: TStringField;
    SEnsamblesOrdenFEO_USUARIOCIERRE: TStringField;
    SEnsamblesOrdenFEO_COMPUTERCIERRE: TStringField;
    SEnsamblesOrdenFEO_NOITEMSFINAL: TIntegerField;
    SEnsamblesOrdenFEO_OTROCOSTOCIERRE1: TFloatField;
    SEnsamblesOrdenFEO_OTROCOSTOCIERRE1PORCENT: TFloatField;
    SEnsamblesOrdenFEO_OTROCOSTOCIERRE2: TFloatField;
    SEnsamblesOrdenFEO_OTROCOSTOCIERRE2PORCENT: TFloatField;
    SEnsamblesOrdenFEO_OTROCOSTOCIERRE3: TFloatField;
    SEnsamblesOrdenFEO_OTROCOSTOCIERRE3PORCENT: TFloatField;
    SEnsamblesOrdenFEO_CANTIDADCIERRE: TFloatField;
    SEnsamblesOrdenFEO_MOTIVOANULACION: TMemoField;
    SEnsamblesOrdenFEO_CLASIFICACODE: TIntegerField;
    SinvDep: TDBISAMTable;
    SinvDepFT_TIPO: TSmallintField;
    SinvDepFT_CODIGOPRODUCTO: TStringField;
    SinvDepFT_CODIGODEPOSITO: TIntegerField;
    SinvDepFT_LOTE: TStringField;
    SinvDepFT_LOTEAUTOINCREMENT: TIntegerField;
    SinvDepFT_NOLINEA: TIntegerField;
    SinvDepFT_STATUS: TSmallintField;
    SinvDepFT_PUESTO: TStringField;
    SinvDepFT_EXISTENCIA: TCurrencyField;
    SinvDepFT_EXISTENCIADETALLADA: TCurrencyField;
    SinvDepFT_EXISTENCIAAPARTADA: TCurrencyField;
    SinvDepFT_EXISTENCIAORDENCOMPRA: TCurrencyField;
    SinvDepFT_EXISTENCIAPEDIDO: TCurrencyField;
    SinvDepFT_INVENTARIOINICIALBS: TCurrencyField;
    SinvDepFT_INVENTARIOINICIALBSCIERRE: TCurrencyField;
    SinvDepFT_INVENTARIOINICIALUND: TCurrencyField;
    SinvDepFT_INVENTARIOINICIALCIERRE: TCurrencyField;
    SinvDepFT_CTDTRANSITO: TCurrencyField;
    SinvDepFT_VISIBLE: TBooleanField;
    SinvDepFT_CODEBARRA: TAutoIncField;
    SinvDepFT_EXISTENCIAAJUSTE: TFloatField;
    SinvDepBASE_AUTOINCREMENT: TAutoIncField;
    SinvDepFT_CODE: TStringField;
    SOperacionInv: TDBISAMTable;
    SDetalleInv: TDBISAMTable;
    SDetalleInvFDI_TIPOOPERACION: TIntegerField;
    SDetalleInvFDI_CODIGO: TStringField;
    SDetalleInvFDI_LINEA: TIntegerField;
    SDetalleInvFDI_DOCUMENTO: TStringField;
    SDetalleInvFDI_AUTOINCREMENT: TAutoIncField;
    SDetalleInvFDI_CLIENTEPROVEEDOR: TStringField;
    SDetalleInvFDI_DOCUMENTOORIGEN: TStringField;
    SDetalleInvFDI_LINEAORIGEN: TIntegerField;
    SDetalleInvFDI_CLASIFICACION: TIntegerField;
    SDetalleInvFDI_STATUS: TIntegerField;
    SDetalleInvFDI_VISIBLE: TBooleanField;
    SDetalleInvFDI_COSTO: TCurrencyField;
    SDetalleInvFDI_CANTIDAD: TFloatField;
    SDetalleInvFDI_CANTIDADPENDIENTE: TFloatField;
    SDetalleInvFDI_LOTE: TStringField;
    SDetalleInvFDI_LOTERANDOM: TIntegerField;
    SDetalleInvFDI_NEWLOTE: TBooleanField;
    SDetalleInvFDI_DEPOSITOSOURCE: TIntegerField;
    SDetalleInvFDI_DEPOSITOTARGET: TIntegerField;
    SDetalleInvFDI_OPERACION_AUTOINCREMENT: TIntegerField;
    SDetalleInvFDI_DECIMALES: TBooleanField;
    SDetalleInvFDI_DECIMALESPEN: TBooleanField;
    SDetalleInvFDI_SERIALNUMBER: TIntegerField;
    SDetalleInvFDI_USASERIALES: TBooleanField;
    SDetalleInvFDI_USADEPOSITOS: TBooleanField;
    SDetalleInvFDI_COSTOOPERACION: TCurrencyField;
    SDetalleInvFDI_MEMODETALLE: TMemoField;
    SDetalleInvFDI_MONEDA: TIntegerField;
    SDetalleInvFDI_FACTORCAMBIO: TCurrencyField;
    SDetalleInvFDI_DETALLECOSTOSIMPORTACION: TBlobField;
    SDetalleInvFDI_DETALLEPLANILLAIMPORTACION: TBlobField;
    SDetalleInvFDI_EXISTEDETALLEIMPORTACION: TBooleanField;
    SDetalleInvFDI_EXISTEDETALLEDECOSTOS: TBooleanField;
    SDetalleInvFDI_ALICUOTAFLETEOTROS: TCurrencyField;
    SDetalleInvFDI_IMPUESTO1: TCurrencyField;
    SDetalleInvFDI_PORCENTIMPUESTO1: TBooleanField;
    SDetalleInvFDI_MONTOIMPUESTO1: TCurrencyField;
    SDetalleInvFDI_IMPUESTO2: TCurrencyField;
    SDetalleInvFDI_PORCENTIMPUESTO2: TBooleanField;
    SDetalleInvFDI_MONTOIMPUESTO2: TCurrencyField;
    SDetalleInvFDI_ORIGENPRICE: TIntegerField;
    SDetalleInvFDI_PORCENTDESCPARCIAL: TCurrencyField;
    SDetalleInvFDI_DESCUENTOPARCIAL: TCurrencyField;
    SDetalleInvFDI_PRECIOSINDESCUENTO: TCurrencyField;
    SDetalleInvFDI_PRECIOCONDESCUENTO: TCurrencyField;
    SDetalleInvFDI_PRECIODEVENTA: TCurrencyField;
    SDetalleInvFDI_ROUNDDESCTPARCIAL: TIntegerField;
    SDetalleInvFDI_COMISIONFIJA: TCurrencyField;
    SDetalleInvFDI_COMISIONFIJAP: TBooleanField;
    SDetalleInvFDI_UNDDESCARGA: TCurrencyField;
    SDetalleInvFDI_UNDCAPACIDAD: TCurrencyField;
    SDetalleInvFDI_UNDDETALLADA: TBooleanField;
    SDetalleInvFDI_INDEXPRICES: TIntegerField;
    SDetalleInvFDI_PARTESUSANSERIALES: TBooleanField;
    SDetalleInvFDI_COSTODEVENTAS: TCurrencyField;
    SDetalleInvFDI_DESCRIPCIONOFERTA: TStringField;
    SDetalleInvFDI_VENDEDORASIGNADO: TStringField;
    SDetalleInvFDI_MONTOCOMISION: TCurrencyField;
    SDetalleInvFDI_PRECIOBASECOMISION: TCurrencyField;
    SDetalleInvFDI_COMISIONBLOQUEADA: TBooleanField;
    SDetalleInvFDI_COMISIONYAPAGADA: TBooleanField;
    SDetalleInvFDI_DOCUMENTOLIBERACION: TStringField;
    SDetalleInvFDI_TIPODECOMISION: TIntegerField;
    SDetalleInvFDI_PRICEFORCOMISION: TIntegerField;
    SDetalleInvFDI_FECHAOPERACION: TDateField;
    SDetalleInvFDI_USER: TIntegerField;
    SDetalleInvFDI_PORCENTDESCUENTO1: TCurrencyField;
    SDetalleInvFDI_PORCENTDESCUENTO2: TCurrencyField;
    SDetalleInvFDI_COSTOSUPDATE: TBooleanField;
    SDetalleInvBASE_AUTOINCREMENT: TAutoIncField;
    SDetalleInvFDI_TOTALPESO: TCurrencyField;
    SDetalleInvFDI_CTOCOSTO: TIntegerField;
    SDetalleInvFDI_AUTORIZADO: TStringField;
    SDetalleInvFDI_MARKPERIODO: TBooleanField;
    SDetalleInvFDI_CTOCOSTOSTR: TStringField;
    SDetalleInvFDI_COSTOACTUALNACIONAL: TCurrencyField;
    SDetalleInvFDI_COSTOACTUALEXT: TCurrencyField;
    SDetalleInvFDI_PREFIXINVENTARIO: TStringField;
    SDetalleInvFDI_COSTOAJUSTADO: TCurrencyField;
    SDetalleInvFDI_FECHALIBRO: TDateField;
    SDetalleInvFDI_TIPODOCUMENTOORIGEN: TSmallintField;
    SDetalleInvFDI_STATUSDOCUMENTOORIGEN: TSmallintField;
    SOperacionInvFTI_AUTOINCREMENT: TAutoIncField;
    SOperacionInvFTI_DOCUMENTO: TStringField;
    SOperacionInvFTI_TIPO: TIntegerField;
    SOperacionInvFTI_STATUS: TIntegerField;
    SOperacionInvFTI_VISIBLE: TBooleanField;
    SOperacionInvFTI_FECHAEMISION: TDateTimeField;
    SOperacionInvFTI_DEPOSITOSOURCE: TIntegerField;
    SOperacionInvFTI_DEPOSITODESTINO: TIntegerField;
    SOperacionInvFTI_TOTALITEMS: TIntegerField;
    SOperacionInvFTI_TOTALITEMSINICIAL: TIntegerField;
    SOperacionInvFTI_MONEDA: TIntegerField;
    SOperacionInvFTI_FACTORCAMBIO: TCurrencyField;
    SOperacionInvFTI_TOTALCOSTO: TCurrencyField;
    SOperacionInvFTI_TOTALCOSTOREAL: TCurrencyField;
    SOperacionInvFTI_CLASIFICACION: TIntegerField;
    SOperacionInvFTI_DESCRIPCLASIFY: TStringField;
    SOperacionInvFTI_USER: TIntegerField;
    SOperacionInvFTI_AUTORIZADOPOR: TStringField;
    SOperacionInvFTI_PROPOSITO: TStringField;
    SOperacionInvFTI_RESPONSABLE: TStringField;
    SOperacionInvFTI_DETALLE: TMemoField;
    SOperacionInvFTI_TIENELOTES: TBooleanField;
    SOperacionInvFTI_UPDATEITEMS: TBooleanField;
    SOperacionInvFTI_TOTALBRUTO: TCurrencyField;
    SOperacionInvFTI_DESCUENTO1PORCENT: TCurrencyField;
    SOperacionInvFTI_DESCUENTO1MONTO: TCurrencyField;
    SOperacionInvFTI_DESCUENTO1ORIGEN: TSmallintField;
    SOperacionInvFTI_DESCUENTO2PORCENT: TCurrencyField;
    SOperacionInvFTI_DESCUENTO2MONTO: TCurrencyField;
    SOperacionInvFTI_DESCUENTO2ORIGEN: TSmallintField;
    SOperacionInvFTI_DESCUENTOPARCIAL: TCurrencyField;
    SOperacionInvFTI_FLETEPORCENT: TCurrencyField;
    SOperacionInvFTI_FLETEMONEDA: TCurrencyField;
    SOperacionInvFTI_FLETEORIGEN: TSmallintField;
    SOperacionInvFTI_BASEIMPONIBLE: TCurrencyField;
    SOperacionInvFTI_BASEIMPONIBLE2: TCurrencyField;
    SOperacionInvFTI_IMPUESTO1PORCENT: TCurrencyField;
    SOperacionInvFTI_IMPUESTO1MONTO: TCurrencyField;
    SOperacionInvFTI_IMPUESTO2PORCENT: TCurrencyField;
    SOperacionInvFTI_IMPUESTO2MONTO: TCurrencyField;
    SOperacionInvFTI_DESCUENTOCUADRE: TCurrencyField;
    SOperacionInvFTI_TOTALNETO: TCurrencyField;
    SOperacionInvFTI_FECHAVENCIDO: TDateField;
    SOperacionInvFTI_DIASVENCIMIENTO: TIntegerField;
    SOperacionInvFTI_RIFCLIENTE: TStringField;
    SOperacionInvFTI_NITCLIENTE: TStringField;
    SOperacionInvFTI_PERSONACONTACTO: TStringField;
    SOperacionInvFTI_TELEFONOCONTACTO: TStringField;
    SOperacionInvFTI_DIRECCIONDESPACHO: TMemoField;
    SOperacionInvFTI_DETALLECOMENTARIO: TMemoField;
    SOperacionInvFTI_ORDENCOMPRA: TStringField;
    SOperacionInvFTI_PLANILLAIMPORTACION: TBlobField;
    SOperacionInvFTI_EXISTEPLANILLAIMPORTACION: TBooleanField;
    SOperacionInvFTI_PORCENTFLETESINASIGNAR: TCurrencyField;
    SOperacionInvFTI_SALDOOPERACION: TCurrencyField;
    SOperacionInvFTI_MONEDAPAGO: TIntegerField;
    SOperacionInvFTI_FORMADEPAGO: TBlobField;
    SOperacionInvFTI_TOTALPRECIO: TCurrencyField;
    SOperacionInvFTI_VUELTO: TCurrencyField;
    SOperacionInvFTI_AUTORIZADOS: TIntegerField;
    SOperacionInvFTI_EXCENTO: TBooleanField;
    SOperacionInvFTI_COSTODEVENTA: TCurrencyField;
    SOperacionInvFTI_TIPOOPERACIONORIGEN: TIntegerField;
    SOperacionInvFTI_DOCUMENTOORIGEN: TStringField;
    SOperacionInvFTI_FROMCOMPUESTOS: TBooleanField;
    SOperacionInvFTI_VENDEDORASIGNADO: TStringField;
    SOperacionInvFTI_ZONAVENTA: TStringField;
    SOperacionInvFTI_PENDINGFORPRINT: TBooleanField;
    SOperacionInvFTI_COBRADORASIGNADO: TStringField;
    SOperacionInvFTI_COMISIONCOBROS: TCurrencyField;
    SOperacionInvFTI_COMISIONCOBROSBLOQUEADA: TBooleanField;
    SOperacionInvFTI_FACTURASLOTERANDOM: TStringField;
    SOperacionInvFTI_MULTIPLEVENDEDOR: TBooleanField;
    SOperacionInvFTI_MULTIPLEDEPOSITO: TBooleanField;
    SOperacionInvFTI_TIMESAVED: TIntegerField;
    SOperacionInvFTI_TIPOPRECIO: TIntegerField;
    SOperacionInvBASE_AUTOINCREMENT: TAutoIncField;
    SOperacionInvFTI_SERIE: TStringField;
    SOperacionInvFTI_NAMEFORMATO: TStringField;
    SOperacionInvFTI_MACHINENAME: TStringField;
    SOperacionInvFTI_COMISIONVENTA: TCurrencyField;
    SOperacionInvFTI_MONTOPAGADO: TCurrencyField;
    SOperacionInvFTI_MONTOPERIODO: TCurrencyField;
    SOperacionInvFTI_PORCENTPERIODO: TCurrencyField;
    SOperacionInvFTI_HORA: TTimeField;
    SOperacionInvFTI_GUIADESPACHO: TStringField;
    SOperacionInvFTI_NORECIBOCAJA: TStringField;
    SOperacionInvFTI_CTOCOSTO: TStringField;
    SOperacionInvFTI_COSTOACTUALNACIONAL: TCurrencyField;
    SOperacionInvFTI_COSTOACTUALEX: TCurrencyField;
    SOperacionInvFTI_PREFIXINVENTARIO: TStringField;
    SOperacionInvFTI_NUMEROCONTROL: TStringField;
    SOperacionInvFTI_COSTOAJUSTADO: TCurrencyField;
    SOperacionInvFTI_FACTORREFERENCIA: TCurrencyField;
    SOperacionInvFTI_FINICIAL: TCurrencyField;
    SOperacionInvFTI_FINTERESES: TCurrencyField;
    SOperacionInvFTI_FINTERESESP: TCurrencyField;
    SOperacionInvFTI_FMANEJO: TCurrencyField;
    SOperacionInvFTI_FMANEJOP: TCurrencyField;
    SOperacionInvFTI_FEXTRAORDINARIA: TCurrencyField;
    SOperacionInvFTI_FCTDEXTRAORDINARIA: TIntegerField;
    SOperacionInvFTI_FINTEXTRAORDINARIA: TCurrencyField;
    SOperacionInvFTI_FMTOCUOTA: TCurrencyField;
    SOperacionInvFTI_FCTDCUOTA: TIntegerField;
    SOperacionInvFTI_FCOBRANZA: TCurrencyField;
    SOperacionInvFTI_TOTALFINANCIADO: TCurrencyField;
    SOperacionInvFTI_DETALLEGIROS: TBlobField;
    SOperacionInvFTI_SALDOFINANCIAR: TCurrencyField;
    SOperacionInvFTI_PRIMERACUOTA: TDateField;
    SOperacionInvFTI_CAPITALCUOTAEXTRA: TCurrencyField;
    SOperacionInvFTI_CREDICARD: TMemoField;
    SOperacionInvFTI_MAQUINAFISCAL: TStringField;
    SOperacionInvFTI_TOTALPAGINAS: TIntegerField;
    SOperacionInvFTI_SUCURSALORIGEN: TSmallintField;
    SOperacionInvFTI_FECHALIBRO: TDateTimeField;
    SOperacionInvFTI_IVAINTERESES: TCurrencyField;
    qrPedidosPendientes: TDBISAMQuery;
    qrPedidosPendientesDocumento: TStringField;
    qrPedidosPendientesIdCliente: TStringField;
    qrPedidosPendientesCodigo: TStringField;
    Sclientes: TDBISAMTable;
    SclientesFC_CODIGO: TStringField;
    SclientesFC_DESCRIPCION: TStringField;
    qrPedidosPendientesCliente: TStringField;
    qrPedidosPendientesDescripcion: TStringField;
    tbComponentes: TJvMemoryData;
    qrComponentesRandom: TIntegerField;
    qrPedidosPendientesCantidad: TFloatField;
    qrComponentesClasificacion: TIntegerField;
    qrComponentesTipoInventario: TIntegerField;
    tbComponentesCodigo: TStringField;
    tbComponentesDescripcion: TStringField;
    tbComponentesLote: TStringField;
    tbComponentesCantidad: TFloatField;
    tbComponentesCosto: TCurrencyField;
    tbComponentesRandom: TIntegerField;
    tbComponentesClasificacion: TIntegerField;
    tbComponentesTipoInventario: TIntegerField;
    qrSeleccionarComponentesCosto: TCurrencyField;
    qrSeleccionarComponentesRandom: TIntegerField;
    qrSeleccionarComponentesClasificacion: TIntegerField;
    qrSeleccionarComponentesTipoInventario: TIntegerField;
    qrSeleccionarComponentesExistencia: TFloatField;
    qrComponentesExistencia: TFloatField;
    tbComponentesExistencia: TFloatField;
    qrPedidosPendientesIdVendedor: TStringField;
    qrPedidosPendientesIdUsaurio: TIntegerField;
    qrPedidosPendientesFechaEmision: TDateTimeField;
    qrPedidosPendientesFechaVencimiento: TDateField;
    qrPedidosPendientesUsuario: TStringField;
    Svendedores: TDBISAMTable;
    SvendedoresFV_CODIGO: TStringField;
    SvendedoresFV_DESCRIPCION: TStringField;
    qrPedidosPendientesVendedor: TStringField;
    tbPlantillas: TJvMemoryData;
    tbPlantillasCosto: TFloatField;
    tbPlantillasPrecio: TFloatField;
    tbPlantillasValorIva: TFloatField;
    tbPlantillasNetoVenta: TFloatField;
    tbPlantillasUtilidad: TFloatField;
    tbPlantillasRentabilidad: TFloatField;
    procedure tbEnsamblesCostoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbEnsamblesPrecioGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbEnsamblesPrecioSinImpuestoGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure tbEnsamblesImpuestoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbEnsamblesUtilidadGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbEnsamblesRentabilidadGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qrComponentesCostoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qrSeleccionarComponentesExistenciaGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure qrComponentesExistenciaGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AbrirSEnsambles;
    procedure AbrirComponentes(Plantilla: string);
    procedure AbrirSFixed;
    procedure AbrirConfiguracion;
    procedure AbrirUsuarios;
    procedure AbrirInventario;
    procedure AdicionarComponentes(Origen, Destino: string);
    procedure ActualizarComponente(Plantilla, Componente, Lote: string; 
      Cantidad: double; TipoProceso : tProcesoComponentes; TipoOperacion : integer);
    Function DescripcionReferencia(Codigo: String): string;
    Procedure BorrarComponentes(Plantilla, Componente, Lote: string);
    Function CostoPlantilla(TipoCalculo : tProcesoComponentes): double;
    Function Valor(S: string): double;
    Function ValorIVA(Codigo: string): double;
    Procedure GuardarRecalculo(Codigo: String; Costo, Precio, ValorIVA,
      NetoVenta, Rentabilidad: double);
    Procedure AbrirArchivosParaOrdenes;
    Procedure CargarTablaComponentes(Codigo: string);
    Procedure CargarCostosPlantilla(Codigo: string);
    Procedure GenerarOrden(Pedido, Plantilla, Responsable: string;
      FechaEntrega: TDateTime; Cantidad: double);
    function Usuario: String;
    function Clasificacion(Codigo: integer): string;
    function CostoComponente(Codigo, Lote: string; ManejoInventario: integer;
      CostoActual: double): double;
    function ExistenciaComponente( Codigo, Lote: string): double;
  end;

  
var
  dmDatos: TdmDatos;

implementation

uses uBaseDatosA2, uTablasConBlobAdministrativo, uUtilidadesSPA;
{$R *.dfm}
{ TdmDatos }

procedure TdmDatos.AbrirArchivosParaOrdenes;
begin
  try
    if not SEnsamblesDetalle.Active then
      SEnsamblesDetalle.Open;

    if not SEnsamblesOrden.Active then
      SEnsamblesOrden.Open;

    if not SinvDep.Active then
      SinvDep.Open;

    if not SOperacionInv.Active then
      SOperacionInv.Open;

    if not SDetalleInv.Active then
      SDetalleInv.Open;

  except
    on E: Exception do
end;
end;

procedure TdmDatos.AbrirComponentes(Plantilla: string);
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

except
  on E: Exception do
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
  qrConsulta.SQL.Text :=
    'Select * from SEnsambles Where FEN_CodeParte <> ''$$$$$$$$$$'' and FEN_Codigo = ''' + Origen + '''';
  qrConsulta.Open;

  pdProgreso.ProgressMax := qrConsulta.RecordCount;

  // si no existe el padre Inserta el padre del ensamble 
  if not SEnsambles.Locate('FEN_CODIGO;FEN_CODEPARTE',
    VarArrayOf([Destino, '$$$$$$$$$$']), []) then
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
    SEnsamblesFEN_CODEPARTE.Value := qrConsulta.FieldByName('FEN_CODEPARTE')
      .Value;
    SEnsamblesFEN_CANTIDAD.Value := qrConsulta.FieldByName('FEN_CANTIDAD')
      .Value;
    SEnsamblesFEN_CODEPRESENTA.Value := qrConsulta.FieldByName
      ('FEN_CODEPRESENTA').Value;

    pdProgreso.InfoLabel := qrConsulta.FieldByName('FEN_CODEPARTE').Value;
    pdProgreso.ProgressPosition := qrConsulta.RecNo;
    qrConsulta.Next;
  end;

  SEnsambles.Post;

except
  on E: Exception do
  begin
    ShowMessage
      ('Ocurrio un error ejecutnado consulta copiar componentes. ' + E.Message);
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
  qrConsulta.SQL.Text :=
    'Delete from SEnsambles Where FEN_CODEPARTE <> ''$$$$$$$$$$'' and FEN_CODIGO = ''' + Plantilla + ''' ';
  if (Componente <> '') and (Lote <> '') then
    qrConsulta.SQL.Text := qrConsulta.SQL.Text +
      ' and FEN_CODEPARTE = ''' + Componente +
      ''' and FEN_CODEPRESENTA = ''' + Lote + '''';

  qrConsulta.ExecSQL;

except
  on E: Exception do
    ShowMessage('Ocurrió un error borrando componentes.');
end;
end;

procedure TdmDatos.CargarCostosPlantilla(Codigo: string);
begin
  try
    dmAdministrativo.AbrirSFixed;
    if not dmAdministrativo.tbCostos.Active then
      dmAdministrativo.AbrirTablasCostos;

    if dmAdministrativo.sFixed.Locate('FX_TIPO;FX_CODIGO' ,VarArrayOf(['B', Codigo]), []) then
    begin
      // carga los datos en las tablas tbCostos y tbPrecios
      dmAdministrativo.CargarCostos(Codigo);

      dmAdministrativo.tbPrecios.First;

      tbPlantillas.Close;
      tbPlantillas.Open;
      
      tbPlantillas.Append;

      tbPlantillasCosto.Value := dmAdministrativo.tbCostosCostoPromedio.Value;
      tbPlantillasPrecio.Value := dmAdministrativo.tbPreciosSinImpuesto.Value;
      tbPlantillasValorIva.Value := dmAdministrativo.tbPreciosMtoImpuesto1.Value;
      tbPlantillasNetoVenta.Value := dmAdministrativo.tbPreciosPrecio.Value;
      tbPlantillasUtilidad.Value := dmAdministrativo.tbPreciosUtilidad.Value;
      if dmAdministrativo.tbPreciosSinImpuesto.Value <> 0 then
        tbPlantillasRentabilidad.Value := tbPlantillasCosto.Value * 100 / tbPlantillasPrecio.Value
      else 
        tbPlantillasRentabilidad.Value := 100;
    
      tbPlantillas.Post;
    end;
    
  except on E: Exception do
  end;
end;

procedure TdmDatos.CargarTablaComponentes(Codigo: string);
begin
try
  tbComponentes.Close;
  tbComponentes.Open;

  AbrirComponentes(Codigo);

  qrComponentes.First;
  while not qrComponentes.EOF do
  begin
    tbComponentes.Append;

    tbComponentesCodigo.Value := qrComponentesCodigo.Value;
    tbComponentesDescripcion.Value := qrComponentesDescripcion.Value;
    tbComponentesLote.Value := qrComponentesLote.Value;
    tbComponentesCantidad.Value := qrComponentesCantidad.Value;
    tbComponentesCosto.Value := CostoComponente(qrComponentesCodigo.Value, qrComponentesLote.Value,
      qrComponentesTipoInventario.Value, qrComponentesCosto.Value);
    tbComponentesRandom.Value := qrComponentesRandom.Value;
    tbComponentesClasificacion.Value := qrComponentesClasificacion.Value;
    tbComponentesTipoInventario.Value := qrComponentesTipoInventario.Value;
    tbComponentesExistencia.Value := ExistenciaComponente(qrComponentesCodigo.Value, qrComponentesLote.Value);

    qrComponentes.Next;
  end;

  if tbComponentes.State = dsInsert then
    tbComponentes.Post;

  tbComponentes.First;

except
  on E: Exception do
  end;
end;

function TdmDatos.Clasificacion(Codigo: integer): string;
begin
  Result := '';
  try
    qrConsulta.Close;
    qrConsulta.SQL.Text :=
      'Select FCL_NOMBRE from SClasificacion Where FCL_CODIGO = ' + IntToStr
      (Codigo);
    qrConsulta.Open;

    Result := qrConsulta.FieldByName('FCL_NOMBRE').Value;
  except
    on E: Exception do
  end;
end;

function TdmDatos.CostoComponente(Codigo, Lote: string;
  ManejoInventario: integer; CostoActual: double): double;
var
  Costo: double;
begin
  Costo := CostoActual;

  // Si el manejo de inventario es Costo promedio o Materiales debe buscar e sFixed 
  if (ManejoInventario in [integer(tmiCostoPromedio), integer(tmiMateriales)]) then
  begin
    // Si el codigo no esta cargado debe buscarlo 
    if (dmAdministrativo.tbCostosCodigo.Value <> Codigo) then
    begin
      dmAdministrativo.AbrirSFixed;

      // busca el registro 
      if dmAdministrativo.sFixed.Locate('FX_TIPO;FX_CODIGO',
        VarArrayOf(['B', Codigo]), []) then
      begin
        // carga los datos en las tablas tbCostos y tbPrecios 
        dmAdministrativo.CargarCostos(Codigo);
      end;
    end;

    Costo := dmAdministrativo.tbCostosCostoPromedio.Value;
  end;

  Result := Costo;
end;

function TdmDatos.CostoPlantilla(TipoCalculo : tProcesoComponentes): double;
var
  Costo : Double;
begin
  Costo := 0;
  try
    case TipoCalculo of
      tpcConsulta : begin  // Calculo qrComponentes
            qrComponentes.First;
            while not qrComponentes.EOF do
            begin
              Costo := Costo + CostoComponente(qrComponentesCodigo.Value, qrComponentesLote.Value, qrComponentesTipoInventario.Value,
                                  qrComponentesCosto.Value) * qrComponentesCantidad.Value;
              qrComponentes.Next;
            end;
            qrComponentes.First;
          end;
      tpcTemporal : begin  // Calculo tbComponentes
            tbComponentes.First;
            while not tbComponentes.EOF do
            begin
              Costo := Costo + CostoComponente(tbComponentesCodigo.Value, tbComponentesLote.Value, tbComponentesTipoInventario.Value,
                                  tbComponentesCosto.Value)  * tbComponentesCantidad.Value;
              tbComponentes.Next;
            end;
            tbComponentes.First;
          end;
    end;
  except
    on E: Exception do
  end;

  Result := Costo;
end;

function TdmDatos.DescripcionReferencia(Codigo: String): string;
begin
  Result := 'No encontrado.';
  try
    AbrirInventario;

    if Sinventario.Locate('FI_CODIGO', Codigo, []) then
      Result := SinventarioFI_DESCRIPCION.Value;

  except
    on E: Exception do
      ShowMessage
        ('Ocurrió un error buscando la descripción.' + E.Message);
  end;
end;

function TdmDatos.ExistenciaComponente(Codigo, Lote: string): double;
var
  Existencia: double;
begin
  Existencia := 0;
  try
    qrConsulta.Close;
    qrConsulta.SQL.Text := 'SELECT SinvDep.FT_EXISTENCIA Existencia FROM SinvDep WHERE ' +
                           '(SinvDep.FT_TIPO = 4) AND (SinvDep.FT_CODIGODEPOSITO = 1) AND ' +
                           '(SinvDep.FT_CODIGOPRODUCTO = ''' + Codigo + ''') AND ' +
                           '(SinvDep.FT_LOTE = ''' + Lote + ''')';
    qrConsulta.Open;

    if qrConsulta.RecordCount > 0 then
      Existencia := qrConsulta.FieldByName('Existencia').Value;
       
  except on E: Exception do
  end;

  Result := Existencia;

end;

procedure TdmDatos.GenerarOrden(Pedido, Plantilla, Responsable: string;
  FechaEntrega: TDateTime; Cantidad: double);
begin
  try
    AbrirArchivosParaOrdenes;

    // Inserta la orden en SEnsambleOrden 
    SEnsamblesOrden.Append;
    SEnsamblesOrdenFEO_DOCUMENTO.Value :=                               
      dmAdministrativo.GenerarConsecutivo('NO_ORDENENSAMBLE');
    SEnsamblesOrdenFEO_FECHAEMISION.Value := Now;
    SEnsamblesOrdenFEO_FECHAENTREGA.Value := FechaEntrega;
    SEnsamblesOrdenFEO_HORAEMISION.Value := Now;
    SEnsamblesOrdenFEO_NOORDENCOMPRA.Value := Pedido;
    SEnsamblesOrdenFEO_CANTIDADORDEN.Value := Cantidad;
    SEnsamblesOrdenFEO_CODEPRODUCTO.Value := Plantilla;
    SEnsamblesOrdenFEO_STATUS.Value := 4;
    SEnsamblesOrdenFEO_OTROCOSTO1.Value := 0;
    SEnsamblesOrdenFEO_OTROCOSTO1PORCENT.Value := 0;
    SEnsamblesOrdenFEO_OTROCOSTO2.Value := 0;
    SEnsamblesOrdenFEO_OTROCOSTO2PORCENT.Value := 0;
    SEnsamblesOrdenFEO_OTROCOSTO3.Value := 0;
    SEnsamblesOrdenFEO_OTROCOSTO3PORCENT.Value := 0;
    SEnsamblesOrdenFEO_DETALLE.Value := '';
    SEnsamblesOrdenFEO_USUARIO.Value := Usuario;
    SEnsamblesOrdenFEO_COMPUTERNAME.Value := NombreComputador;
    SEnsamblesOrdenFEO_CLASIFICACODE.Value := 1;
    SEnsamblesOrdenFEO_NOITEMSINICIO.Value := tbComponentes.RecordCount;
    SEnsamblesOrdenFEO_RESPONSABLE.Value := Responsable;
    SEnsamblesOrdenFEO_COSTOINICIAL.Value := CostoPlantilla(tpcTemporal);

    SEnsamblesOrden.Post;

    // Inserta el traslado en SOperacionInv 
    SOperacionInv.Append;
    SOperacionInvFTI_DOCUMENTO.Value :=
      dmAdministrativo.GenerarConsecutivo('NO_TRANSFERENCIAS');
    SOperacionInvFTI_TIPO.Value := integer(toiTraslados);
    SOperacionInvFTI_STATUS.Value := 1;
    SOperacionInvFTI_VISIBLE.Value := true;
    SOperacionInvFTI_FECHAEMISION.Value := Now;
    SOperacionInvFTI_DEPOSITOSOURCE.Value := StrToInt
      (dmAdministrativo.SSistemaDEPOSITO_ENSAMBLE.Value);
    SOperacionInvFTI_DEPOSITODESTINO.Value := StrToInt
      (dmAdministrativo.SSistemaDEPOSITO_ENSAMBLETRANSITO.Value);
    SOperacionInvFTI_TOTALITEMS.Value := tbComponentes.RecordCount;
    SOperacionInvFTI_TOTALITEMSINICIAL.Value :=
      tbComponentes.RecordCount;
    SOperacionInvFTI_MONEDA.Value := 1;
    SOperacionInvFTI_FACTORCAMBIO.Value := 1;
    SOperacionInvFTI_CLASIFICACION.Value := StrToInt
      (dmAdministrativo.SSistemaCLASIFICA_ENSAMBLETRASLADO.Value);
    SOperacionInvFTI_USER.Value := SPAOrdenesConfiguracionUsuario.Value;
    SOperacionInvFTI_RESPONSABLE.Value := Responsable;
    SOperacionInvFTI_TIENELOTES.Value := true;
    SOperacionInvFTI_UPDATEITEMS.Value := true;
    SOperacionInvFTI_DOCUMENTOORIGEN.Value := SEnsamblesOrdenFEO_DOCUMENTO.Value;
    SOperacionInvFTI_MACHINENAME.Value := NombreComputador;
    SOperacionInvFTI_HORA.Value := Now;
    SOperacionInvFTI_TOTALCOSTO.Value := 
      SEnsamblesOrdenFEO_COSTOINICIAL.
      Value;
    SOperacionInvFTI_TOTALCOSTOREAL.Value :=
      SEnsamblesOrdenFEO_COSTOINICIAL.Value;
    SOperacionInvFTI_DESCRIPCLASIFY.Value := Clasificacion
      (SOperacionInvFTI_CLASIFICACION.Value);

    SOperacionInv.Post;

    // Inserta el detalle de la orden 
    tbComponentes.First;
    while not tbComponentes.EOF do
    begin
      // Inserta el detalle de la orden 
      SEnsamblesDetalle.Append;
      SEnsamblesDetalleFED_DOCUMENTO.Value :=
        SEnsamblesOrdenFEO_DOCUMENTO.Value;
      SEnsamblesDetalleFED_PRODUCTO.Value := tbComponentesCodigo.Value;
      SEnsamblesDetalleFED_CODEPRINCIPAL.Value := Plantilla;
      SEnsamblesDetalleFED_FECHAEMISION.Value :=
        SEnsamblesOrdenFEO_FECHAEMISION.Value;
      SEnsamblesDetalleFED_STATUS.Value := 4;
      SEnsamblesDetalleFED_CANTIDAD.Value :=
        tbComponentesCantidad.Value;
      SEnsamblesDetalleFED_CANTIDADDESCARGA.Value := 1;
      SEnsamblesDetalleFED_COSTOUNITARIO.Value :=
        tbComponentesCosto.Value;
      SEnsamblesDetalleFED_CODEPRESENTA.Value :=
        tbComponentesLote.Value;
      SEnsamblesDetalleFED_ORIGENAUTO.Value := 0;
      SEnsamblesDetalleFED_FACTORPRESENTA.Value := 1;
      SEnsamblesDetalleFED_CANTIDADCIERRE.Value := 0;
      SEnsamblesDetalleFED_ESPRESENTA.Value := false;
      SEnsamblesDetalleFED_TIPOOFERTA.Value := 0;
      SEnsamblesDetalleFED_RANDOMOPERACION.Value := Random(10000000);
      SEnsamblesDetalleFED_EXISTENCIADETALLE.Value := 0;
      SEnsamblesDetalleFED_EXISTENCIA.Value := tbComponentesExistencia.Value;
      SEnsamblesDetalle.Post;
      
      // ACtualia el inventario si lo mueve
      if tbComponentesClasificacion.Value <> integer(tciServicios) then
      begin
        // Inserta el traslado 
        SDetalleInv.Append;
        SDetalleInvFDI_TIPOOPERACION.Value := integer(toiTraslados);
        SDetalleInvFDI_CODIGO.Value := tbComponentesCodigo.Value;
        SDetalleInvFDI_LINEA.Value := tbComponentes.RecNo - 1;
        SDetalleInvFDI_DOCUMENTO.Value :=
          SOperacionInvFTI_DOCUMENTO.Value;
        SDetalleInvFDI_DOCUMENTOORIGEN.Value :=
          SOperacionInvFTI_DOCUMENTOORIGEN.Value;
        SDetalleInvFDI_CLASIFICACION.Value :=
          SOperacionInvFTI_CLASIFICACION.Value;
        SDetalleInvFDI_STATUS.Value := 1;
        SDetalleInvFDI_VISIBLE.Value := true;
        SDetalleInvFDI_COSTO.Value := tbComponentesCosto.Value;
        SDetalleInvFDI_CANTIDAD.Value := tbComponentesCantidad.Value;
        SDetalleInvFDI_LOTE.Value := tbComponentesLote.Value;
        SDetalleInvFDI_LOTERANDOM.Value := tbComponentesRandom.Value;
        SDetalleInvFDI_DEPOSITOSOURCE.Value :=
          SOperacionInvFTI_DEPOSITOSOURCE.Value;
        SDetalleInvFDI_DEPOSITOTARGET.Value :=
          SOperacionInvFTI_DEPOSITODESTINO.Value;
        SDetalleInvFDI_DECIMALES.Value := true;
        SDetalleInvFDI_DECIMALESPEN.Value := true;
        SDetalleInvFDI_SERIALNUMBER.Value := Random(1000000000);
        SDetalleInvFDI_USASERIALES.Value := false;
        SDetalleInvFDI_USADEPOSITOS.Value := true;
        SDetalleInvFDI_COSTOOPERACION.Value := tbComponentesCosto.Value;
        SDetalleInvFDI_MONEDA.Value := 1;
        SDetalleInvFDI_FACTORCAMBIO.Value := 1;
        SDetalleInvFDI_UNDDESCARGA.Value := 1;
        SDetalleInvFDI_UNDCAPACIDAD.Value := 1;
        SDetalleInvFDI_UNDDETALLADA.Value := false;
        SDetalleInvFDI_FECHAOPERACION.Value := Now;
        SDetalleInvFDI_USER.Value := SOperacionInvFTI_USER.Value;
        SDetalleInvFDI_OPERACION_AUTOINCREMENT.Value := SOperacionInvFTI_AUTOINCREMENT.Value;
        SDetalleInv.Post;

        // Busca en SInvDep el registro, si no existe lo inserta (Origen) 
        if not SinvDep.Locate(
          'FT_TIPO;FT_CODIGOPRODUCTO;FT_CODIGODEPOSITO;FT_LOTE;FT_LOTEAUTOINCREMENT'
            , VarArrayOf([4, tbComponentesCodigo.Value,
            SOperacionInvFTI_DEPOSITOSOURCE.Value,
            tbComponentesLote.Value, tbComponentesRandom.Value]),
          []) then
        begin
          SinvDep.Append;
          SinvDepFT_EXISTENCIA.Value := 0;
        end
        else
          SinvDep.Edit;

        SinvDepFT_TIPO.Value := 4;
        SinvDepFT_CODIGOPRODUCTO.Value := tbComponentesCodigo.Value;
        SinvDepFT_CODIGODEPOSITO.Value :=
          SOperacionInvFTI_DEPOSITOSOURCE.Value;
        SinvDepFT_LOTE.Value := tbComponentesLote.Value;
        SinvDepFT_LOTEAUTOINCREMENT.Value := tbComponentesRandom.Value;
        SinvDepFT_EXISTENCIA.Value := SinvDepFT_EXISTENCIA.Value -
          tbComponentesCantidad.Value;
        SinvDepFT_VISIBLE.Value := true;
        SinvDep.Post;

        // Busca en SInvDep el registro, si no existe lo inserta (Destino) 
        if not SinvDep.Locate(
          'FT_TIPO;FT_CODIGOPRODUCTO;FT_CODIGODEPOSITO;FT_LOTE;FT_LOTEAUTOINCREMENT'
            , VarArrayOf([4, tbComponentesCodigo.Value,
            SOperacionInvFTI_DEPOSITODESTINO.Value,
            tbComponentesLote.Value, tbComponentesRandom.Value]), [])
          then
        begin
          SinvDep.Append;
          SinvDepFT_EXISTENCIA.Value := 0;
        end
        else
          SinvDep.Edit;

        SinvDepFT_TIPO.Value := 4;
        SinvDepFT_CODIGOPRODUCTO.Value := tbComponentesCodigo.Value;
        SinvDepFT_CODIGODEPOSITO.Value :=
          SOperacionInvFTI_DEPOSITODESTINO
          .Value;
        SinvDepFT_LOTE.Value := tbComponentesLote.Value;
        SinvDepFT_LOTEAUTOINCREMENT.Value := tbComponentesRandom.Value;
        SinvDepFT_EXISTENCIA.Value := SinvDepFT_EXISTENCIA.Value +
          tbComponentesCantidad.Value;
        SinvDepFT_VISIBLE.Value := true;
        SinvDep.Post;
        
      end;
              
      tbComponentes.Next;
    end;
    
    ShowMessage('Se generó la orden número: ' + SEnsamblesOrdenFEO_DOCUMENTO.Value);

    // Borra los componentes 
    tbComponentes.Close;

    // Recarga la consulta de los pedidos 
    qrPedidosPendientes.Close;

  except
    on E: Exception do
      ShowMessage('Ocurrio un error generando la orden. ' + E.Message);
  end;
end;

procedure TdmDatos.GuardarRecalculo(Codigo: String;
  Costo, Precio, ValorIVA, NetoVenta, Rentabilidad: double);
var
  Campo: TBlobField;
begin
  try
    dmAdministrativo.tbCostos.First;


    // Guarda el costo 
    dmAdministrativo.tbCostos.Edit;
    dmAdministrativo.tbCostosCostoPromedio.Value := Costo;
    dmAdministrativo.tbCostos.Post;

    // Guarda el precio 
    dmAdministrativo.tbPrecios.First;
    dmAdministrativo.tbPrecios.Edit;
    dmAdministrativo.tbPreciosSinImpuesto.Value := Precio;
    dmAdministrativo.tbPreciosMtoImpuesto1.Value := ValorIVA;
    dmAdministrativo.tbPreciosPrecio.Value := NetoVenta;
    
    if dmAdministrativo.tbPreciosPorcentajeUtilidad.Value then
      dmAdministrativo.tbPreciosUtilidad.Value := Rentabilidad
    else
      dmAdministrativo.tbPreciosUtilidad.Value := dmAdministrativo.tbPreciosSinImpuesto.Value - dmAdministrativo.tbCostosCostoPromedio.Value;
    dmAdministrativo.tbPrecios.Post;

    // Lleva los datos al registro SFixed 
    dmAdministrativo.AbrirSFixed;

    if dmAdministrativo.sFixed.Locate('FX_TIPO;FX_CODIGO',
      VarArrayOf(['B', Codigo]), []) then
    begin
      dmAdministrativo.sFixed.Edit;

      Campo := dmAdministrativo.sFixedFX_COSTOS;

      dmAdministrativo.GuardarCostos(dmAdministrativo.sFixed,
        dmAdministrativo.sFixedFX_COSTOS);
      dmAdministrativo.sFixedFX_COSTOS.Value := Campo.Value;
      dmAdministrativo.sFixed.Post;

      dmAdministrativo.AbrirTablasCostos;

      tbEnsambles.Refresh;
    end;

  except
    on E: Exception do
  end;
end;

procedure TdmDatos.qrComponentesCostoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00', CostoComponente(qrComponentesCodigo.Value, qrComponentesLote.Value,
      qrComponentesTipoInventario.Value, qrComponentesCosto.Value));
end;

procedure TdmDatos.qrComponentesExistenciaGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00', ExistenciaComponente(qrComponentesCodigo.Value, qrComponentesLote.Value));
end;

procedure TdmDatos.qrSeleccionarComponentesExistenciaGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00', ExistenciaComponente(qrSeleccionarComponentesCodigo.Value, qrSeleccionarComponentesLote.Value));
end;

procedure TdmDatos.ActualizarComponente(Plantilla, Componente,
  Lote: string; Cantidad: double; TipoProceso : tProcesoComponentes; TipoOperacion : integer);
begin
  try
    case TipoProceso of
      tpcConsulta: 
        begin
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

        end;
      tpcTemporal: 
        begin
          if TipoOperacion = 0 then
            tbComponentes.Edit
          Else
            tbComponentes.Append;

          tbComponentesCodigo.Value := Componente;
          tbComponentesDescripcion.Value := qrSeleccionarComponentesDescripcion.Value;
          tbComponentesCantidad.Value := Cantidad;
          tbComponentesLote.Value := Lote;
          tbComponentesClasificacion.Value := qrSeleccionarComponentesClasificacion.Value;
          tbComponentesTipoInventario.Value := qrSeleccionarComponentesTipoInventario.Value;
          tbComponentesCosto.Value :=  CostoComponente( tbComponentesCodigo.Value, tbComponentesLote.Value, 
                                            tbComponentesTipoInventario.Value, qrSeleccionarComponentesCosto.Value);
          tbComponentesRandom.Value := qrSeleccionarComponentesRandom.Value;
          tbComponentesExistencia.Value := ExistenciaComponente(tbComponentesCodigo.Value, tbComponentesLote.Value);
          tbComponentes.Post;
        end;
    end;

        
  except
    on E: Exception do
      ShowMessage
        ('Ocurrió un error actualizando componente. ' + E.Message);
  end;
end;

procedure TdmDatos.tbEnsamblesCostoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  dmAdministrativo.CargarCostos(tbEnsamblesFI_CODIGO.Value);

  dmAdministrativo.tbCostos.First;

  Text := FormatFloat('#,##0.00', dmAdministrativo.tbCostosCostoPromedio.Value);

end;

procedure TdmDatos.tbEnsamblesImpuestoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  dmAdministrativo.CargarCostos(tbEnsamblesFI_CODIGO.Value);

  dmAdministrativo.tbPrecios.First;

  Text := FormatFloat('#,##0.00',
    dmAdministrativo.tbPreciosMtoImpuesto1.Value);
end;

procedure TdmDatos.tbEnsamblesPrecioGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  dmAdministrativo.CargarCostos(tbEnsamblesFI_CODIGO.Value);

  dmAdministrativo.tbPrecios.First;

  Text := FormatFloat('#,##0.00', dmAdministrativo.tbPreciosPrecio.Value);
end;

procedure TdmDatos.tbEnsamblesPrecioSinImpuestoGetText
  (Sender: TField; var Text: string; DisplayText: Boolean);
begin
  dmAdministrativo.CargarCostos(tbEnsamblesFI_CODIGO.Value);

  dmAdministrativo.tbPrecios.First;

  Text := FormatFloat('#,##0.00',
    dmAdministrativo.tbPreciosSinImpuesto.Value);
end;

procedure TdmDatos.tbEnsamblesRentabilidadGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
var
  Rentabilidad: double;
begin
  dmAdministrativo.tbCostos.First;

  // Verique si se maneja % en utilidad
  if dmAdministrativo.tbPreciosPorcentajeUtilidad.value then
    Rentabilidad := dmAdministrativo.tbPreciosUtilidad.Value
  else
  begin
    if dmAdministrativo.tbPreciosSinImpuesto.Value <> 0 then
      Rentabilidad := dmAdministrativo.tbPreciosUtilidad.Value * 100 /
        dmAdministrativo.tbPreciosSinImpuesto.Value
    else
      Rentabilidad := 0;
  
  end;

  Text := FormatFloat('#0.00', Rentabilidad);
end;

procedure TdmDatos.tbEnsamblesUtilidadGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
var
  Utilidad : double;
begin
  Utilidad := 0;
  
  dmAdministrativo.CargarCostos(tbEnsamblesFI_CODIGO.Value);

  dmAdministrativo.tbPrecios.First;

  // Verique si se maneja % en utilidad
  if not dmAdministrativo.tbPreciosPorcentajeUtilidad.value then
    Utilidad := dmAdministrativo.tbPreciosUtilidad.Value
  else
    Utilidad := dmAdministrativo.tbPreciosSinImpuesto.Value - dmAdministrativo.tbCostosCostoPromedio.Value;

  Text := FormatFloat('#,##0.00', Utilidad);
end;

function TdmDatos.Usuario: String;
begin
  try
    AbrirUsuarios;

    Susuarios.First;

    Result := SusuariosNombre.Value;
  except
    on E: Exception do
  end;
end;

function TdmDatos.Valor(S: string): double;
begin
  S := StringReplace(S, ',', '', [rfReplaceAll]);

  Result := StrToFloat('0' + S);
end;

function TdmDatos.ValorIVA(Codigo: string): double;
begin
  Result := 16;
end;

end.
