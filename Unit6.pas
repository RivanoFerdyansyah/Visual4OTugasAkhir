unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    cbb1: TComboBox;
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
    frxDBsiswa: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure FormShow(Sender: TObject);
    procedure awal;
    procedure editbersih;
    procedure editenable;
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  id : string;

implementation

{$R *.dfm}

procedure TForm6.awal;
begin
editbersih;

edit1.Enabled:= false;
edit2.Enabled:= false;
edit3.Enabled:= false;
cbb1.Enabled:= false;

button1.Enabled:= False;
button2.Enabled:= False;
button3.Enabled:= False;
button4.Enabled:= False;
button5.Enabled:= False;
button6.Enabled:= True;
end;

procedure TForm6.editbersih;
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
cbb1.text:= '';
end;

procedure TForm6.editenable;
begin
edit1.Enabled:= True;
edit2.Enabled:= True;
edit3.Enabled:= True;
cbb1.Enabled:= True;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm6.Button6Click(Sender: TObject);
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

procedure TForm6.Button1Click(Sender: TObject);
begin
if (Edit1.Text= '')or (Edit2.Text ='')or(Edit3.Text= '')or (cbb1.Text ='')then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (zqry1.Locate('username',Edit1.Text,[])) and (zqry1.Locate('password',Edit2.Text,[])) then
begin
ShowMessage('DATA USER SUDAH DIGUNAKAN');
awal;
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into tabel_user values (null,"'+Edit1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+cbb1.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_user');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
awal;

end;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
if (Edit1.Text= '')or (Edit2.Text ='')or (Edit3.Text= '')or (cbb1.Text ='') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (Edit1.Text = zqry1.Fields[1].AsString) and (Edit2.Text = zqry1.Fields[2].AsString) and (Edit3.Text = zqry1.Fields[3].AsString) and (cbb1.Text = zqry1.Fields[4].AsString)then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
awal;
end else
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id_user').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update tabel_user set username= "'+Edit1.Text+'",password="'+Edit2.Text+'",level="'+Edit3.Text+'",status="'+cbb1.Text+'" where id_user="'+id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_user');
zqry1.Open;
awal;
end;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id_user').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_user where id_user="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_user');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
awal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
awal;
end;
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
awal;
end;

procedure TForm6.Button5Click(Sender: TObject);
begin
frxReport1.showreport();
end;

procedure TForm6.dbgrd1CellClick(Column: TColumn);
begin
editenable;
Button1.Enabled:= False;
Button2.Enabled:= True;
Button3.Enabled:= True;
Button4.Enabled:= True;
Button5.Enabled:= True;
Button6.Enabled:= False;
id:=zqry1.Fields[0].AsString;
Edit1.Text:= zqry1.FieldList[1].AsString;
Edit2.Text:= zqry1.FieldList[2].AsString;
Edit3.Text:= zqry1.FieldList[3].AsString;
cbb1.Text:= zqry1.FieldList[4].AsString;
end;

end.
