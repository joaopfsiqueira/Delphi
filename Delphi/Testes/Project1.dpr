program Project1;

uses
  Vcl.Forms,
  Inicio in 'Inicio.pas' {Form1},
  CadastroPessoas in 'CadastroPessoas.pas' {Form2},
  ConsultaPessoas in 'ConsultaPessoas.pas' {FrmConsulta},
  DModule in 'DModule.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
