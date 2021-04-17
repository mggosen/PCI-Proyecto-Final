unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ComCtrls, Spin, Mask;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    NingunEstilo: TComboBox;
    NingunProducto: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    CheckBox1: TCheckBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Button1: TButton;
    Button2: TButton;
    Label6: TLabel;
    Edit4: TEdit;
    Label7: TLabel;
    SpinEdit1: TSpinEdit;
    RadioButton4: TRadioButton;
    Label3: TLabel;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

var
  Fb,Ig,Tel,Ape,Nom,Imp,Estil,Produc,Env:string;
  Cant:integer;

{$R *.dfm}

                   //Facebook
procedure TForm2.RadioButton1Click(Sender: TObject);
begin
  if RadioButton1.Checked=true then
    begin
      Fb:=InputBox('Facebook','Usuario','');
      if ((Fb='')or(Fb='---')) then
        begin
          CheckBox3.Checked:=false;
          RadioButton1.Checked:=false;
        end
      else
        begin
          CheckBox3.Checked:=true;
          RadioButton1.Checked:=false;
        end;
    end;
end;
                  //Instagram
procedure TForm2.RadioButton2Click(Sender: TObject);
begin
  if RadioButton2.Checked=true then
    begin
      Ig:=InputBox('Instagram','Usuario','');
      if ((Ig='')or(Ig='---')) then
        begin
          CheckBox4.Checked:=false;
          RadioButton2.Checked:=false;
        end
      else
        begin
          RadioButton2.Checked:=false;
          CheckBox4.Checked:=true;
        end;
    end;
end;
                  //Telefono
procedure TForm2.RadioButton4Click(Sender: TObject);
begin
   if RadioButton4.Checked=true then
     begin
       Tel:=InputBox('Tel - Cel','Numero','');
       if ((Tel='')or(Tel='---')) then
         begin
           CheckBox2.Checked:=false;
           RadioButton4.Checked:=false;
         end
       else
         begin
           CheckBox2.Checked:=true;
           RadioButton4.Checked:=false;
         end;
    end;
end;

procedure TForm2.CheckBox4Click(Sender: TObject);
begin

end;

    // Con o sin envio
procedure TForm2.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked=true then
    begin
      Env:='Con envio a: '+InputBox('Envio','Direccion','');
      if Env='Con envio a: ' then
        CheckBox1.Checked:=false;
    end
end;

procedure TForm2.Button1Click(Sender: TObject);
var
  Linea:string;
  ContDatos:integer;
  SinContac:integer;
  ListaTxt:TextFile;
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

  if edit4.Text='' then
    ShowMessage('Importe incompleto!')
  else
    begin
     Imp:=edit4.Text;
      ContDatos := ContDatos + 1;
    end;

  if(NingunEstilo.ItemIndex>(-1))then
     begin
       Estil:= (NingunEstilo.Items [NingunEstilo.ItemIndex]);
       ContDatos := ContDatos + 1;
     end
  else
     begin
       ShowMessage('Escoja un Estilo');     //Si no se escoge estilo le damos un mensaje
     end;

  if(NingunProducto.ItemIndex>(-1))then
     begin
       Produc:= (NingunProducto.Items [NingunProducto.ItemIndex]);
       ContDatos := ContDatos + 1;
     end
  else
     begin
       ShowMessage('Escoja un Producto');    //Si no se escoge producto le damos un mensaje
     end;


  Cant:=(SpinEdit1.Value);  //CANTIDAD


  If CheckBox1.Checked=false then
    Env:='Sin envio';


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

      Unit1.N:=Unit1.N+1;

      edit1.Text:='';
      edit2.Text:='';
      edit4.Text:='';

      RadioButton1.Checked:=false;    Fb:='';
      RadioButton2.Checked:=false;    Ig:='';
      RadioButton4.Checked:=false;    Tel:='';
      CheckBox2.Checked:=false;
      CheckBox3.Checked:=false;
      CheckBox4.Checked:=false;

      SpinEdit1.Value:=1;
      CheckBox1.Checked:=false;
      NingunEstilo.ItemIndex:=-1;
      NingunProducto.ItemIndex:=-1;

      Form2.Close;
    end;
end;

          //BOTON CANCELAR
procedure TForm2.Button2Click(Sender: TObject);
begin
  if MessageDlg('Desea cancelar el pedido?', mtConfirmation,
    [mbYes, mbCancel], 0) = mrYes then
    begin
      ContDatos:=0;

      edit1.Text:='';
      edit2.Text:='';
      edit4.Text:='';

      RadioButton1.Checked:=false;
      RadioButton2.Checked:=false;
      RadioButton4.Checked:=false;
      CheckBox2.Checked:=false;
      CheckBox3.Checked:=false;
      CheckBox4.Checked:=false;

      SpinEdit1.Value:=1;
      CheckBox1.Checked:=false;
      NingunEstilo.ItemIndex:=-1;
      NingunProducto.ItemIndex:=-1;

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

      Form2.Close;
    end;
end;

 //Para que en el edit de precio solo ingresen numeros.
procedure TForm2.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in ['0'..'9',#7,#8]) then
 Key := #0;
end;

//---Para que en el edit del nombre y apellido ingresen letras--- //
procedure TForm2.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['a'..'z','A'..'Z',' ', #7, #8, #13]) then
    begin
      Key := #0;
    end;
end;

procedure TForm2.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['a'..'z','A'..'Z',' ', #7, #8, #13]) then
    begin
      Key := #0;
    end;
end;


procedure TForm2.FormCreate(Sender: TObject);
begin
  Width := 500;  //Ancho
  Height := 250; //Alto
end;

end.


