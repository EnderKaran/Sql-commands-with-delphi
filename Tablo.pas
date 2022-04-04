unit Tablo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, StdCtrls,
  cxButtons,selectkomutu,wherekomutu,orderbykomutu,inkomutu,sqlcount;

type
  TForm1 = class(TForm)
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton7: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.cxButton1Click(Sender: TObject);
begin
    Form2.Show;
end;

procedure TForm1.cxButton2Click(Sender: TObject);
begin
   Form3.Show;
end;

procedure TForm1.cxButton3Click(Sender: TObject);
begin
   Form4.Show;
end;

procedure TForm1.cxButton4Click(Sender: TObject);
begin
    Form5.Show;
end;

procedure TForm1.cxButton5Click(Sender: TObject);
begin
    Form6.Show;
end;

procedure TForm1.cxButton7Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
