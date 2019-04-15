object DM: TDM
  OldCreateOrder = False
  Height = 344
  Width = 431
  object BDDelphi: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLNCLI.1;Password=master;Persist Security Info=True;Us' +
      'er ID=sa;Initial Catalog=DELPHI;Data Source=Suporte2\DELPHI;Use ' +
      'Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Wor' +
      'kstation ID=SUPORTE2;Use Encryption for Data=False;Tag with colu' +
      'mn collation when possible=False;MARS Connection=False;DataTypeC' +
      'ompatibility=0;Trust Server Certificate=False'
    LoginPrompt = False
    Provider = 'SQLNCLI.1'
    Left = 360
    Top = 72
  end
  object QNome: TADOQuery
    Connection = BDDelphi
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pnome'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 80
        Value = Null
      end>
    SQL.Strings = (
      'Select * from TabPessoas'
      'where Nome like :pnome')
    Left = 352
    Top = 120
    object QNomeidPessoa: TAutoIncField
      FieldName = 'idPessoa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QNomeNome: TStringField
      FieldName = 'Nome'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object QNomeProfissão: TStringField
      FieldName = 'Profiss'#227'o'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object QNomeCidade: TStringField
      FieldName = 'Cidade'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object QNomeUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object QNomeEmail: TStringField
      FieldName = 'Email'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object QNomeObservacoes: TMemoField
      FieldName = 'Observacoes'
      BlobType = ftMemo
    end
  end
end
