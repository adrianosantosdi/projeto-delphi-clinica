unit uCadPaciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmPaciente = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    dbeID: TDBEdit;
    dbeNomeCompleto: TDBEdit;
    dbeCelular: TDBEdit;
    dbeDataCadastro: TDBEdit;
    dbeCpf: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label7: TLabel;
    edtPesquisa: TEdit;
    procedure edtPesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPaciente: TfrmPaciente;

implementation

{$R *.dfm}

uses dmClinica, uCadAgendamento, uClinica;

procedure TfrmPaciente.edtPesquisaChange(Sender: TObject);
begin
  DM.tblPaciente.Locate('nome', edtPesquisa.Text, [loPartialKey])
end;

end.
