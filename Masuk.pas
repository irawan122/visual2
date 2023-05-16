unit Masuk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ZAbstractConnection,
  ZConnection;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    EUser: TEdit;
    EPass: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses modul, Utama;

procedure TForm1.Button1Click(Sender: TObject);
begin
   if DataModule1.ZQueryLogin.Locate('user',EUser.Text,[]) then
      begin
        // mengecek lagi password saat username sesuai tabel/benar
        if DataModule1.ZQueryLogin.Locate('pass',Epass.Text,[]) then
          begin
            //posisi password benar
            Form2.show;
            Form1.Hide;
            MessageBox(Handle,'SELAMAT ANDA BERHASIL LOGIN','INFO',MB_ICONINFORMATION);
            EUser.Clear;
            EPass.Clear;
          end else
          begin
            //password salah tapi posisi username benar
            ShowMessage('Password Anda salah');
            Exit;
          end;
      end else
      begin
        // bila user tidak ada di tabel saat diketikan
        ShowMessage('Username atau Password salah');
        Exit;
    end;
end;

end.
