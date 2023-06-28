unit Daftar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls;

type
  TForm11 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    cbb1: TComboBox;
    cbb2: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

uses Login;

{$R *.dfm}

procedure TForm11.Button1Click(Sender: TObject);
begin
if(Edit1.Text = '')or(Edit2.Text = '')or(cbb1.Text = '')or(cbb2.Text = '') then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG !');
end else
if(zqry1.Locate('username',Edit1.Text,[])) then
begin
  ShowMessage('Username sudah digunakan!');
end else
begin
zqry1.sql.clear;
zqry1.sql.Add('insert into tabel_user values(null,"'+Edit1.Text+'","'+Edit2.Text+'","'+cbb1.Text+'","'+cbb2.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_user');
zqry1.Open;

Form10.zqry1.Active := False;
Form10.zqry1.Active := true;


ShowMessage('DATA BERHASIL DISIMPAN!!');
end;
end;

procedure TForm11.Button2Click(Sender: TObject);
begin
form10.ShowModal;
end;

end.
