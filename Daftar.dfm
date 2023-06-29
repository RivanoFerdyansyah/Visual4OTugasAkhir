object Form11: TForm11
  Left = 665
  Top = 180
  Width = 544
  Height = 392
  Caption = 'Form Daftar'
  Color = clInfoBk
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 216
    Top = 24
    Width = 109
    Height = 33
    Caption = 'DAFTAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 144
    Top = 80
    Width = 82
    Height = 19
    Caption = 'USERNAME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 144
    Top = 120
    Width = 85
    Height = 19
    Caption = 'PASSWORD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 144
    Top = 160
    Width = 44
    Height = 19
    Caption = 'LEVEL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 144
    Top = 200
    Width = 60
    Height = 19
    Caption = 'STATUS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 248
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 248
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 144
    Top = 248
    Width = 97
    Height = 41
    Caption = 'DAFTAR'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 384
    Top = 248
    Width = 129
    Height = 41
    Caption = 'KEMBALI KE LOGIN'
    TabOrder = 3
    OnClick = Button2Click
  end
  object cbb1: TComboBox
    Left = 248
    Top = 160
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Items.Strings = (
      'Admin'
      'User')
  end
  object cbb2: TComboBox
    Left = 248
    Top = 200
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'Ortu'
      'Siswa'
      'Wali')
  end
  object Button3: TButton
    Left = 264
    Top = 248
    Width = 97
    Height = 41
    Caption = 'BATAL'
    TabOrder = 6
    OnClick = Button3Click
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Properties.Strings = (
      'controls_cp=GET_ACP')
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'visual2'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'G:\Kuliah\Visual 2 Semester 4\TugasAkhir\libmysql.dll'
    Left = 392
    Top = 24
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabel_user')
    Params = <>
    Left = 456
    Top = 24
  end
end
