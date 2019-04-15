object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 509
  ClientWidth = 681
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 681
    Height = 509
    Align = alClient
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 272
    Top = 88
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Pessoas1: TMenuItem
        Caption = 'Pessoas'
        OnClick = Pessoas1Click
      end
    end
    object Pesquisar1: TMenuItem
      Caption = 'Consultar'
      object Pessoas2: TMenuItem
        Caption = 'Pessoas'
        OnClick = Pessoas2Click
      end
    end
  end
end
