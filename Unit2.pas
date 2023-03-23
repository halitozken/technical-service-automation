unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus,
  Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, System.ImageList, Vcl.ImgList,
  Vcl.Imaging.pngimage;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit6, Unit3, Unit4, Unit7;

procedure TForm2.Button1Click(Sender: TObject);
begin
   Form6.ShowModal;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Form3.ShowModal;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
Form4.ShowModal;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
Form7.ShowModal;
end;

end.
