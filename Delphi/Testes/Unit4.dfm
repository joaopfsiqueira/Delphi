object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 32
    Width = 107
    Height = 13
    Caption = 'Descri'#231#227'o do processo'
  end
  object Label2: TLabel
    Left = 374
    Top = 32
    Width = 38
    Height = 13
    Caption = 'Tribunal'
  end
  object Label3: TLabel
    Left = 400
    Top = 141
    Width = 44
    Height = 13
    Caption = 'Inst'#226'ncia'
  end
  object Label4: TLabel
    Left = 56
    Top = 141
    Width = 83
    Height = 13
    Caption = 'Numero Processo'
  end
  object DBComboBox1: TDBComboBox
    Left = 400
    Top = 160
    Width = 145
    Height = 21
    Items.Strings = (
      '1'#170' Inst'#226'ncia'
      '2'#170' Inst'#226'ncia'
      '3'#170' Inst'#226'ncia'
      '4'#170' Inst'#226'ncia')
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 56
    Top = 51
    Width = 201
    Height = 21
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 56
    Top = 160
    Width = 201
    Height = 21
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 374
    Top = 51
    Width = 219
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 192
    Top = 256
    Width = 169
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 4
  end
  object DataSource1: TDataSource
    Left = 584
    Top = 248
  end
  object ADODataSet1: TADODataSet
    Parameters = <>
    Left = 544
    Top = 248
  end
end
