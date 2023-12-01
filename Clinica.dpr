program Clinica;

uses
  Vcl.Forms,
  uClinica in 'uClinica.pas' {frmPrincipal},
  uCadPaciente in 'uCadPaciente.pas' {frmPaciente},
  uCadAgendamento in 'uCadAgendamento.pas' {frmAgendamento},
  dmClinica in 'dmClinica.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmPaciente, frmPaciente);
  Application.CreateForm(TfrmAgendamento, frmAgendamento);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
