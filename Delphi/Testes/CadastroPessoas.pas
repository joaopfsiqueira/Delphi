unit CadastroPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    SqlPessoas: TADODataSet;
    DTSPessoas: TDataSource;
    SqlPessoasidPessoa: TAutoIncField;
    SqlPessoasCidade: TStringField;
    SqlPessoasUF: TStringField;
    SqlPessoasEmail: TStringField;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    SqlPessoasNome: TStringField;
    SqlPessoasProfiss�o: TStringField;
    SqlPessoasObservacoes: TMemoField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses DModule, Inicio;


procedure TForm2.Button1Click(Sender: TObject);
begin
    SqlPessoas.Post;
    ShowMessage('Cadastrada!');
    Close;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);

begin
     SqlPessoas.close;
     Action:=caFree;
     Form2 := nil;
  //   FreeAndNil(Form1.tbsCreate);
end;


procedure TForm2.FormShow(Sender: TObject);
begin
     SqlPessoas.Open;
     SqlPessoas.Insert;
end;

end.
