unit modul;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Data.FMTBcd, ZSqlMetadata,
  Data.SqlExpr;

type
  TDataModule1 = class(TDataModule)
    ZConnection1: TZConnection;
    ZQueryLogin: TZQuery;
    ZQueryKategori: TZQuery;
    DSKategori: TDataSource;
    ZQueryKategoriid_kategori_tempat_lapagan: TIntegerField;
    ZQueryKategorinama_kategori_lapagan: TWideStringField;
    ZQueryTempatLapangan: TZQuery;
    DSTempatLapangan: TDataSource;
    ZQueryLapangan: TZQuery;
    DSLapangan: TDataSource;
    ZQueryGaleri: TZQuery;
    DSGaleri: TDataSource;
    ZQueryLapanganid_lapangan: TIntegerField;
    ZQueryLapanganid_tempat_lapangan: TIntegerField;
    ZQueryLapangannama_lapangan: TWideStringField;
    ZQueryLapanganstatus_lapangan: TWideStringField;
    ZQueryGalerigaleri_lapangan: TWideStringField;
    ZQueryGaleriid_tempat_lapangan: TIntegerField;
    ZQueryGalericaption_galeri: TWideStringField;
    ZQueryTempatLapanganid_tempat_lapangan: TIntegerField;
    ZQueryTempatLapanganid_kategori_tempat_lapagan: TIntegerField;
    ZQueryTempatLapangannama_tempat_lapangan: TWideStringField;
    ZQueryTempatLapangantelp: TWideStringField;
    ZQueryTempatLapanganemail: TWideStringField;
    ZQueryTempatLapangandeskripsi_tempat_lap: TWideStringField;
    ZQueryTempatLapanganjambuka: TWideStringField;
    ZQueryTempatLapanganjamtutup: TWideStringField;
    ZQueryTempatLapanganharga_persewa: TWideStringField;
    ZQueryTempatLapangandurasi_sewa: TWideStringField;
    SQLQuery1: TSQLQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
