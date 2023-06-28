unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls;

type
  TForm7 = class(TForm)
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
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure awal;
    procedure editbersih;
    procedure editenable;
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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
  Form7: TForm7;
  id : string;

implementation

{$R *.dfm}

procedure TForm7.FormCreate(Sender: TObject);
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
  cbb2.items.add(zqry3.fieldbyname('id_ortu').asstring);
  zqry3.Next;
end;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm7.dbgrd1CellClick(Column: TColumn);
begin
editenable;
Button1.Enabled:= True;
Button2.Enabled:= True;
Button3.Enabled:= True;
Button4.Enabled:= True;
Button5.Enabled:= True;
Button6.Enabled:= False;
id:=zqry1.Fields[0].AsString;
cbb1.Text:= zqry1.FieldList[1].AsString;
cbb2.Text:= zqry1.FieldList[2].AsString;
cbb3.Text:= zqry1.FieldList[3].AsString;
cbb4.Text:= zqry1.FieldList[4].AsString;
cbb5.Text:= zqry1.FieldList[5].AsString;
end;

procedure TForm7.awal;
begin
editbersih;

cbb1.Enabled:= false;
cbb2.Enabled:= false;
cbb3.Enabled:= false;
cbb4.Enabled:= false;
cbb5.Enabled:= false;


Button1.Enabled:= false;
Button2.Enabled:= false;
Button3.Enabled:= false;
Button4.Enabled:= false;
Button5.Enabled:= True;
Button6.Enabled:= True;
end;

procedure TForm7.editbersih;
begin
cbb1.text:= '';
cbb2.text:= '';
cbb3.text:= '';
cbb4.text:= '';
cbb5.text:= '';
end;

procedure TForm7.editenable;
begin
cbb1.Enabled:= True;
cbb2.Enabled:= True;
cbb3.Enabled:= True;
cbb4.Enabled:= True;
cbb5.Enabled:= True;
end;

procedure TForm7.Button6Click(Sender: TObject);
begin
editbersih;

Button1.Enabled:= True;
Button2.Enabled:= False;
Button3.Enabled:= False;
Button4.Enabled:= False;
Button5.Enabled:= True;
Button6.Enabled:= False;

editenable;
end;

procedure TForm7.Button1Click(Sender: TObject);
begin
if (cbb1.Text= '')or (cbb2.Text= '') or (cbb3.Text= '')or (cbb4.Text ='') or (cbb5.Text ='') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into tabel_hubungan values (null,"'+cbb1.Text+'","'+cbb2.Text+'","'+cbb3.Text+'","'+cbb4.Text+'","'+cbb5.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_hubungan');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
awal;

end;
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
if (cbb1.Text= '')or (cbb2.Text= '') or (cbb3.Text= '')or (cbb4.Text ='') or (cbb5.Text ='')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (cbb1.Text = zqry1.Fields[1].AsString) and (cbb2.Text = zqry1.Fields[2].AsString) and (cbb3.Text = zqry1.Fields[3].AsString) and (cbb4.Text = zqry1.Fields[4].AsString) and (cbb5.Text = zqry1.Fields[5].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
awal;
end else
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id_hub').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update tabel_hubungan set id_siswa="'+cbb1.Text+'",id_ortu="'+cbb2.Text+'",status_hubungan= "'+cbb3.Text+'",keterangan="'+cbb4.Text+'" ,status_ortu="'+cbb5.Text+'" where id_hub="'+id+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_hubungan');
zqry1.Open;
awal;
end;
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id_hub').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_hubungan where id_hub="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_hubungan');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
awal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
awal;
end;
end;

procedure TForm7.Button4Click(Sender: TObject);
begin
awal;
end;

procedure TForm7.Button5Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
