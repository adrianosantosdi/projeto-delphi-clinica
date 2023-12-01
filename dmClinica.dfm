object DM: TDM
  OldCreateOrder = False
  Height = 453
  Width = 753
  object FDConn: TFDConnection
    Params.Strings = (
      'Database=dbclinica'
      'User_Name=root'
      'Password=p@ssw0rd'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 48
  end
  object tblPaciente: TFDTable
    Active = True
    AfterInsert = tblPacienteAfterInsert
    IndexFieldNames = 'id'
    Connection = FDConn
    UpdateOptions.UpdateTableName = 'dbclinica.paciente'
    TableName = 'dbclinica.paciente'
    Left = 64
    Top = 128
    object tblPacienteid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object tblPacientenome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 80
    end
    object tblPacientecpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
      EditMask = '###.###.###-##;1;_'
      Size = 14
    end
    object tblPacientecelular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'celular'
      Origin = 'celular'
      EditMask = '(##)#####-####;1;_'
      Size = 16
    end
    object tblPacientedata_cadastro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
    end
  end
  object tblAgendamento: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConn
    UpdateOptions.UpdateTableName = 'dbclinica.agendamento'
    TableName = 'dbclinica.agendamento'
    Left = 64
    Top = 200
    object tblAgendamentoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object tblAgendamentoid_paciente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_paciente'
      Origin = 'id_paciente'
    end
    object tblAgendamentodata: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data'
      Origin = '`data`'
    end
    object tblAgendamentohora: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hora'
      Origin = 'hora'
      Size = 8
    end
    object tblAgendamentoespecialidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'especialidade'
      Origin = 'especialidade'
      Size = 25
    end
    object tblAgendamentomedico: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'medico'
      Origin = 'medico'
      Size = 30
    end
  end
  object dsPaciente: TDataSource
    DataSet = tblPaciente
    Left = 136
    Top = 128
  end
  object dsAgendamento: TDataSource
    DataSet = tblAgendamento
    Left = 144
    Top = 200
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\Adriano Santos\Documents\Projetos Delphi\Sistema Clinic' +
      'a\libmySQL.dll'
    Left = 656
    Top = 32
  end
end
