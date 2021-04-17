object Form2: TForm2
  Left = 731
  Top = 326
  Width = 500
  Height = 250
  Caption = 'Agregar nuevo pedido'
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
    Top = 16
    Width = 37
    Height = 13
    Caption = 'Apellido'
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 37
    Height = 13
    Caption = 'Nombre'
  end
  object Label4: TLabel
    Left = 256
    Top = 16
    Width = 25
    Height = 13
    Caption = 'Estilo'
  end
  object Label5: TLabel
    Left = 256
    Top = 48
    Width = 43
    Height = 13
    Caption = 'Producto'
  end
  object Label6: TLabel
    Left = 256
    Top = 112
    Width = 35
    Height = 13
    Caption = 'Importe'
  end
  object Label7: TLabel
    Left = 256
    Top = 80
    Width = 42
    Height = 13
    Caption = 'Cantidad'
  end
  object Label3: TLabel
    Left = 16
    Top = 80
    Width = 90
    Height = 13
    Caption = 'Medio de Contacto'
  end
  object Edit1: TEdit
    Left = 72
    Top = 16
    Width = 153
    Height = 21
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 72
    Top = 48
    Width = 153
    Height = 21
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object NingunEstilo: TComboBox
    Left = 312
    Top = 16
    Width = 153
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'NingunEstilo'
    Items.Strings = (
      'Acero quirurgico'
      'Bijou'
      'Plata 925')
  end
  object NingunProducto: TComboBox
    Left = 312
    Top = 48
    Width = 153
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = 'NingunProducto'
    Items.Strings = (
      'Anillo basico'
      'Anillo con dije'
      'Argollitas anchas'
      'Argollitas simples'
      'Cuff (aritos)'
      'Hebilla'
      'Pa'#241'uelo multicolor'
      'Pulsera')
  end
  object CheckBox1: TCheckBox
    Left = 384
    Top = 80
    Width = 73
    Height = 25
    Caption = 'Envio'
    TabOrder = 4
    OnClick = CheckBox1Click
  end
  object RadioButton1: TRadioButton
    Left = 72
    Top = 136
    Width = 113
    Height = 25
    Caption = 'Facebook'
    TabOrder = 5
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 72
    Top = 168
    Width = 113
    Height = 25
    Caption = 'Instagram'
    TabOrder = 6
    OnClick = RadioButton2Click
  end
  object Button1: TButton
    Left = 248
    Top = 160
    Width = 97
    Height = 33
    Caption = 'Agregar'
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 368
    Top = 160
    Width = 97
    Height = 33
    Caption = 'Cancelar'
    TabOrder = 8
    OnClick = Button2Click
  end
  object Edit4: TEdit
    Left = 312
    Top = 112
    Width = 153
    Height = 21
    TabOrder = 9
    OnKeyPress = Edit4KeyPress
  end
  object SpinEdit1: TSpinEdit
    Left = 312
    Top = 82
    Width = 41
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 10
    Value = 1
  end
  object RadioButton4: TRadioButton
    Left = 72
    Top = 104
    Width = 113
    Height = 25
    Caption = 'Telefono'
    TabOrder = 11
    OnClick = RadioButton4Click
  end
  object CheckBox2: TCheckBox
    Left = 48
    Top = 104
    Width = 17
    Height = 25
    Caption = 'CheckBox2'
    Enabled = False
    TabOrder = 12
  end
  object CheckBox3: TCheckBox
    Left = 48
    Top = 136
    Width = 17
    Height = 25
    Caption = 'CheckBox3'
    Enabled = False
    TabOrder = 13
  end
  object CheckBox4: TCheckBox
    Left = 48
    Top = 168
    Width = 17
    Height = 25
    Caption = 'CheckBox4'
    Enabled = False
    TabOrder = 14
    OnClick = CheckBox4Click
  end
end
