unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    Edit1: TEdit;
    ADOQuery1: TADOQuery;
    DBEdit7: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    ADOQuery1Id: TAutoIncField;
    ADOQuery1MusteriId: TIntegerField;
    ADOQuery1CihazId: TIntegerField;
    ADOQuery1ServiseGeldigiTarih: TDateTimeField;
    ADOQuery1TahminiTeslimTarihi: TDateTimeField;
    ADOQuery1CihazSorunu: TWideStringField;
    ADOQuery1Aciklama: TWideStringField;
    ADOQuery1Ucret: TBCDField;
    ADOQuery1TakipNo: TWideStringField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    ADOQuery1CihazDurum: TWideStringField;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
   ADOQUERY1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('select * from ServisBilgileri where TakipNo = :TakipNo');

   ADOQuery1.Parameters.ParamByName('TakipNo').Value := trim(edit1.Text);

   ADOQuery1.Open;

   if ADOQuery1.RecordCount > 0 then
 begin
    ShowMessage('Kayýt bulundu!');
 end
  else
    begin
        ShowMessage('Böyle bir kayýt yok! Lütfen tekrar deneyin!');
        ModalResult :=mrNone;
    end;

end;

end.
