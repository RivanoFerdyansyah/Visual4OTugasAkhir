unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    cbb1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    dbgrd1: TDBGrid;
    Button6: TButton;
    cbb2: TComboBox;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxDBsiswa: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure editbersih;
    procedure editenable;
    procedure awal;
    procedure FormShow(Sender: TObject);
    procedure Button6Click(Sender: TObject);
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
  Form5: TForm5;
  id : string;

implementation

{$R *.dfm}

procedure TForm5.awal;
begin
editbersih;

edit1.Enabled:= false;
edit2.Enabled:= false;
edit3.Enabled:= false;
edit4.Enabled:= false;
edit5.Enabled:= false;
edit6.Enabled:= false;
cbb1.Enabled:= false;
edit7.Enabled:= false;
cbb2.Enabled:= false;

button1.Enabled:= False;
button2.Enabled:= False;
button3.Enabled:= False;
button4.Enabled:= False;
button5.Enabled:= False;
button6.Enabled:= True;
end;

procedure TForm5.editbersih;
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
cbb1.text:= '';
Edit7.Clear;
cbb2.text:= '';
end;

procedure TForm5.editenable;
begin
edit1.Enabled:= True;
edit2.Enabled:= True;
edit3.Enabled:= True;
edit4.Enabled:= True;
edit5.Enabled:= True;
edit6.Enabled:= True;
cbb1.Enabled:= True;
edit7.Enabled:= True;
cbb2.Enabled:= True;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm5.Button6Click(Sender: TObject);
begin
editbersih;

Button1.Enabled:= True;
Button2.Enabled:= True;
Button3.Enabled:= False;
Button4.Enabled:= True;
Button5.Enabled:= True;
Button6.Enabled:= False;

editenable;
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
if (Edit1.Text= '')or (Edit2.Text ='')or(Edit3.Text= '')or (Edit4.Text= '')or (Edit5.Text ='') or (Edit6.Text= '')or (cbb1.Text ='') or (Edit7.Text ='') or (cbb2.Text ='')then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (zqry1.Locate('nik',Edit1.Text,[])) and (zqry1.Locate('nama',Edit2.Text,[])) and (zqry1.Locate('pendidikan',Edit3.Text,[])) and (zqry1.Locate('pekerjaan',Edit4.Text,[])) and (zqry1.Locate('telp',Edit5.Text,[])) and (zqry1.Locate('alamat',Edit6.Text,[])) and (zqry1.Locate('jenis_kelamin',cbb1.Text,[])) and (zqry1.Locate('agama',Edit7.Text,[])) and (zqry1.Locate('status',cbb2.Text,[])) then
begin
ShowMessage('DATA ORANG TUA SUDAH DIGUNAKAN');
awal;
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into tabel_ortu values (null,"'+Edit1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'","'+Edit6.Text+'","'+cbb1.Text+'","'+Edit7.Text+'","'+cbb2.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_ortu');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
awal;

end;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
if (Edit1.Text= '')or (Edit2.Text ='')or(Edit3.Text= '')or (Edit4.Text= '')or (Edit5.Text ='') or (Edit6.Text= '')or (cbb1.Text ='') or (Edit7.Text ='') or (cbb2.Text ='')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (Edit1.Text = zqry1.Fields[1].AsString) and (Edit2.Text = zqry1.Fields[2].AsString) and (Edit3.Text = zqry1.Fields[3].AsString) and (Edit4.Text = zqry1.Fields[4].AsString) and (Edit5.Text = zqry1.Fields[5].AsString) and (Edit6.Text = zqry1.Fields[6].AsString) and (cbb1.Text = zqry1.Fields[7].AsString)and (Edit7.Text = zqry1.Fields[8].AsString) and (cbb2.Text = zqry1.Fields[8].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
awal;
end else
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id_ortu').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update tabel_ortu set nik= "'+Edit1.Text+'",nama="'+Edit2.Text+'",pendidikan="'+Edit3.Text+'",pekerjaan="'+Edit4.Text+'",telp="'+Edit5.Text+'",alamat="'+Edit6.Text+'",jenis_kelamin="'+cbb1.Text+'",agama="'+Edit7.Text+'",status="'+cbb2.Text+'" where id_ortu="'+id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_ortu');
zqry1.Open;
awal;
end;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id_ortu').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_ortu where id_ortu="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_ortu');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
awal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
awal;
end;
end;

procedure TForm5.Button4Click(Sender: TObject);
begin
awal;
end;

procedure TForm5.dbgrd1CellClick(Column: TColumn);
begin
editenable;
Button1.Enabled:= True;
Button2.Enabled:= True;
Button3.Enabled:= True;
Button4.Enabled:= True;
Button5.Enabled:= True;
Button6.Enabled:= False;
id:=zqry1.Fields[0].AsString;
Edit1.Text:= zqry1.FieldList[1].AsString;
Edit2.Text:= zqry1.FieldList[2].AsString;
Edit3.Text:= zqry1.FieldList[3].AsString;
Edit4.Text:= zqry1.FieldList[4].AsString;
Edit5.Text:= zqry1.FieldList[5].AsString;
Edit6.Text:= zqry1.FieldList[6].AsString;
cbb1.Text:= zqry1.FieldList[7].AsString;
Edit7.Text:= zqry1.FieldList[8].AsString;
cbb2.Text:= zqry1.FieldList[9].AsString;
end;

procedure TForm5.Button5Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
