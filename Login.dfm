object Form10: TForm10
  Left = 618
  Top = 209
  Width = 564
  Height = 400
  Caption = 'Form Login'
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 224
    Top = 24
    Width = 90
    Height = 33
    Caption = 'LOGIN'
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
    Top = 160
    Width = 97
    Height = 41
    Caption = 'LOGIN'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 272
    Top = 160
    Width = 97
    Height = 41
    Caption = 'EXIT'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 216
    Top = 216
    Width = 97
    Height = 41
    Caption = 'DAFTAR'
    TabOrder = 4
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
    Left = 72
    Top = 240
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabel_user')
    Params = <>
    Left = 136
    Top = 240
  end
end
