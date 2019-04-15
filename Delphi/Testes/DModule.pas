unit DModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDM = class(TDataModule)
    BDDelphi: TADOConnection;
    QNome: TADOQuery;
    QNomeidPessoa: TAutoIncField;
    QNomeNome: TStringField;
    QNomeProfiss�o: TStringField;
    QNomeCidade: TStringField;
    QNomeUF: TStringField;
    QNomeEmail: TStringField;
    QNomeObservacoes: TMemoField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
