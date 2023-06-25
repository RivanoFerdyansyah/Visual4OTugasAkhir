unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, Grids,
  DBGrids;

type
  TForm3 = class(TForm)
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
    frxDBwali: TfrxDBDataset;
    Label4: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label9: TLabel;
    Edit7: TEdit;
    frxReport1: TfrxReport;
    procedure Button6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure awal;
    procedure editenable;
    procedure editbersih;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  id: String;

implementation

{$R *.dfm}

procedure TForm3.awal;
begin
editbersih;

Edit1.Enabled:= False;
Edit2.Enabled:= False;
Edit3.Enabled:= False;
Edit4.Enabled:= False;
Edit5.Enabled:= False;
Edit6.Enabled:= False;
Edit7.Enabled:= False;
cbb1.Enabled:= False;

Button1.Enabled:= False;
Button2.Enabled:= False;
Button3.Enabled:= False;
Button4.Enabled:= False;
Button5.Enabled:= True;
Button6.Enabled:= True;
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
Edit1.Enabled:= True;
Edit2.Enabled:= True;
Edit3.Enabled:= True;
Edit4.Enabled:= True;
Edit5.Enabled:= True;
Edit6.Enabled:= True;
Edit7.Enabled:= True;
cbb1.Enabled:= True;

Button1.Enabled:= True;
Button2.Enabled:= False;
Button3.Enabled:= False;
Button4.Enabled:= True;
Button5.Enabled:= True;
Button6.Enabled:= False;

editbersih;

end;

procedure TForm3.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm3.editenable;
begin
Edit1.Enabled:=True;
Edit2.Enabled:=True;
cbb1.Enabled:=True;
Edit3.Enabled:=True;
Edit4.Enabled:=True;
Edit5.Enabled:=True;
Edit6.Enabled:=True;
Edit7.Enabled:=True;

end;

procedure TForm3.editbersih;
begin
Edit1.Clear;
Edit2.Clear;
cbb1.text:='';
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
Edit7.Clear;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
if (Edit1.Text= '')or (Edit2.Text ='')or (Edit3.Text= '')or (Edit4.Text ='') or(cbb1.Text= '')or (Edit5.Text= '') or (Edit6.Text ='') or (Edit7.Text= '')then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (zqry1.Locate('nik',Edit1.Text,[])) and (zqry1.Locate('nama',Edit2.Text,[])) then
begin
ShowMessage('DATA WALI KELAS SUDAH DIGUNAKAN');
awal;
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into tabel_wali_kelas values (null,"'+Edit1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+Edit4.Text+'","'+cbb1.Text+'","'+Edit5.Text+'","'+Edit6.Text+'","'+Edit7.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_wali_kelas');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
awal;
end;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
if (Edit1.Text= '')or (Edit2.Text ='')or(cbb1.Text= '')or (Edit3.Text= '')or (Edit4.Text ='') or (Edit5.Text= '')or (Edit6.Text ='') or (Edit7.Text= '')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (Edit1.Text = zqry1.Fields[1].AsString) and (Edit2.Text = zqry1.Fields[2].AsString) and (cbb1.Text = zqry1.Fields[3].AsString) and (Edit3.Text = zqry1.Fields[4].AsString) and (Edit4.Text = zqry1.Fields[5].AsString) and (Edit5.Text = zqry1.Fields[6].AsString) and (Edit6.Text = zqry1.Fields[7].AsString)and (Edit7.Text = zqry1.Fields[8].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
awal;
end else
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id_wali').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update tabel_wali_kelas set nik= "'+Edit1.Text+'",nama="'+Edit2.Text+'",jenis_kelamin="'+cbb1.Text+'",pendidikan="'+Edit3.Text+'",telp="'+Edit4.Text+'",matpel="'+Edit5.Text+'",alamat="'+Edit6.Text+'",status="'+Edit7.Text+'" where id_wali="'+id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_wali_kelas');
zqry1.Open;
awal;
end;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id_wali').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_wali_kelas where id_wali="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_wali_kelas');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
awal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
awal;
end;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
awal;
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
editenable;
Button1.Enabled:= true;
Button2.Enabled:= False;
Button3.Enabled:= True;
Button4.Enabled:= True;
Button5.Enabled:= True;
id:=zqry1.Fields[0].AsString;
Edit1.Text:= zqry1.FieldList[1].AsString;
Edit2.Text:= zqry1.FieldList[2].AsString;
cbb1.Text:= zqry1.FieldList[3].AsString;
Edit3.Text:= zqry1.FieldList[4].AsString;
Edit4.Text:= zqry1.FieldList[5].AsString;
Edit5.Text:= zqry1.FieldList[6].AsString;
Edit6.Text:= zqry1.FieldList[7].AsString;
Edit7.Text:= zqry1.FieldList[8].AsString;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
