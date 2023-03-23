object Form3: TForm3
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Yeni Cihaz Ekle'
  ClientHeight = 460
  ClientWidth = 871
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 17
    Width = 97
    Height = 18
    Caption = 'Cihaz Seri No'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 45
    Width = 59
    Height = 18
    Caption = 'Model Id'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 552
    Top = 137
    Width = 206
    Height = 23
    Caption = 'Cihaz Marka Modeller'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 165
    Width = 417
    Height = 276
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Id'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CihazSeriNo'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ModelId'
        Width = 125
        Visible = True
      end>
  end
  object Button2: TButton
    Left = 40
    Top = 104
    Width = 87
    Height = 31
    Caption = 'Kaydet'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object DBGrid2: TDBGrid
    Left = 436
    Top = 166
    Width = 417
    Height = 276
    DataSource = DataSource2
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button3: TButton
    Left = 160
    Top = 104
    Width = 87
    Height = 31
    Caption = 'Kay'#305't Sil'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 192
    Top = 21
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit2: TEdit
    Left = 192
    Top = 52
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Button1: TButton
    Left = 336
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Sorgula'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button4: TButton
    Left = 285
    Top = 104
    Width = 87
    Height = 31
    Caption = 'D'#252'zenle'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\delphiproje\Tekn' +
      'ikServisTakip.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 512
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 496
    Top = 80
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Cihazlar')
    Left = 432
    Top = 80
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Modeller')
    Left = 584
    Top = 80
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 632
    Top = 80
  end
end
