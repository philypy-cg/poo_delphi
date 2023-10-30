unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, pessoa;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  {
    Abstra��o
    Encapsulamento
    Heran�a
    Poliformismo

  }

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Pessoa: TPessoa;
begin
  Pessoa:= TPessoa.Create;
  try
    pessoa.Nome := 'Seja Bem vindo ao Escritorio Fiorin Oliveira';
    pessoa.numero := '47 99186-1254';
    ShowMessage(pessoa.Nome + ' - ' + pessoa.numero);

  finally
    pessoa.Free;

  end;
end;


end.
