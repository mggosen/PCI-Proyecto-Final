object Form4: TForm4
  Left = 385
  Top = 127
  Width = 693
  Height = 275
  Caption = 'Filtrar Pedido'
  Color = 16766975
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 46
    Height = 13
    Caption = 'Filtrar por:'
  end
  object Label2: TLabel
    Left = 32
    Top = 40
    Width = 64
    Height = 13
    Caption = 'Nro de Orden'
  end
  object Label3: TLabel
    Left = 32
    Top = 120
    Width = 37
    Height = 13
    Caption = 'Apellido'
  end
  object Label4: TLabel
    Left = 32
    Top = 152
    Width = 37
    Height = 13
    Caption = 'Nombre'
  end
  object Memo1: TMemo
    Left = 320
    Top = 8
    Width = 337
    Height = 169
    Color = 16098805
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 112
    Top = 40
    Width = 185
    Height = 21
    TabOrder = 1
    OnChange = Edit1Change
    OnKeyPress = Edit1KeyPress
  end
  object Button1: TButton
    Left = 112
    Top = 72
    Width = 105
    Height = 33
    Caption = 'Buscar Nro'
    Enabled = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 112
    Top = 184
    Width = 105
    Height = 33
    Caption = 'Buscar'
    Enabled = False
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 552
    Top = 184
    Width = 105
    Height = 33
    Caption = 'Salir'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Edit2: TEdit
    Left = 112
    Top = 120
    Width = 185
    Height = 21
    TabOrder = 5
    OnChange = Edit2Change
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 112
    Top = 152
    Width = 185
    Height = 21
    TabOrder = 6
    OnChange = Edit3Change
    OnKeyPress = Edit3KeyPress
  end
  object Button4: TButton
    Left = 320
    Top = 184
    Width = 97
    Height = 33
    Caption = 'Modificar'
    Enabled = False
    TabOrder = 7
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 440
    Top = 184
    Width = 89
    Height = 33
    Caption = 'Eliminar'
    Enabled = False
    TabOrder = 8
    OnClick = Button5Click
  end
end
