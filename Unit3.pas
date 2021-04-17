unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    CheckBox1: TCheckBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Button1: TButton;
    Button2: TButton;
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  DatoTel,DatoFb,DatoIg,DatoEnv:string;
implementation

uses Unit1, Unit2;

var
  Fb,Ig,Tel,Ape,Nom,Imp,Estil,Produc,Env:string;
  Cant:integer;


{$R *.dfm}
                 //TELEFONO
procedure TForm3.RadioButton1Click(Sender: TObject);
begin
  if RadioButton1.Checked=true then
    begin
      Tel:=InputBox('Tel - Cel','Numero',DatoTel);
      DatoTel:=Tel;
      if ((Tel='')or(Tel='---')) then
        begin
          CheckBox2.Checked:=false;
          RadioButton1.Checked:=false;
        end
      else
        begin
          CheckBox2.Checked:=true;
          RadioButton1.Checked:=false;
        end;
    end;
end;          
              //FACEBOOK
procedure TForm3.RadioButton2Click(Sender: TObject);
begin
  if RadioButton2.Checked=true then
    begin
      Fb:=InputBox('Facebook','Usuario',DatoFb);
      DatoFb:=Fb;
      if ((Fb='')or(Fb='---')) then
        begin
          CheckBox3.Checked:=false;
          RadioButton2.Checked:=false;
        end
      else
        begin
          CheckBox3.Checked:=true;
          RadioButton2.Checked:=false;
        end;
    end;
end;
            //INSTAGRAM
procedure TForm3.RadioButton3Click(Sender: TObject);
begin
  if RadioButton3.Checked=true then
    begin
      Ig:=InputBox('Instagram','Usuario',DatoIg);
      DatoIg:=Ig;
      if ((Ig='')or(Ig='---')) then
        begin
          CheckBox4.Checked:=false;
          RadioButton3.Checked:=false;
        end
      else
        begin
          CheckBox4.Checked:=true;
          RadioButton3.Checked:=false;
        end;
    end;
end;

procedure TForm3.CheckBox4Click(Sender: TObject);
begin

end;
     //CHECK ENVIO
Procedure TForm3.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked=true then
    begin
      if (DatoEnv<>'')and(DatoEnv<>'Sin envio') then
        begin
          Env:=DatoEnv;
        end;

      if (DatoEnv='') then
        begin
          Env:='Con envio a: '+InputBox('Envio','Direccion',DatoEnv);
          if Env='Con envio a: ' then
            begin
              CheckBox1.Checked:=false;
            end;
        end;
      if (DatoEnv='Sin envio') then
        begin
          Env:='Con envio a: '+InputBox('Envio','Direccion','');
          if Env='Con envio a: ' then
            begin
              CheckBox1.Checked:=false;
            end;
        end;
    end
  else
    begin
      Env:='Sin envio';
      DatoEnv:='';
    end;
end;



procedure TForm3.Button1Click(Sender: TObject);
var
  ContDatos:integer;
  SinContac:integer;
begin

  ContDatos:=0;
  SinContac:=0;

  if edit1.Text='' then
    ShowMessage('Apellido incompleto!')
  else
    begin
      Ape:=edit1.Text;
      ContDatos := ContDatos + 1;
    end;

  if edit2.Text='' then
    ShowMessage('Nombre incompleto!')
  else
    begin
      Nom:=edit2.Text;
      ContDatos := ContDatos + 1;
    end;

  if edit3.Text='' then
    ShowMessage('Importe incompleto!')
  else
    begin
      Imp:=edit3.Text;
      ContDatos := ContDatos + 1;
    end;

  if(ComboBox1.ItemIndex>(-1))then
     begin
       Estil:= (ComboBox1.Items [ComboBox1.ItemIndex]);
       ContDatos := ContDatos + 1;
     end
  else
     begin
       ShowMessage('Escoja un Estilo');     //Si no se escoge estilo le damos un mensaje
     end;

  if(ComboBox2.ItemIndex>(-1))then
     begin
       Produc:= (ComboBox2.Items [ComboBox2.ItemIndex]);
       ContDatos := ContDatos + 1;
     end
  else
     begin
       ShowMessage('Escoja un Producto');    //Si no se escoge producto le damos un mensaje
     end;


  Cant:=(SpinEdit1.Value);  //CANTIDAD

   if CheckBox1.Checked=false then
       Env:='Sin envio';

   if CheckBox2.Checked=true then
     begin
       Tel:=DatoTel;
       ContDatos := ContDatos + 1;
     end;
   if CheckBox3.Checked=true then
     begin
       Fb:=DatoFb;
       ContDatos := ContDatos + 1;
     end;
   if CheckBox4.Checked=true then
     begin
       Ig:=DatoIg;
       ContDatos := ContDatos + 1;
     end;

  if ((Tel='')or(Tel='---')) then     //Telefono
    begin
      Tel:='---';
      SinContac:=SinContac+1;
    end
  else
    begin
      ContDatos := ContDatos + 1;
    end;

  if ((Fb='')or(Fb='---')) then     //Facebook
    begin
      Fb:='---';
      SinContac:=SinContac+1;
    end
  else
      begin
      ContDatos := ContDatos + 1;
    end;

  if ((Ig='')or(Ig='---')) then     //Instagram
    begin
      Ig:='---';
      SinContac:=SinContac+1;
    end
  else
     begin
      ContDatos := ContDatos + 1;
    end;

  if (SinContac=3) then
    ShowMessage('Ingresar medio de contacto');

  if (ContDatos > 5) then
    begin
      Unit1.ContDatos:=ContDatos;

      Unit1.Ape:=Ape;
      Unit1.Nom:=Nom;
      Unit1.Imp:=Imp;
      Unit1.Estil:=Estil;
      Unit1.Produc:=Produc;
      Unit1.Cant:=Cant;
      Unit1.Env:=Env;
      Unit1.Fb:=Fb;
      Unit1.Ig:=Ig;
      Unit1.Tel:=Tel;

      RadioButton1.Checked:=false;    Tel:='';
      RadioButton2.Checked:=false;    Fb:='';
      RadioButton3.Checked:=false;    Ig:='';

      DatoTel:='';
      DatoFb:='';
      DatoIg:='';
      CheckBox2.Checked:=false;
      CheckBox3.Checked:=false;
      CheckBox4.Checked:=false;

      Form1.Button2.Enabled:=true;
      DatosGuardados:=0;

      Form3.Close;
    end;
end;
                // CANCELAR  MODIFICACION
procedure TForm3.Button2Click(Sender: TObject);
begin
      ContDatos:=0;

      edit1.Text:='';
      edit2.Text:='';
      edit3.Text:='';

      RadioButton1.Checked:=false;    Tel:='';
      RadioButton2.Checked:=false;    Fb:='';
      RadioButton3.Checked:=false;    Ig:='';
      DatoTel:='';
      DatoFb:='';
      DatoIg:='';
      CheckBox2.Checked:=false;
      CheckBox3.Checked:=false;
      CheckBox4.Checked:=false;

      SpinEdit1.Value:=1;
      ComboBox1.ItemIndex:=-1;
      ComboBox2.ItemIndex:=-1;

      Ape:='';
      Nom:='';
      Imp:='';
      Estil:='';
      Produc:='';
      Cant:=1;
      Env:='';
      Fb:='';
      Ig:='';
      Tel:='';

      Form3.Close;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  Width := 500;  //Ancho
  Height := 250; //Alto
end;

end.

