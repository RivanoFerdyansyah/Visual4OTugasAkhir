unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TForm9 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    mm1: TMainMenu;
    MENU1: TMenuItem;
    SISWA1: TMenuItem;
    WALIKELAS1: TMenuItem;
    USER1: TMenuItem;
    SEMESTER1: TMenuItem;
    POIN1: TMenuItem;
    ORANGTUA1: TMenuItem;
    KELAS1: TMenuItem;
    HUBUNGAN1: TMenuItem;
    Button9: TButton;
    EXIT1: TMenuItem;
    procedure SISWA1Click(Sender: TObject);
    procedure WALIKELAS1Click(Sender: TObject);
    procedure USER1Click(Sender: TObject);
    procedure SEMESTER1Click(Sender: TObject);
    procedure POIN1Click(Sender: TObject);
    procedure ORANGTUA1Click(Sender: TObject);
    procedure KELAS1Click(Sender: TObject);
    procedure HUBUNGAN1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure EXIT1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Unit1, Unit3, Unit6, Unit8, Unit4, Unit5, Unit2, Unit7, Login;

{$R *.dfm}

procedure TForm9.SISWA1Click(Sender: TObject);
begin
form1.showmodal;
end;

procedure TForm9.WALIKELAS1Click(Sender: TObject);
begin
form3.showmodal;
end;

procedure TForm9.USER1Click(Sender: TObject);
begin
form6.showmodal;
end;

procedure TForm9.SEMESTER1Click(Sender: TObject);
begin
form8.showmodal;
end;

procedure TForm9.POIN1Click(Sender: TObject);
begin
form4.showmodal;
end;

procedure TForm9.ORANGTUA1Click(Sender: TObject);
begin
form5.showmodal;
end;

procedure TForm9.KELAS1Click(Sender: TObject);
begin
form2.showmodal;
end;

procedure TForm9.HUBUNGAN1Click(Sender: TObject);
begin
form7.showmodal;
end;

procedure TForm9.Button1Click(Sender: TObject);
begin
form1.showmodal;
end;

procedure TForm9.Button5Click(Sender: TObject);
begin
form4.showmodal;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
form3.showmodal;
end;

procedure TForm9.Button3Click(Sender: TObject);
begin
form6.showmodal;
end;

procedure TForm9.Button7Click(Sender: TObject);
begin
form2.showmodal;
end;

procedure TForm9.Button4Click(Sender: TObject);
begin
form8.showmodal;
end;

procedure TForm9.Button8Click(Sender: TObject);
begin
form10.showmodal;
end;

procedure TForm9.Button6Click(Sender: TObject);
begin
form5.showmodal;
end;

procedure TForm9.EXIT1Click(Sender: TObject);
begin
form10.showmodal;
end;

end.
