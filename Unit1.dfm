object Form1: TForm1
  Left = 159
  Top = 165
  Width = 1022
  Height = 278
  Caption = 'Inicio'
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
    Left = 152
    Top = 24
    Width = 78
    Height = 13
    Caption = 'Lista de Pedidos'
  end
  object Button1: TButton
    Left = 16
    Top = 16
    Width = 121
    Height = 33
    Caption = 'Agregar Pedido'
    Enabled = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 152
    Top = 40
    Width = 825
    Height = 153
    Color = 16098805
    ItemHeight = 13
    TabOrder = 1
    OnClick = ListBox1Click
  end
  object Button2: TButton
    Left = 336
    Top = 200
    Width = 121
    Height = 25
    Caption = 'Guardar Pedidos'
    Enabled = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 16
    Top = 112
    Width = 121
    Height = 33
    Caption = 'Modificar Pedido'
    Enabled = False
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 16
    Top = 64
    Width = 121
    Height = 33
    Caption = 'Filtrar Pedido'
    Enabled = False
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 16
    Top = 160
    Width = 121
    Height = 33
    Caption = 'Eliminar Pedido'
    Enabled = False
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button8: TButton
    Left = 888
    Top = 200
    Width = 89
    Height = 25
    Caption = 'Salir'
    TabOrder = 6
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 824
    Top = 8
    Width = 153
    Height = 25
    Caption = 'Acerca de Tomiko Accs.'
    TabOrder = 7
    OnClick = Button9Click
  end
  object Button6: TButton
    Left = 472
    Top = 200
    Width = 121
    Height = 25
    Caption = 'Cargar Pedidos'
    TabOrder = 8
    OnClick = Button6Click
  end
end
