object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 488
  ClientWidth = 886
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 26
    Top = 24
    Width = 109
    Height = 13
    Caption = 'ID TEMPAT LAPANGAN'
  end
  object Label2: TLabel
    Left = 26
    Top = 43
    Width = 163
    Height = 13
    Caption = 'ID KATEGORI TEMPAT LAPANGAN'
  end
  object Label3: TLabel
    Left = 26
    Top = 77
    Width = 127
    Height = 13
    Caption = 'NAMA TEMPAT LAPANGAN'
  end
  object Label4: TLabel
    Left = 26
    Top = 96
    Width = 31
    Height = 13
    Caption = 'NO HP'
  end
  object Label5: TLabel
    Left = 26
    Top = 115
    Width = 30
    Height = 13
    Caption = 'EMAIL'
  end
  object Label6: TLabel
    Left = 384
    Top = 24
    Width = 150
    Height = 13
    Caption = 'DESKRIPSI TEMPAT LAPANGAN'
  end
  object Label7: TLabel
    Left = 384
    Top = 43
    Width = 49
    Height = 13
    Caption = 'JAM BUKA'
  end
  object Label8: TLabel
    Left = 384
    Top = 77
    Width = 55
    Height = 13
    Caption = 'JAM TUTUP'
  end
  object Label9: TLabel
    Left = 384
    Top = 105
    Width = 86
    Height = 13
    Caption = 'HARGA PERSEWA'
  end
  object Label10: TLabel
    Left = 384
    Top = 124
    Width = 70
    Height = 13
    Caption = 'DURASI SEWA'
  end
  object Label11: TLabel
    Left = 48
    Top = 424
    Width = 25
    Height = 13
    Caption = 'CARI'
  end
  object DBGrid1: TDBGrid
    Left = -19
    Top = 264
    Width = 857
    Height = 120
    DataSource = DataModule1.DSTempatLapangan
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object EIdTptLap: TEdit
    Left = 216
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object EIdkattptlap: TComboBox
    Left = 216
    Top = 40
    Width = 145
    Height = 21
    TabOrder = 2
  end
  object ENamaTempatLap: TEdit
    Left = 216
    Top = 67
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object ENohp: TEdit
    Left = 216
    Top = 94
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object EEmail: TEdit
    Left = 216
    Top = 121
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object EDeskripsiTptLap: TEdit
    Left = 560
    Top = 21
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object EJamBuka: TEdit
    Left = 560
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object EJamTutup: TEdit
    Left = 560
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object EHargaPersewa: TEdit
    Left = 560
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object EDurasiSewa: TEdit
    Left = 560
    Top = 123
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object Button1: TButton
    Left = 408
    Top = 193
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 11
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 512
    Top = 191
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 12
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 408
    Top = 224
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 13
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 512
    Top = 224
    Width = 75
    Height = 25
    Caption = 'BERSIH'
    TabOrder = 14
    OnClick = Button4Click
  end
  object EFilerData: TEdit
    Left = 216
    Top = 421
    Width = 441
    Height = 21
    TabOrder = 15
    OnChange = EFilerDataChange
  end
end
