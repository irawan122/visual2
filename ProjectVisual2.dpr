program ProjectVisual2;

uses
  Vcl.Forms,
  Masuk in 'Masuk.pas' {Form1},
  modul in 'modul.pas' {DataModule1: TDataModule},
  Utama in 'Utama.pas' {Form2},
  Kategori in 'Kategori.pas' {Form3},
  TempatLapangan in 'TempatLapangan.pas' {Form4},
  Lapangan in 'Lapangan.pas' {Form5},
  Galeri in 'Galeri.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
