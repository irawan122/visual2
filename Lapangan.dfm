object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 445
  ClientWidth = 724
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 144
    Top = 80
    Width = 67
    Height = 13
    Caption = 'ID LAPANGAN'
  end
  object Label2: TLabel
    Left = 144
    Top = 104
    Width = 109
    Height = 13
    Caption = 'ID TEMPAT LAPANGAN'
  end
  object Label3: TLabel
    Left = 144
    Top = 123
    Width = 85
    Height = 13
    Caption = 'NAMA LAPANGAN'
  end
  object Label4: TLabel
    Left = 144
    Top = 155
    Width = 94
    Height = 13
    Caption = 'STATUS LAPANGAN'
  end
  object Label5: TLabel
    Left = 160
    Top = 400
    Width = 25
    Height = 13
    Caption = 'CARI'
  end
  object DBGrid1: TDBGrid
    Left = 144
    Top = 248
    Width = 457
    Height = 120
    DataSource = DataModule1.DSLapangan
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object EIdLap: TEdit
    Left = 296
    Top = 74
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object ENamaLap: TEdit
    Left = 296
    Top = 125
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object EStatusLap: TEdit
    Left = 296
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object EIdTptLap: TComboBox
    Left = 296
    Top = 101
    Width = 145
    Height = 21
    TabOrder = 4
  end
  object Button1: TButton
    Left = 464
    Top = 176
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 560
    Top = 176
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 560
    Top = 217
    Width = 75
    Height = 25
    Caption = 'BERSIH'
    TabOrder = 7
  end
  object Button4: TButton
    Left = 464
    Top = 217
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 8
    OnClick = Button4Click
  end
  object EFilterData: TEdit
    Left = 240
    Top = 400
    Width = 345
    Height = 21
    TabOrder = 9
  end
end
