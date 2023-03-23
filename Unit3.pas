unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Button2: TButton;
    DBGrid2: TDBGrid;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    Button1: TButton;
    Button4: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
   ADOQUERY1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('select * from Cihazlar where CihazSeriNo = :CihazSeriNo');

   ADOQuery1.Parameters.ParamByName('CihazSeriNo').Value := trim(edit1.Text);

   ADOQuery1.Open;

if ADOQuery1.RecordCount > 0 then
 begin
    ShowMessage('Cihaz Bulundu!');
 end
  else
    begin
        ShowMessage('Bu Cihaz Kayýtlý Deðil!');
        ModalResult :=mrNone;
    end;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
   ADOQUERY1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('INSERT INTO Cihazlar (CihazSeriNo, ModelId)');
   ADOQuery1.SQL.Add('VALUES (:CihazSeriNo, :ModelId)');
   ADOQuery1.Parameters.ParamByName('CihazSeriNo').Value := Edit1.Text;
   ADOQuery1.Parameters.ParamByName('ModelId').Value := Edit2.Text;
   ADOQuery1.ExecSQL;

   ADOQuery1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('SELECT * FROM Cihazlar');
   ADOQuery1.Open;



end;

procedure TForm3.Button3Click(Sender: TObject);
begin
//select * from ServisBilgileri where TakipNo = :TakipNo

   ADOQUERY1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('DELETE * FROM Cihazlar WHERE CihazSeriNo = :CihazSeriNo');
   ADOQuery1.Parameters.ParamByName('CihazSeriNo').Value := Edit1.Text;
   ADOQuery1.ExecSQL;

   ADOQuery1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('SELECT * FROM Cihazlar');
   ADOQuery1.Open;
   DBGrid1.Refresh;
end;

end.
