unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TForm10 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure awal;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses Unit9, Daftar;

{$R *.dfm}

procedure TForm10.Button1Click(Sender: TObject);
begin
with zqry1 do begin
SQL.Clear;
SQL.Add('select * from tabel_user where username='+QuotedStr(edit1.Text));
open;
end;
//end with
//jika tidak ditemukan data yang dicari
//maka tampilkan pesan

if zqry1.RecordCount=0
then
Application.MessageBox('Maaf user name tidak ditemukan','informasi',MB_OK or MB_ICONINFORMATION)
else
begin
if zqry1.FieldByName('password').AsString<>Edit2.Text
then
Application.MessageBox('Pastikan password yang anda masukkan benar','error',MB_OK or MB_ICONERROR)
else
begin
hide;
Form9.Show;
end;
end;
awal;
end;

procedure TForm10.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm10.Button2Click(Sender: TObject);
begin
close;
end;

procedure TForm10.Button3Click(Sender: TObject);
begin
  Hide;
form11.show;
end;

procedure TForm10.Button4Click(Sender: TObject);
begin
awal;
end;

procedure TForm10.awal;
begin
Edit1.Clear;
Edit2.Clear;
end;

end.
