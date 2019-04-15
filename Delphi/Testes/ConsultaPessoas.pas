unit ConsultaPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFrmConsulta = class(TForm)
    SqlPessoas: TADODataSet;
    DTSPessoas: TDataSource;
    Button1: TButton;
    Button2: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Button3: TButton;
    SqlPessoasidPessoa: TAutoIncField;
    SqlPessoasNome: TStringField;
    SqlPessoasProfiss�o: TStringField;
    SqlPessoasCidade: TStringField;
    SqlPessoasUF: TStringField;
    SqlPessoasEmail: TStringField;
    SqlPessoasObservacoes: TMemoField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsulta: TFrmConsulta;

implementation

{$R *.dfm}

uses DModule;

procedure TFrmConsulta.Button1Click(Sender: TObject);
begin
    SqlPessoas.edit;
end;

procedure TFrmConsulta.Button2Click(Sender: TObject);
begin
//    SqlPessoas.Close;
//
//     SqlPessoas.SQL.Clear;
//
//    SqlPessoas.SQL.Add('Delete * from tabPessoas WHERE id = 1');
//
//     SqlPessoas.execsql;
end;

procedure TFrmConsulta.Button3Click(Sender: TObject);
begin
   DM.QNome.Delete;

   ShowMessage('Concluido');
end;

procedure TFrmConsulta.Edit1Change(Sender: TObject);
begin
  dm.Qnome. close;
  DM.QNome.Parameters.ParamByName('pnome').value := Edit1.Text + '%';
  DM.QNome.open;
end;

procedure TFrmConsulta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     SqlPessoas.close;
     Action:=caFree;
     FrmConsulta:=nil;
end;

procedure TFrmConsulta.FormShow(Sender: TObject);
begin
     SqlPessoas.Open;
end;

end.
