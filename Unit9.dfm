object Form9: TForm9
  Left = 743
  Top = 166
  Width = 578
  Height = 438
  Caption = 'Menu Utama'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 184
    Top = 24
    Width = 187
    Height = 33
    Caption = 'MENU UTAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 136
    Top = 80
    Width = 113
    Height = 41
    Caption = 'FORM SISWA'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 136
    Top = 136
    Width = 113
    Height = 41
    Caption = 'FORM WALI KELAS'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 136
    Top = 192
    Width = 113
    Height = 41
    Caption = 'FORM USER'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 136
    Top = 248
    Width = 113
    Height = 41
    Caption = 'FORM SEMESTER'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 296
    Top = 80
    Width = 113
    Height = 41
    Caption = 'FORM POIN'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 296
    Top = 136
    Width = 113
    Height = 41
    Caption = 'FORM ORANG TUA'
    TabOrder = 5
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 296
    Top = 192
    Width = 113
    Height = 41
    Caption = 'FORM KELAS'
    TabOrder = 6
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 296
    Top = 248
    Width = 113
    Height = 41
    Caption = 'FORM HUBUNGAN'
    TabOrder = 7
    OnClick = Button8Click
  end
  object mm1: TMainMenu
    Left = 24
    Top = 16
    object MENU1: TMenuItem
      Caption = 'MENU'
      object SISWA1: TMenuItem
        Caption = 'SISWA'
        OnClick = SISWA1Click
      end
      object WALIKELAS1: TMenuItem
        Caption = 'WALI KELAS'
        OnClick = WALIKELAS1Click
      end
      object USER1: TMenuItem
        Caption = 'USER'
        OnClick = USER1Click
      end
      object SEMESTER1: TMenuItem
        Caption = 'SEMESTER'
        OnClick = SEMESTER1Click
      end
      object POIN1: TMenuItem
        Caption = 'POIN'
        OnClick = POIN1Click
      end
      object ORANGTUA1: TMenuItem
        Caption = 'ORANG TUA'
        OnClick = ORANGTUA1Click
      end
      object KELAS1: TMenuItem
        Caption = 'KELAS'
        OnClick = KELAS1Click
      end
      object HUBUNGAN1: TMenuItem
        Caption = 'HUBUNGAN'
        OnClick = HUBUNGAN1Click
      end
    end
  end
end
