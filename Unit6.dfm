object Form6: TForm6
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Yeni M'#252#351'teri Kay'#305't'
  ClientHeight = 583
  ClientWidth = 729
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
    Left = 42
    Top = 69
    Width = 20
    Height = 18
    Caption = 'Ad'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 109
    Width = 45
    Height = 18
    Caption = 'Soyad'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 376
    Top = 68
    Width = 49
    Height = 18
    Caption = 'Telefon'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 376
    Top = 109
    Width = 65
    Height = 18
    Caption = 'E - Posta'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 42
    Top = 26
    Width = 92
    Height = 18
    Caption = 'TC Kimlik No'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 376
    Top = 165
    Width = 97
    Height = 36
    Caption = 'Kaydet'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button6: TButton
    Left = 489
    Top = 165
    Width = 97
    Height = 36
    Caption = 'Sil'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 361
    Top = 25
    Width = 97
    Height = 22
    Caption = 'Sorgula'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button7Click
  end
  object Edit1: TEdit
    Left = 176
    Top = 26
    Width = 162
    Height = 21
    TabOrder = 3
  end
  object Edit2: TEdit
    Left = 176
    Top = 69
    Width = 162
    Height = 21
    TabOrder = 4
  end
  object Edit3: TEdit
    Left = 176
    Top = 106
    Width = 162
    Height = 21
    TabOrder = 5
  end
  object Edit4: TEdit
    Left = 504
    Top = 69
    Width = 162
    Height = 21
    TabOrder = 6
  end
  object Edit5: TEdit
    Left = 504
    Top = 106
    Width = 162
    Height = 21
    TabOrder = 7
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 224
    Width = 689
    Height = 341
    DataSource = DataSource1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Id'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TCKimlik'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ad'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Soyad'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Telefon'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Eposta'
        Width = 105
        Visible = True
      end>
  end
  object Button2: TButton
    Left = 608
    Top = 165
    Width = 97
    Height = 36
    Caption = 'D'#252'zenle'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = Button2Click
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\delphiproje\Tekn' +
      'ikServisTakip.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 112
    Top = 148
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 288
    Top = 148
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Musteriler')
    Left = 200
    Top = 148
    object ADOQuery1Id: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object ADOQuery1TCKimlik: TIntegerField
      FieldName = 'TCKimlik'
    end
    object ADOQuery1Ad: TWideStringField
      FieldName = 'Ad'
      Size = 255
    end
    object ADOQuery1Soyad: TWideStringField
      FieldName = 'Soyad'
      Size = 255
    end
    object ADOQuery1Telefon: TWideStringField
      FieldName = 'Telefon'
      Size = 255
    end
    object ADOQuery1Eposta: TWideStringField
      FieldName = 'Eposta'
      Size = 255
    end
  end
end
