unit Galeri;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TForm6 = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EGaleriLap: TEdit;
    ECaptGaleri: TEdit;
    EIdTptLap: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label5: TLabel;
    EFilterData: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses modul;

procedure TForm6.Button1Click(Sender: TObject);
begin
   try
           with DataModule1 do
           begin
           ZQueryGaleri.Append;
           ZQueryGalerigaleri_lapangan.AsString:=EGaleriLap.Text;
           ZQueryGaleriid_tempat_lapangan.AsString:=EIdTptLap.Text;

           ZQueryGalericaption_galeri.AsString:=ECaptGaleri.Text;

           ZQueryGaleri.Post;
           end;
      except
        on salah:Exception do
        ShowMessage(salah.Message);
      end;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  try
           with DataModule1 do
           begin
           ZQueryGaleri.Append;
           ZQueryGalerigaleri_lapangan.AsString:=EGaleriLap.Text;
           ZQueryGaleriid_tempat_lapangan.AsString:=EIdTptLap.Text;

           ZQueryGalericaption_galeri.AsString:=ECaptGaleri.Text;

           ZQueryGaleri.Post;
           end;
      except
        on salah:Exception do
        ShowMessage(salah.Message);
      end;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
  EGaleriLap.Clear;
  EIdTptLap.Clear;
  ECaptGaleri.Clear;
  EGaleriLap.SetFocus;
end;

procedure TForm6.Button4Click(Sender: TObject);
begin

  if(
  (Trim(EGaleriLap.Text)='')and
   (Trim(EIdTptLap.Text)='')and
    (Trim(ECaptGaleri.Text)='')


) then
begin
   beep;
   ShowMessage('Silahkan pilih data terlebi dahulu');
   DBGrid1.SetFocus;
   Exit;
end else;
  DataModule1.ZQueryGaleri.Delete
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
  with DataModule1 do
  begin
    EIdtptlap.Items.Clear;
    ZQueryTempatLapangan.Close;
    ZQueryTempatLapangan.Open;
    while not ZQueryTempatLapangan.Eof do
  begin
    EIdtptlap.Items.Add(ZQueryTempatLapangan.FieldByName('id_tempat_lapangan').AsString);
    ZQueryTempatLapangan.Next;
  end
  end;
end;

end.
