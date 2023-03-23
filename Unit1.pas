unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, System.ImageList, Vcl.ImgList;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOQuery1KullaniciAdi: TWideStringField;
    ADOQuery1Sifre: TWideStringField;
    Label3: TLabel;
    Button2: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit5;

procedure TForm1.Button1Click(Sender: TObject);
begin

   ADOQUERY1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('select KullaniciAdi, Sifre from Adminler where KullaniciAdi = :KullaniciAdi and Sifre = :Sifre');

   ADOQuery1.Parameters.ParamByName('KullaniciAdi').Value := trim(edit1.Text);
   ADOQuery1.Parameters.ParamByName('Sifre').Value := trim(edit2.Text);
   ADOQuery1.Open;

if ADOQuery1.RecordCount > 0 then
 begin
    ShowMessage('Giriþ Baþarýlý!');
    Form2.ShowModal;
    Form1.Close;
 end
  else
    begin
        ShowMessage('Kullanýcý Adý veya Þifre Yanlýþ!');
        ModalResult :=mrNone;
    end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form5.ShowModal;
end;



end.
