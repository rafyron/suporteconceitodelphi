unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Unit2, Unit3, ShellAPI;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
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

procedure TForm1.Button1Click(Sender: TObject);
begin
  TForm2.Create(Self).ShowModal;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  // Abre uma p�gina web no navegador padr�o
  ShellExecute(0, 'open', 'https://www.grupoconceitotecnologia.com.br/home', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  TForm3.Create(Self).ShowModal;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  // Exibe uma mensagem de confirma��o antes de fechar o programa
  if MessageDlg('Deseja realmente fechar o programa?', mtConfirmation, mbYesNo, 0) = mrYes then
    Close;
end;

end.

