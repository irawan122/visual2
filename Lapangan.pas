unit Lapangan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TForm5 = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EIdLap: TEdit;
    ENamaLap: TEdit;
    EStatusLap: TEdit;
    EIdTptLap: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label5: TLabel;
    EFilterData: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses modul;

procedure TForm5.Button1Click(Sender: TObject);
begin
   try
           with DataModule1 do
           begin
           ZQueryLapangan.Append;
           ZQueryLapanganid_lapangan.AsString:=EIdLap.Text;
           ZQueryLapanganid_tempat_lapangan.AsString:=EIdTptLap.Text;
           ZQueryLapangannama_lapangan.AsString:=ENamaLap.Text;
           ZQueryLapanganstatus_lapangan.AsString:=EStatusLap.Text;

           ZQueryLapangan.Post;
           end;
      except
        on salah:Exception do
        ShowMessage(salah.Message);
      end;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
  try
           with DataModule1 do
           begin
           ZQueryLapangan.Edit;
           ZQueryLapanganid_lapangan.AsString:=EIdLap.Text;
           ZQueryLapanganid_tempat_lapangan.AsString:=EIdTptLap.Text;
           ZQueryLapangannama_lapangan.AsString:=ENamaLap.Text;
           ZQueryLapanganstatus_lapangan.AsString:=EStatusLap.Text;

           ZQueryLapangan.Post;
           end;
      except
        on salah:Exception do
        ShowMessage(salah.Message);
      end;
end;

procedure TForm5.Button4Click(Sender: TObject);
begin
  if(
  (Trim(EIdLap.Text)='')and
   (Trim(EIdTptLap.Text)='')and
    (Trim(ENamaLap.Text)='')and
    (Trim(EStatusLap.Text)='')

) then
begin
   beep;
   ShowMessage('Silahkan pilih data terlebi dahulu');
   DBGrid1.SetFocus;
   Exit;
end else;
  DataModule1.ZQueryLapangan.Delete
end;

procedure TForm5.FormCreate(Sender: TObject);
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
