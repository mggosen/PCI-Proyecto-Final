unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm4 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    Button4: TButton;
    Button5: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit1,Unit2,Unit3;

var
  i:integer;

{$R *.dfm}

procedure TForm4.Edit1Change(Sender: TObject);
begin
  if edit1.Enabled=true then
    begin
      button4.Enabled:=false;
      Button5.Enabled:=false;
      i:=0;
    end;

  if edit1.Text='' then
    begin
      Button1.Enabled:=false;
      edit2.Enabled:=true;
      edit3.Enabled:=true;
    end
  else
    begin
      Button1.Enabled:=true;
      edit2.Enabled:=false;
      edit3.Enabled:=false;
    end;
end;

procedure TForm4.Edit2Change(Sender: TObject);
begin
  if edit2.Enabled=true then
    begin
      button4.Enabled:=false;
      Button5.Enabled:=false;
      i:=0;
    end;

  if (edit2.Text='') and (edit3.Text='') then
    begin
      edit1.Enabled:=true;
    end
  else
    edit1.Enabled:=false;

  if (edit2.Text='') or (edit3.Text='') then
    begin
      Button2.Enabled:=false;
    end
  else
    begin
      Button2.Enabled:=true;
    end;
end;

procedure TForm4.Edit3Change(Sender: TObject);
begin
  if edit3.Enabled=true then
    begin
      button4.Enabled:=false;
      Button5.Enabled:=false;
      i:=0;
    end;

  if (edit2.Text='') and (edit3.Text='') then
    begin
      edit1.Enabled:=true;
    end
  else
    edit1.Enabled:=false;

  if (edit2.Text='') or (edit3.Text='') then
    begin
      Button2.Enabled:=false;
    end
  else
    begin
      Button2.Enabled:=true;
    end;
end;

//--- EDIT DE NUMERO DE ORDEN---//
procedure TForm4.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9',#7,#8]) then
    Key := #0
end;

///---EDIT DE NOMBRE Y APELLIDO---///
procedure TForm4.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
	if not (key in ['a'..'z','A'..'Z',' ', #7, #8, #13]) then
    Key := #0;
end;
procedure TForm4.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
	if not (key in ['a'..'z','A'..'Z',' ', #7, #8, #13]) then
    Key := #0;
end;

// FILTRAR POR Nº ORD
procedure TForm4.Button1Click(Sender: TObject);
var
  nro:integer;
  Pos:integer;
  LineaFiltro:string;
begin
  nro:=strtoint(edit1.Text);
  Memo1.Clear;
  edit1.Clear;
    for Pos:=1 to Unit1.N do
      begin
          if nro=FichaCliente[Pos].NroOrden then
            begin
              i:=Pos;

              Memo1.Lines.Add ('Datos del Cliente:');
              Memo1.Lines.Add (FichaCliente[i].Ape+', '+FichaCliente[i].Nom);
              Memo1.Lines.Add ('Tel: '+FichaCliente[i].Tel+' | '+
                               'Fb: '+FichaCliente[i].Fb+' | '+
                               'Ig: '+FichaCliente[i].Ig);
              Memo1.Lines.Add ('');
              Memo1.Lines.Add ('Pedido:');
              Memo1.Lines.Add ('Estil: '+FichaCliente[i].Estil);
              Memo1.Lines.Add ('Produc: '+FichaCliente[i].Produc);
              Memo1.Lines.Add ('Cant: '+inttostr(FichaCliente[i].Cant));
              Memo1.Lines.Add (FichaCliente[i].Env);
              Memo1.Lines.Add ('Importe: '+FichaCliente[i].Imp);

              Button4.Enabled:=true; //Modificar
              Button5.Enabled:=true; //Eliminar
            end;
      end;

      if i=0 then
        begin
          ShowMessage('El Nº de orden no existe');
        end;
end;

       //FILTRAR POR NOM Y APE
procedure TForm4.Button2Click(Sender: TObject);
var
nombre:string;
apellido:string;
LineaFiltro:string;
Pos,contador:integer;
begin
  contador:=0;
  nombre:=edit2.Text;
  apellido:=edit3.Text;
  Memo1.Clear;
  edit2.Clear;
  edit3.Clear;
    for Pos:=1 to Unit1.N do
      begin
          if ((nombre=FichaCliente[Pos].Nom) and (apellido=FichaCliente[Pos].Ape)) then
            begin
              contador:=contador+1;
              i:=Pos;

              Memo1.Lines.Add ('Datos del Cliente:');
              Memo1.Lines.Add (FichaCliente[i].Ape+', '+FichaCliente[i].Nom);
              Memo1.Lines.Add ('Tel: '+FichaCliente[i].Tel+' | '+
                               'Fb: '+FichaCliente[i].Fb+' | '+
                               'Ig: '+FichaCliente[i].Ig);
              Memo1.Lines.Add ('');
              Memo1.Lines.Add ('Pedido:');
              Memo1.Lines.Add ('Estil: '+FichaCliente[i].Estil);
              Memo1.Lines.Add ('Produc: '+FichaCliente[i].Produc);
              Memo1.Lines.Add ('Cant: '+inttostr(FichaCliente[i].Cant));
              Memo1.Lines.Add (FichaCliente[i].Env);
              Memo1.Lines.Add ('Importe: '+FichaCliente[i].Imp);
              Memo1.Lines.Add ('');
            end;
      end;

    if i=0 then
      begin
        ShowMessage('La persona no existe');
      end;

    if contador>1 then
      begin
        Button4.Enabled:=false;  //Boton Modificar
        Button5.Enabled:=false;  //Boton Eliminar
        Showmessage('Cliente repetido! Para modificar o eliminar utilice el Nº de orden.');
      end
    else
      begin
        Button4.Enabled:=true;  //Boton Modificar
        Button5.Enabled:=true;  //Boton Eliminar
      end;
end;

       //ELIMINAR
procedure TForm4.Button5Click(Sender: TObject);
var
  j:integer;
  PosicionSelec:integer;
begin

  if MessageDlg('Estas seguro que desea eliminar el pedido?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
    begin
      Form1.Button2.Enabled:=true;
      DatosGuardados:=0;
      Memo1.Clear;

      if i=N then
        begin
          FichaCliente[N].Ape:=Unassigned;
          FichaCliente[N].Nom:=Unassigned;
          Unit1.FichaCliente[N].Tel:=Unassigned;
          Unit1.FichaCliente[N].Fb:=Unassigned;
          Unit1.FichaCliente[N].Ig:=Unassigned;
          Unit1.FichaCliente[N].Estil:=Unassigned;
          Unit1.FichaCliente[N].Produc:=Unassigned;
          Unit1.FichaCliente[N].Cant:=Unassigned;
          Unit1.FichaCliente[N].Env:=Unassigned;
          Unit1.FichaCliente[N].Imp:=Unassigned;
          Unit1.FichaCliente[N].NroOrden:=Unassigned;

          N:=N-1;
        end
      else
        begin
          for j:=i to (Unit1.N-1) do
            begin
              Unit1.FichaCliente[j].Ape:= Unit1.FichaCliente[j+1].Ape;
              Unit1.FichaCliente[j].Nom:= Unit1.FichaCliente[j+1].Nom;
              Unit1.FichaCliente[j].Tel:= Unit1.FichaCliente[j+1].Tel;
              Unit1.FichaCliente[j].Fb:= Unit1.FichaCliente[j+1].Fb;
              Unit1.FichaCliente[j].Ig:= Unit1.FichaCliente[j+1].Ig;
              Unit1.FichaCliente[j].Estil:= Unit1.FichaCliente[j+1].Estil;
              Unit1.FichaCliente[j].Produc:= Unit1.FichaCliente[j+1].Produc;
              Unit1.FichaCliente[j].Cant:= Unit1.FichaCliente[j+1].Cant;
              Unit1.FichaCliente[j].Env:= Unit1.FichaCliente[j+1].Env;
              Unit1.FichaCliente[j].Imp:= Unit1.FichaCliente[j+1].Imp;
              Unit1.FichaCliente[j].NroOrden:= Unit1.FichaCliente[j+1].NroOrden;
            end;

          Unit1.FichaCliente[N].Ape:=Unassigned;
          Unit1.FichaCliente[N].Nom:=Unassigned;
          Unit1.FichaCliente[N].Tel:=Unassigned;
          Unit1.FichaCliente[N].Fb:=Unassigned;
          Unit1.FichaCliente[N].Ig:=Unassigned;
          Unit1.FichaCliente[N].Estil:=Unassigned;
          Unit1.FichaCliente[N].Produc:=Unassigned;
          Unit1.FichaCliente[N].Cant:=Unassigned;
          Unit1.FichaCliente[N].Env:=Unassigned;
          Unit1.FichaCliente[N].Imp:=Unassigned;
          Unit1.FichaCliente[N].NroOrden:=Unassigned;

          N:=N-1;
        end;

        PosicionSelec:=(i-1); //Posicien de listbox a eliminar
        Form1.ListBox1.Items.Delete(PosicionSelec);
        memo1.lines.add('Pedido eliminado.');

        Edit1.Clear;
        Edit2.Clear;
        Edit3.Clear;
        Button1.Enabled:=false;
        Button2.Enabled:=false;
        Button4.Enabled:=false;  //Modificar
        Button5.Enabled:=false;  //Eliminar

        if N=0 then
          begin
            Form1.Button3.Enabled:=false;
            Form1.Button4.Enabled:=false;
            Form1.Button5.Enabled:=false;
            Form1.Button2.Enabled:=true;
            DatosGuardados:=0;
          end;

    end;

end; //Fin Button5 Eliminar

       //MODIFICAR
procedure TForm4.Button4Click(Sender: TObject);
var
  j:integer;
  LineaModif:string;
begin
  Memo1.Clear;

  if ((FichaCliente[i].Tel)<>'') and ((FichaCliente[i].Tel)<>'---') then
    begin
      Form3.CheckBox2.Checked:=true;
      Unit3.DatoTel:=FichaCliente[i].Tel;
    end;

  if ((FichaCliente[i].Fb)<>'') and ((FichaCliente[i].Fb)<>'---') then
    begin
      Form3.CheckBox3.Checked:=true;
      Unit3.DatoFb:=FichaCliente[i].Fb;
    end;

  if ((FichaCliente[i].Ig)<>'') and ((FichaCliente[i].Ig)<>'---') then
    begin
      Form3.CheckBox4.Checked:=true;
      Unit3.DatoIg:=FichaCliente[i].Ig;
    end;

  for j:=0 to 2 do
     begin
       if (FichaCliente[i].Estil)=(Form3.ComboBox1.Items[j])then
          begin
            Form3.ComboBox1.Text:=Form3.ComboBox1.Items[j];
            Form3.ComboBox1.ItemIndex:=j;
          end;
     end;

  for j:=0 to 7 do
    begin
      if (FichaCliente[i].Produc)=(Form3.ComboBox2.Items[j])then
         begin
           Form3.ComboBox2.Text:=Form3.ComboBox2.Items[j];
           Form3.ComboBox2.ItemIndex:=j;
         end;
    end;

  Form3.SpinEdit1.Value:=FichaCliente[i].Cant;
  Form3.Edit3.Text:=FichaCliente[i].Imp;
  Form3.Edit1.Text:=(FichaCliente[i].Ape);
  Form3.Edit2.Text:=(FichaCliente[i].Nom);

  if (FichaCliente[i].Env='Sin envio') then  //Direccion
    begin
      Unit3.DatoEnv:=FichaCliente[i].Env;
      Form3.CheckBox1.Checked:=false;
    end
  else
    begin
      Unit3.DatoEnv:=FichaCliente[i].Env;
      Form3.CheckBox1.Checked:=true;
    end;

  NueCli.NroOrden:=FichaCliente[i].NroOrden;
      //carga datos a modif
  Form3.ShowModal;
    //actualiza
  if ContDatos>5 then
    begin
      NueCli.Ape:=Ape;
      NueCli.Nom:=Nom;
      NueCli.Estil:=Estil;
      NueCli.Produc:=Produc;
      NueCli.Cant:=Cant;
      NueCli.Env:=Env;
      NueCli.Imp:=Imp;
      NueCli.Tel:=Tel;
      NueCli.Fb:=Fb;
      NueCli.Ig:=Ig;

      FichaCliente[i]:=NueCli;

      LineaModif:=FichaCliente[i].Ape+', '+
                  FichaCliente[i].Nom+' | '+
                  'Tel: '+FichaCliente[i].Tel+' | '+
                  'Fb: '+FichaCliente[i].Fb+' | '+
                  'Ig: '+Unit1.FichaCliente[i].Ig+' | '+
                  'Estil: '+FichaCliente[i].Estil+' | '+
                  'Produc: '+FichaCliente[i].Produc+' | '+
                  'Cant: '+inttostr(FichaCliente[i].Cant)+' | '+
                  FichaCliente[i].Env+' | '+
                  'Importe: '+FichaCliente[i].Imp+' | '+
                  'NroOrden: '+ inttostr(FichaCliente[i].NroOrden)+'.';

      Memo1.Lines.Add('Pedido modificado:');
      Memo1.Lines.Add ('');
      Memo1.Lines.Add ('Datos del Cliente:');
      Memo1.Lines.Add (FichaCliente[i].Ape+', '+FichaCliente[i].Nom);
      Memo1.Lines.Add ('Tel: '+FichaCliente[i].Tel+' | '+
                       'Fb: '+FichaCliente[i].Fb+' | '+
                       'Ig: '+FichaCliente[i].Ig);
      Memo1.Lines.Add ('');
      Memo1.Lines.Add ('Pedido:');
      Memo1.Lines.Add ('Estil: '+FichaCliente[i].Estil);
      Memo1.Lines.Add ('Produc: '+FichaCliente[i].Produc);
      Memo1.Lines.Add ('Cant: '+inttostr(FichaCliente[i].Cant));
      Memo1.Lines.Add (FichaCliente[i].Env);
      Memo1.Lines.Add ('Importe: '+FichaCliente[i].Imp);

      Form1.ListBox1.Items[i-1]:=LineaModif;
      Form1.ListBox1.ItemIndex:=-1;

      Edit1.Clear;
      Edit2.Clear;
      Edit3.Clear;
      button4.Enabled:=false;   //Modificar
      button5.Enabled:=false;   //Eliminar
    end;

end;
        //SALIR
procedure TForm4.Button3Click(Sender: TObject);
begin
  if MessageDlg('Estas seguro que desea salir?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
    begin

      Memo1.Clear;
      Edit1.Clear;
      Edit2.Clear;
      Edit3.Clear;
      Button1.Enabled:=false;
      Button2.Enabled:=false;
      Button4.Enabled:=false;  //Modificar
      Button5.Enabled:=false;  //Eliminar

      Form4.Close;
    end;
end;


procedure TForm4.FormCreate(Sender: TObject);
begin
  Width := 693;  //Ancho
  Height := 275; //Alto
end;

end.




