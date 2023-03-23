object Form4: TForm4
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Yeni Servis Kay'#305't'
  ClientHeight = 484
  ClientWidth = 717
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
    Left = 27
    Top = 16
    Width = 67
    Height = 18
    Caption = 'M'#252#351'teri Id'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 27
    Top = 53
    Width = 56
    Height = 18
    Caption = 'Cihaz Id'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 347
    Top = 16
    Width = 132
    Height = 18
    Caption = 'Servise Kay'#305't Tarihi'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 347
    Top = 53
    Width = 142
    Height = 18
    Caption = 'Tahmini Teslim Tarihi'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 27
    Top = 101
    Width = 93
    Height = 18
    Caption = 'Cihaz Sorunu'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 27
    Top = 142
    Width = 64
    Height = 18
    Caption = 'A'#231#305'klama'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 347
    Top = 101
    Width = 37
    Height = 18
    Caption = #220'cret'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 347
    Top = 142
    Width = 61
    Height = 18
    Caption = 'Takip No'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 27
    Top = 187
    Width = 98
    Height = 18
    Caption = 'Cihaz Durumu'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 238
    Width = 689
    Height = 228
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
        Width = 19
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MusteriId'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CihazId'
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ServiseGeldigiTarih'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TahminiTeslimTarihi'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CihazSorunu'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Aciklama'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ucret'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TakipNo'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CihazDurum'
        Width = 57
        Visible = True
      end>
  end
  object Button2: TButton
    Left = 331
    Top = 187
    Width = 107
    Height = 33
    Caption = 'Kaydet'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 460
    Top = 187
    Width = 107
    Height = 33
    Caption = 'Kay'#305't Sil'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 184
    Top = 15
    Width = 129
    Height = 21
    TabOrder = 3
  end
  object Edit2: TEdit
    Left = 184
    Top = 54
    Width = 129
    Height = 21
    TabOrder = 4
  end
  object Edit3: TEdit
    Left = 544
    Top = 15
    Width = 129
    Height = 21
    TabOrder = 5
  end
  object Edit4: TEdit
    Left = 544
    Top = 54
    Width = 129
    Height = 21
    TabOrder = 6
  end
  object Edit5: TEdit
    Left = 184
    Top = 102
    Width = 129
    Height = 21
    TabOrder = 7
  end
  object Edit6: TEdit
    Left = 184
    Top = 143
    Width = 129
    Height = 21
    TabOrder = 8
  end
  object Edit7: TEdit
    Left = 544
    Top = 102
    Width = 129
    Height = 21
    TabOrder = 9
  end
  object Edit8: TEdit
    Left = 544
    Top = 143
    Width = 129
    Height = 21
    TabOrder = 10
  end
  object ComboBox1: TComboBox
    Left = 184
    Top = 188
    Width = 129
    Height = 21
    TabOrder = 11
    Text = 'Bir Durum Se'#231'iniz...'
    Items.Strings = (
      'Onar'#305'ld'#305
      'Onar'#305'l'#305'yor'
      'Par'#231'a Bekleniyor')
  end
  object Button1: TButton
    Left = 590
    Top = 187
    Width = 107
    Height = 34
    Caption = 'D'#252'zenle'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\delphiproje\Tekn' +
      'ikServisTakip.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 416
    Top = 88
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from ServisBilgileri')
    Left = 496
    Top = 88
    object ADOQuery1Id: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object ADOQuery1MusteriId: TIntegerField
      FieldName = 'MusteriId'
    end
    object ADOQuery1CihazId: TIntegerField
      FieldName = 'CihazId'
    end
    object ADOQuery1ServiseGeldigiTarih: TDateTimeField
      FieldName = 'ServiseGeldigiTarih'
    end
    object ADOQuery1TahminiTeslimTarihi: TDateTimeField
      FieldName = 'TahminiTeslimTarihi'
    end
    object ADOQuery1CihazSorunu: TWideStringField
      FieldName = 'CihazSorunu'
      Size = 255
    end
    object ADOQuery1Aciklama: TWideStringField
      FieldName = 'Aciklama'
      Size = 255
    end
    object ADOQuery1Ucret: TBCDField
      FieldName = 'Ucret'
      Precision = 19
    end
    object ADOQuery1TakipNo: TWideStringField
      FieldName = 'TakipNo'
      Size = 255
    end
    object ADOQuery1CihazDurum: TWideStringField
      FieldName = 'CihazDurum'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 448
    Top = 136
  end
end
