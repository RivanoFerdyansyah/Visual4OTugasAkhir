unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, frxClass, frxDBSet;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    dbgrd1: TDBGrid;
    Button6: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    Label8: TLabel;
    cbb1: TComboBox;
    frxDBkelas1: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure FormShow(Sender: TObject);
    procedure awal;
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  id : string;

implementation

{$R *.dfm}

procedure TForm2.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm2.awal;
begin
Edit1.Enabled:= False;
Edit2.Enabled:= False;
cbb1.Enabled:= False;

Button1.Enabled:= False;
Button2.Enabled:= False;
Button3.Enabled:= False;
Button4.Enabled:= False;
Button5.Enabled:= True;
Button6.Enabled:= True;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
Edit1.Enabled:= True;
Edit2.Enabled:= True;
cbb1.Enabled:= True;

Button1.Enabled:= True;
Button2.Enabled:= False;
Button3.Enabled:= False;
Button4.Enabled:= True;
Button5.Enabled:= True;
Button6.Enabled:= False;

Edit1.Clear;
Edit2.Clear;
cbb1.Text:= '';
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
if (Edit1.Text= '')or (Edit2.Text ='')or(cbb1.Text= '')then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (zqry1.Locate('nama',Edit1.Text,[])) and (zqry1.Locate('jenis',Edit2.Text,[])) then
begin
ShowMessage('DATA KELAS SUDAH DIGUNAKAN');
awal;
end else
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into tabel_kelas values (null,"'+Edit1.Text+'","'+Edit2.Text+'","'+cbb1.Text+'")');
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into tabel_kelas values (null,"'+Edit1.Text+'","'+Edit2.Text+'","'+cbb1.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_kelas');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
awal;
end;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_kelas where id_kelas="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_kelas');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
awal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
awal;
end;
end;

procedure TForm2.dbgrd1CellClick(Column: TColumn);
begin
id:= zqry1.Fields[0].AsString; // DBGrid
Edit1.Text:= zqry1.Fields[1].AsString;
Edit2.Text:= zqry1.Fields[2].AsString;
cbb1.Text:= zqry1.Fields[3].AsString;
Edit1.Enabled:= True;
Edit2.Enabled:= True;
cbb1.Enabled:= True;
Button1.Enabled:= True;
Button2.Enabled:= True;
Button3.Enabled:= True;
Button4.Enabled:= True;
Button5.Enabled:= True;
Button6.Enabled:= false;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
awal;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
