unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls,
  ComCtrls;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
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
    cbb2: TComboBox;
    cbb3: TComboBox;
    cbb4: TComboBox;
    zqry2: TZQuery;
    cbb5: TComboBox;
    Label6: TLabel;
    zqry3: TZQuery;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cbb6: TComboBox;
    dtp1: TDateTimePicker;
    Edit1: TEdit;
    zqry4: TZQuery;
    zqry5: TZQuery;
    cbb7: TComboBox;
    Label10: TLabel;
    zqry6: TZQuery;
    procedure awal;
    procedure editbersih;
    procedure editenable;
    procedure FormCreate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  id : string;

implementation

{$R *.dfm}

procedure TForm8.awal;
begin
editbersih;

cbb1.Enabled:= false;
cbb2.Enabled:= false;
cbb3.Enabled:= false;
cbb4.Enabled:= false;
cbb5.Enabled:= false;
dtp1.Enabled:= False;
edit1.Enabled:= false;
cbb6.Enabled:= false;
cbb7.Enabled:= false;

button1.Enabled:= False;
button2.Enabled:= False;
button3.Enabled:= False;
button4.Enabled:= False;
button5.Enabled:= False;
button6.Enabled:= True;
end;

procedure TForm8.editbersih;
begin
cbb1.text:= '';
cbb2.text:= '';
cbb3.text:= '';
cbb4.text:= '';
cbb5.text:= '';
cbb6.text:= '';
cbb7.text:= '';
Edit1.Clear;
end;

procedure TForm8.editenable;
begin
cbb1.Enabled:= True;
cbb2.Enabled:= True;
cbb3.Enabled:= True;
cbb4.Enabled:= True;
cbb5.Enabled:= True;
dtp1.Enabled:=True;
edit1.Enabled:= True;
cbb6.Enabled:= True;
cbb7.Enabled:= True;
end;

procedure TForm8.FormCreate(Sender: TObject);
begin
zqry2.First;
while not zqry2.Eof do
begin
  cbb1.items.add(zqry2.fieldbyname('id_siswa').asstring);
  zqry2.Next;
end;
zqry3.First;
while not zqry3.Eof do
begin
  cbb2.items.add(zqry3.fieldbyname('id_poin').asstring);
  zqry3.Next;
end;
zqry4.First;
while not zqry4.Eof do
begin
  cbb3.items.add(zqry4.fieldbyname('id_wali').asstring);
  zqry4.Next;
end;
zqry5.First;
while not zqry5.Eof do
begin
  cbb4.items.add(zqry5.fieldbyname('id_ortu').asstring);
  zqry5.Next;
end;
zqry6.First;
while not zqry6.Eof do
begin
  cbb5.items.add(zqry6.fieldbyname('id_kelas').asstring);
  zqry6.Next;
end;
end;

procedure TForm8.Button6Click(Sender: TObject);
begin
editbersih;

button1.Enabled:= True;
button2.Enabled:= False;
button3.Enabled:= True;
button4.Enabled:= True;
button5.Enabled:= True;
button6.Enabled:= False;

editenable;
end;

procedure TForm8.Button1Click(Sender: TObject);
begin
if (cbb1.Text= '')or (cbb2.Text= '') or (cbb3.Text= '')or (cbb4.Text= '') or (cbb5.Text= '') or (cbb6.Text= '')or (Edit1.Text ='') or (cbb7.Text ='') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into tabel_semester values (null,"'+cbb1.Text+'","'+cbb2.Text+'","'+cbb3.Text+'","'+cbb4.Text+'","'+cbb5.Text+'","'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'","'+cbb6.Text+'","'+Edit1.Text+'","'+cbb7.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_semester');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
awal;

end;
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
if (cbb1.Text= '')or (cbb2.Text= '') or (cbb3.Text= '') or(cbb4.Text= '') or(cbb5.Text= '') or (cbb6.Text= '')or (Edit1.Text ='') or (cbb7.Text ='')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (cbb1.Text = zqry1.Fields[1].AsString) and (cbb2.Text = zqry1.Fields[2].AsString)and (cbb3.Text = zqry1.Fields[3].AsString)and (cbb4.Text = zqry1.Fields[4].AsString)and (cbb5.Text = zqry1.Fields[5].AsString) and (cbb6.Text = zqry1.Fields[7].AsString) and (Edit1.Text = zqry1.Fields[8].AsString) and (cbb7.Text = zqry1.Fields[9].AsString)then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
awal;
end else
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id_semester').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update tabel_semester set id_siswa="'+cbb1.Text+'",id_poin="'+cbb2.Text+'",id_wali="'+cbb3.Text+'",id_ortu="'+cbb4.Text+'",id_kelas="'+cbb5.Text+'",tanggal= "'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'",semester="'+cbb6.Text+'",status="'+Edit1.Text+'",tingkat_kelas="'+cbb7.Text+'" where id_semester="'+id+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_semester');
zqry1.Open;
awal;
end;
end;

procedure TForm8.Button3Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id_semester').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_semester where id_semester="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_semester');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
awal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
awal;
end;
end;

procedure TForm8.Button4Click(Sender: TObject);
begin
awal;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm8.Button5Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

procedure TForm8.dbgrd1CellClick(Column: TColumn);
begin
editenable;
button1.Enabled:= True;
button2.Enabled:= False;
button3.Enabled:= True;
button4.Enabled:= True;
button5.Enabled:= True;
button6.Enabled:= True;
id:=zqry1.Fields[0].AsString;
cbb1.Text:= zqry1.FieldList[1].AsString;
cbb2.Text:= zqry1.FieldList[2].AsString;
cbb3.Text:= zqry1.FieldList[3].AsString;
cbb4.Text:= zqry1.FieldList[4].AsString;
cbb5.Text:= zqry1.FieldList[5].AsString;
dtp1.Date:=Form8.zqry1.Fields[6].AsDateTime;
cbb6.Text:= zqry1.FieldList[7].AsString;
Edit1.Text:= zqry1.FieldList[8].AsString;
cbb7.Text:= zqry1.FieldList[9].AsString;
end;

end.
