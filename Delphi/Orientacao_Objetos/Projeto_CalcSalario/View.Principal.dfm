object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Easy Sal'#225'rio 1.0'
  ClientHeight = 459
  ClientWidth = 305
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbFuncao: TLabel
    Left = 15
    Top = 13
    Width = 39
    Height = 13
    Caption = 'Fun'#231#227'o:'
  end
  object cbFuncao: TComboBox
    Left = 15
    Top = 32
    Width = 273
    Height = 21
    TabOrder = 0
    Text = 'Selecione uma fun'#231#227'o...'
    Items.Strings = (
      'Administrativo'
      'Vendedor'
      'Funcion'#225'rio')
  end
  object edtNome: TLabeledEdit
    Left = 15
    Top = 85
    Width = 145
    Height = 21
    EditLabel.Width = 31
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome:'
    TabOrder = 1
  end
  object edtSalario: TLabeledEdit
    Left = 166
    Top = 85
    Width = 122
    Height = 21
    EditLabel.Width = 36
    EditLabel.Height = 13
    EditLabel.Caption = 'Sal'#225'rio:'
    TabOrder = 2
  end
  object edtBonus: TLabeledEdit
    Left = 15
    Top = 133
    Width = 122
    Height = 21
    EditLabel.Width = 33
    EditLabel.Height = 13
    EditLabel.Caption = 'B'#244'nus:'
    TabOrder = 3
  end
  object btnCadastrar: TButton
    Left = 15
    Top = 166
    Width = 122
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 4
    OnClick = btnCadastrarClick
  end
  object btnBack: TButton
    Left = 166
    Top = 129
    Width = 42
    Height = 25
    Caption = '<<'
    TabOrder = 5
    OnClick = btnBackClick
  end
  object btnFoward: TButton
    Left = 246
    Top = 129
    Width = 42
    Height = 25
    Caption = '>>'
    TabOrder = 6
    OnClick = btnFowardClick
  end
  object mmCalculo: TMemo
    Left = 15
    Top = 199
    Width = 273
    Height = 252
    ScrollBars = ssVertical
    TabOrder = 7
  end
  object btnCalculaSalario: TButton
    Left = 166
    Top = 166
    Width = 122
    Height = 25
    Caption = 'Calcular Sal'#225'rios'
    TabOrder = 8
    OnClick = btnCalculaSalarioClick
  end
end
