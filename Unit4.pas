unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, Grids,
  DBGrids;

type
  TForm4 = class(TForm)
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
    Label4: TLabel;
    cbb1: TComboBox;
    frxDBpoin: TfrxDBDataset;
    frxReport1: TfrxReport;
    Label5: TLabel;
    cbb2: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure awal;
    procedure editenable;
    procedure editbersih;
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  id : string;

implementation

{$R *.dfm}

procedure TForm4.awal;
begin
editbersih;

edit1.Enabled:= false;
edit2.Enabled:= false;
cbb1.Enabled:= false;
cbb2.Enabled:= false;

button1.Enabled:= False;
button2.Enabled:= False;
button3.Enabled:= False;
button4.Enabled:= False;
button5.Enabled:= False;
button6.Enabled:= True;
end;

procedure TForm4.editbersih;
begin
Edit1.Clear;
Edit2.Clear;
cbb1.text:= '';
cbb2.text:= '';
end;

procedure TForm4.editenable;
begin
edit1.Enabled:= True;
edit2.Enabled:= True;
cbb1.Enabled:= True;
cbb2.Enabled:= True;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
if (Edit1.Text= '')or (Edit2.Text ='')or(cbb1.Text= '')or (cbb2.Text= '')then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (zqry1.Locate('nama_poin',Edit1.Text,[])) and (zqry1.Locate('bobot',Edit2.Text,[])) then
begin
ShowMessage('DATA POIN SUDAH DIGUNAKAN');
awal;
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into tabel_poin values (null,"'+Edit1.Text+'","'+Edit2.Text+'","'+cbb1.Text+'","'+cbb2.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_poin');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
awal;

end;
end;

procedure TForm4.Button6Click(Sender: TObject);
begin
editbersih;

Button1.Enabled:= True;
Button2.Enabled:= False;
Button3.Enabled:= False;
Button4.Enabled:= True;
Button5.Enabled:= True;
Button6.Enabled:= False;

editenable;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
if (Edit1.Text= '')or (Edit2.Text ='')or(cbb1.Text= '')or (cbb2.Text= '')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (Edit1.Text = zqry1.Fields[1].AsString) and (Edit2.Text = zqry1.Fields[2].AsString) and (cbb1.Text = zqry1.Fields[3].AsString) and (cbb2.Text = zqry1.Fields[4].AsString)then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
awal;
end else
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id_wali').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update tabel_poin set nama_poin= "'+Edit1.Text+'",bobot="'+Edit2.Text+'",jenis="'+cbb1.Text+'",status="'+cbb2.Text+'" where id_wali="'+id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_poin');
zqry1.Open;
awal;
end;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id_poin').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_poin where id_poin="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_poin');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
awal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
awal;
end;
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
awal;
end;

procedure TForm4.Button5Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
