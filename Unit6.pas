unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button6: TButton;
    Label5: TLabel;
    Button7: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    Button2: TButton;
    ADOQuery1Id: TAutoIncField;
    ADOQuery1TCKimlik: TIntegerField;
    ADOQuery1Ad: TWideStringField;
    ADOQuery1Soyad: TWideStringField;
    ADOQuery1Telefon: TWideStringField;
    ADOQuery1Eposta: TWideStringField;
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
//  Adotable1.Post;

   ADOQUERY1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('INSERT INTO Musteriler (TCKimlik, Ad, Soyad, Telefon, Eposta)');
   ADOQuery1.SQL.Add('VALUES (:TCKimlik, :Ad, :Soyad, :Telefon, :Eposta)');
   ADOQuery1.Parameters.ParamByName('TCKimlik').Value := Edit1.Text;
   ADOQuery1.Parameters.ParamByName('Ad').Value := Edit2.Text;
   ADOQuery1.Parameters.ParamByName('Soyad').Value := Edit3.Text;
   ADOQuery1.Parameters.ParamByName('Telefon').Value := Edit4.Text;
   ADOQuery1.Parameters.ParamByName('Eposta').Value := Edit5.Text;
   ADOQuery1.ExecSQL;

   ADOQuery1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('SELECT * FROM Musteriler');
   ADOQuery1.Open;


end;



procedure TForm6.Button2Click(Sender: TObject);
begin
// 'UPDATE barang SET id:=i, name:=nam, stock:=st where id=:i

   ADOQUERY1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('UPDATE Musteriler SET Ad := Ad, Soyad := Soyad, Telefon := Telefon, Eposta := Eposta WHERE TCKimlik =: TCKimlik');
   ADOQuery1.Parameters.ParamByName('TCKimlik').Value := Edit1.Text;
   ADOQuery1.Parameters.ParamByName('Ad').Value := Edit2.Text;
   ADOQuery1.Parameters.ParamByName('Soyad').Value := Edit3.Text;
   ADOQuery1.Parameters.ParamByName('Telefon').Value := Edit4.Text;
   ADOQuery1.Parameters.ParamByName('Eposta').Value := Edit5.Text;
   ADOQuery1.ExecSQL;

   ADOQuery1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('SELECT * FROM Musteriler');
   ADOQuery1.Open;

end;

procedure TForm6.Button6Click(Sender: TObject);
begin
   ADOQUERY1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('DELETE * FROM Musteriler WHERE TCKimlik = :TCKimlik');
   ADOQuery1.Parameters.ParamByName('TCKimlik').Value := Edit1.Text;
   ADOQuery1.ExecSQL;

   ADOQuery1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('SELECT * FROM Musteriler');
   ADOQuery1.Open;
   DBGrid1.Refresh;
end;

procedure TForm6.Button7Click(Sender: TObject);
begin
   ADOQUERY1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('select * from Musteriler where TCKimlik = :TCKimlik');

   ADOQuery1.Parameters.ParamByName('TCKimlik').Value := trim(edit1.Text);

   ADOQuery1.Open;

if ADOQuery1.RecordCount > 0 then
 begin
    ShowMessage('Müþteri Bulundu!');
 end
  else
    begin
        ShowMessage('Bu Müþteri Kayýtlý Deðil!');
        ModalResult :=mrNone;
    end;
end;

end.
