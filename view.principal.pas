unit view.principal;

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
    pessoa.Id := 1;
    pessoa.Nome := 'Philypy';
    pessoa.Tipo := 'F';
    pessoa.Email := 'phcg.dev@gmail.com';
    ShowMessage(pessoa.Id.ToString + ' - ' + pessoa.Nome + ' - ' + pessoa.Tipo + ' - ' + pessoa.Email);

  finally
    pessoa.Free;

  end;
end;


end.
