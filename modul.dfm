object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 214
  Width = 627
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16')
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = '2110020046'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    LibraryLocation = 'E:\Irawan_2110020046\libmysql.dll'
    Left = 160
    Top = 16
  end
  object ZQueryLogin: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from login order by user asc')
    Params = <>
    Left = 64
    Top = 72
  end
  object ZQueryKategori: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from kategori order by id_kategori_tempat_lapagan asc')
    Params = <>
    Left = 152
    Top = 72
    object ZQueryKategoriid_kategori_tempat_lapagan: TIntegerField
      DisplayLabel = 'ID KATEGORI TEMPAT LAPANGAN'
      DisplayWidth = 20
      FieldName = 'id_kategori_tempat_lapagan'
      Required = True
    end
    object ZQueryKategorinama_kategori_lapagan: TWideStringField
      DisplayLabel = 'NAMA KATEGORI LAPANGAN'
      DisplayWidth = 25
      FieldName = 'nama_kategori_lapagan'
      Required = True
      Size = 50
    end
  end
  object DSKategori: TDataSource
    DataSet = ZQueryKategori
    Left = 152
    Top = 120
  end
  object ZQueryTempatLapangan: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tempat_lapangan order by id_tempat_lapangan asc')
    Params = <>
    Left = 248
    Top = 56
    object ZQueryTempatLapanganid_tempat_lapangan: TIntegerField
      FieldName = 'id_tempat_lapangan'
      Required = True
    end
    object ZQueryTempatLapanganid_kategori_tempat_lapagan: TIntegerField
      FieldName = 'id_kategori_tempat_lapagan'
      Required = True
    end
    object ZQueryTempatLapangannama_tempat_lapangan: TWideStringField
      FieldName = 'nama_tempat_lapangan'
      Required = True
      Size = 50
    end
    object ZQueryTempatLapangantelp: TWideStringField
      FieldName = 'telp'
      Required = True
      Size = 13
    end
    object ZQueryTempatLapanganemail: TWideStringField
      FieldName = 'email'
      Required = True
      Size = 30
    end
    object ZQueryTempatLapangandeskripsi_tempat_lap: TWideStringField
      FieldName = 'deskripsi_tempat_lap'
      Required = True
      Size = 50
    end
    object ZQueryTempatLapanganjambuka: TWideStringField
      FieldName = 'jambuka'
      Required = True
    end
    object ZQueryTempatLapanganjamtutup: TWideStringField
      FieldName = 'jamtutup'
      Required = True
    end
    object ZQueryTempatLapanganharga_persewa: TWideStringField
      FieldName = 'harga_persewa'
      Required = True
    end
    object ZQueryTempatLapangandurasi_sewa: TWideStringField
      FieldName = 'durasi_sewa'
      Required = True
    end
  end
  object DSTempatLapangan: TDataSource
    DataSet = ZQueryTempatLapangan
    Left = 232
    Top = 120
  end
  object ZQueryLapangan: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from lapangan order by id_lapangan asc')
    Params = <>
    Left = 344
    Top = 40
    object ZQueryLapanganid_lapangan: TIntegerField
      DisplayLabel = 'ID LAPANGAN'
      FieldName = 'id_lapangan'
      Required = True
    end
    object ZQueryLapanganid_tempat_lapangan: TIntegerField
      DisplayLabel = 'ID TEMPAT LAPANGAN'
      FieldName = 'id_tempat_lapangan'
      Required = True
    end
    object ZQueryLapangannama_lapangan: TWideStringField
      DisplayLabel = 'NAMA LAPANGAN'
      DisplayWidth = 20
      FieldName = 'nama_lapangan'
      Required = True
      Size = 50
    end
    object ZQueryLapanganstatus_lapangan: TWideStringField
      DisplayLabel = 'STATUS LAPANGAN'
      DisplayWidth = 10
      FieldName = 'status_lapangan'
      Required = True
      Size = 50
    end
  end
  object DSLapangan: TDataSource
    DataSet = ZQueryLapangan
    Left = 352
    Top = 88
  end
  object ZQueryGaleri: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from galeri order by galeri_lapangan asc')
    Params = <>
    Left = 448
    Top = 48
    object ZQueryGalerigaleri_lapangan: TWideStringField
      DisplayLabel = 'GALERI LAPANGAN'
      DisplayWidth = 20
      FieldName = 'galeri_lapangan'
      Required = True
      Size = 50
    end
    object ZQueryGaleriid_tempat_lapangan: TIntegerField
      DisplayLabel = 'ID TEMPAT LAPANGAN'
      FieldName = 'id_tempat_lapangan'
      Required = True
    end
    object ZQueryGalericaption_galeri: TWideStringField
      DisplayLabel = 'CAPTION GALERI'
      FieldName = 'caption_galeri'
      Required = True
      Size = 50
    end
  end
  object DSGaleri: TDataSource
    DataSet = ZQueryGaleri
    Left = 464
    Top = 96
  end
  object SQLQuery1: TSQLQuery
    Params = <>
    Left = 408
    Top = 152
  end
end
