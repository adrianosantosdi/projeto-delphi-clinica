object frmPaciente: TfrmPaciente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Pacientes'
  ClientHeight = 552
  ClientWidth = 791
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 24
    Top = 101
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label3: TLabel
    Left = 136
    Top = 101
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object Label4: TLabel
    Left = 24
    Top = 149
    Width = 75
    Height = 13
    Caption = 'Nome Completo'
  end
  object Label5: TLabel
    Left = 24
    Top = 197
    Width = 33
    Height = 13
    Caption = 'Celular'
  end
  object Label6: TLabel
    Left = 160
    Top = 197
    Width = 85
    Height = 13
    Caption = 'Data de Cadastro'
  end
  object Label7: TLabel
    Left = 377
    Top = 123
    Width = 72
    Height = 13
    Caption = 'Busca Paciente'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 791
    Height = 89
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 823
    object Label1: TLabel
      Left = 24
      Top = 28
      Width = 233
      Height = 25
      Caption = 'Cadastro de Pacientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 472
      Top = 26
      Width = 250
      Height = 37
      DataSource = DM.dsPaciente
      TabOrder = 0
    end
  end
  object dbeID: TDBEdit
    Left = 24
    Top = 120
    Width = 81
    Height = 21
    DataField = 'id'
    DataSource = DM.dsPaciente
    TabOrder = 1
  end
  object dbeNomeCompleto: TDBEdit
    Left = 24
    Top = 168
    Width = 297
    Height = 21
    DataField = 'nome'
    DataSource = DM.dsPaciente
    TabOrder = 3
  end
  object dbeCelular: TDBEdit
    Left = 24
    Top = 216
    Width = 121
    Height = 21
    DataField = 'celular'
    DataSource = DM.dsPaciente
    MaxLength = 14
    TabOrder = 4
  end
  object dbeDataCadastro: TDBEdit
    Left = 160
    Top = 216
    Width = 121
    Height = 21
    DataField = 'data_cadastro'
    DataSource = DM.dsPaciente
    ReadOnly = True
    TabOrder = 5
  end
  object dbeCpf: TDBEdit
    Left = 136
    Top = 120
    Width = 179
    Height = 21
    DataField = 'cpf'
    DataSource = DM.dsPaciente
    MaxLength = 14
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 377
    Top = 168
    Width = 345
    Height = 332
    DataSource = DM.dsPaciente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Pacientes Cadastrados'
        Visible = True
      end>
  end
  object edtPesquisa: TEdit
    Left = 377
    Top = 142
    Width = 345
    Height = 21
    TabOrder = 7
    OnChange = edtPesquisaChange
  end
end
