program Delphi_avancado;

uses
  Vcl.Forms,
  unitPrincipal in '..\src\view\unitPrincipal.pas' {frmPrincipal},
  unitCronometro in '..\src\view\unitCronometro.pas' {frmCronometro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCronometro, frmCronometro);
  Application.Run;
end.
