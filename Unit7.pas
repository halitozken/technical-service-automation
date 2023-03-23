unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Data.DB, Data.Win.ADODB;

type
  TForm7 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Button1: TButton;
    Image1: TImage;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOQuery1Id: TAutoIncField;
    ADOQuery1KullaniciAdi: TWideStringField;
    ADOQuery1Sifre: TWideStringField;
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}


procedure TForm7.Button1Click(Sender: TObject);
begin
   ADOQUERY1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('INSERT INTO Adminler (KullaniciAdi, Sifre)');
   ADOQuery1.SQL.Add('VALUES (:KullaniciAdi, :Sifre)');

   ADOQuery1.Parameters.ParamByName('KullaniciAdi').Value := Edit1.Text;
   ADOQuery1.Parameters.ParamByName('Sifre').Value := Edit2.Text;

   ADOQuery1.ExecSQL;

   ShowMessage('Yetkili hesabý oluþturuldu!');
end;

end.
