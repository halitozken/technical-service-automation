unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    Button2: TButton;
    Button3: TButton;
    Label8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1Id: TAutoIncField;
    ADOQuery1MusteriId: TIntegerField;
    ADOQuery1CihazId: TIntegerField;
    ADOQuery1ServiseGeldigiTarih: TDateTimeField;
    ADOQuery1TahminiTeslimTarihi: TDateTimeField;
    ADOQuery1CihazSorunu: TWideStringField;
    ADOQuery1Aciklama: TWideStringField;
    ADOQuery1Ucret: TBCDField;
    ADOQuery1TakipNo: TWideStringField;
    Label9: TLabel;
    ComboBox1: TComboBox;
    ADOQuery1CihazDurum: TWideStringField;
    Button1: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}


procedure TForm4.Button2Click(Sender: TObject);
begin
//ShowMessage('Baþarýyla kaydedildi!');
//Adotable1.post;

   ADOQUERY1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('INSERT INTO ServisBilgileri (MusteriId, CihazId, ServiseGeldigiTarih, TahminiTeslimTarihi, CihazSorunu, Aciklama, CihazDurum, Ucret, TakipNo)');
   ADOQuery1.SQL.Add('VALUES (:MusteriId, :CihazId, :ServiseGeldigiTarih, :TahminiTeslimTarihi, :CihazSorunu, :Aciklama, :CihazDurum, :Ucret, :TakipNo)');

   ADOQuery1.Parameters.ParamByName('MusteriId').Value := Edit1.Text;
   ADOQuery1.Parameters.ParamByName('CihazId').Value := Edit2.Text;
   ADOQuery1.Parameters.ParamByName('ServiseGeldigiTarih').Value := Edit3.Text;
   ADOQuery1.Parameters.ParamByName('TahminiTeslimTarihi').Value := Edit4.Text;
   ADOQuery1.Parameters.ParamByName('CihazSorunu').Value := Edit5.Text;
   ADOQuery1.Parameters.ParamByName('Aciklama').Value := Edit6.Text;
   ADOQUery1.Parameters.ParamByName('CihazDurum').Value := ComboBox1.Text;
   ADOQuery1.Parameters.ParamByName('Ucret').Value := Edit7.Text;
   ADOQuery1.Parameters.ParamByName('TakipNo').Value := Edit8.Text;
   ADOQuery1.ExecSQL;

   ADOQuery1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('SELECT * FROM ServisBilgileri');
   ADOQuery1.Open;
end;




procedure TForm4.Button3Click(Sender: TObject);
begin
    ADOQUERY1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('DELETE * FROM ServisBilgileri WHERE MusteriId = :MusteriId');
   ADOQuery1.Parameters.ParamByName('MusteriId').Value := Edit1.Text;
   ADOQuery1.ExecSQL;

   ADOQuery1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('SELECT * FROM ServisBilgileri');
   ADOQuery1.Open;
   DBGrid1.Refresh;
end;

end.
