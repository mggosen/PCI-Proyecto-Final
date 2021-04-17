object Form3: TForm3
  Left = 734
  Top = 78
  Width = 499
  Height = 249
  Caption = 'Modificar Pedido'
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
  object Label3: TLabel
    Left = 16
    Top = 80
    Width = 90
    Height = 13
    Caption = 'Medio de Contacto'
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
    Top = 80
    Width = 42
    Height = 13
    Caption = 'Cantidad'
  end
  object Label7: TLabel
    Left = 256
    Top = 112
    Width = 35
    Height = 13
    Caption = 'Importe'
  end
  object Edit1: TEdit
    Left = 72
    Top = 16
    Width = 153
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 72
    Top = 48
    Width = 153
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 312
    Top = 112
    Width = 153
    Height = 21
    TabOrder = 2
  end
  object RadioButton1: TRadioButton
    Left = 72
    Top = 104
    Width = 105
    Height = 25
    Caption = 'Telefono'
    TabOrder = 3
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 72
    Top = 136
    Width = 105
    Height = 25
    Caption = 'Facebook'
    TabOrder = 4
    OnClick = RadioButton2Click
  end
  object RadioButton3: TRadioButton
    Left = 72
    Top = 168
    Width = 105
    Height = 25
    Caption = 'Instagram'
    TabOrder = 5
    OnClick = RadioButton3Click
  end
  object CheckBox1: TCheckBox
    Left = 384
    Top = 80
    Width = 73
    Height = 25
    Caption = 'Envio'
    TabOrder = 6
    OnClick = CheckBox1Click
  end
  object ComboBox1: TComboBox
    Left = 312
    Top = 16
    Width = 153
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Text = 'NingunEstilo'
    Items.Strings = (
      'Acero quirurgico'
      'Bijou'
      'Plata 925')
  end
  object ComboBox2: TComboBox
    Left = 312
    Top = 48
    Width = 153
    Height = 21
    ItemHeight = 13
    TabOrder = 8
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
  object Button1: TButton
    Left = 224
    Top = 160
    Width = 121
    Height = 33
    Caption = 'Finalizar Modificacion'
    TabOrder = 9
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 368
    Top = 160
    Width = 97
    Height = 33
    Caption = 'Cancelar'
    TabOrder = 10
    OnClick = Button2Click
  end
  object SpinEdit1: TSpinEdit
    Left = 312
    Top = 80
    Width = 41
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 11
    Value = 1
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
