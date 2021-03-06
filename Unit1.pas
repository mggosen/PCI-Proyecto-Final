unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ListBox1: TListBox;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button8: TButton;
    Label1: TLabel;
    Button9: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  // Variables para todos los formularios
  Ape:string;
  Nom:string;
  Estil:string;
  Produc:string;
  Cant:integer;
  Env:string;
  Imp:string;
  Tel:string;
  Fb:string;
  Ig:string;
  NroOrden:integer;

  ContDatos,N,PosicionSelec,DatosGuardados:integer;

  type
   TFicha = record
     Ape:string;
     Nom:string;
     Estil:string;
     Produc:string;
     Cant:integer;
     Env:string;
     Imp:string;
     Tel:string;
     Fb:string;
     Ig:string;
     NroOrden:integer; //numero orden para el cliente
   end;

   TArreglo=array[1..150]of TFicha;

var
   FichaCliente:TArreglo;
   NueCli:TFicha;

implementation

uses Unit2, Unit3, Unit4, Unit5;


{$R *.dfm}

           //AGREGAR PEDIDO
procedure TForm1.Button1Click(Sender: TObject);
var
  LineaList:string;
  num:integer;
  i:integer;
begin
   Listbox1.Selected[Listbox1.ItemIndex]:=false;

  Form2.ShowModal;

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

      //Random nro orden
       Randomize;

      num:=Random(10000)+1;  //  Random nro envio
       for i:=1 to N do
       begin
          if num=FichaCliente[i].NroOrden then
              begin
                num:=random(10000)+1;
              end;
       end;
      NueCli.NroOrden:=num;


      FichaCliente[N]:=NueCli;

      LineaList:=FichaCliente[N].Ape+', '+
                 FichaCliente[N].Nom+' | '+
                 'Tel: '+FichaCliente[N].Tel+' | '+
                 'Fb: '+FichaCliente[N].Fb+' | '+
                 'Ig: '+FichaCliente[N].Ig+' | '+
                 'Estil: '+FichaCliente[N].Estil+' | '+
                 'Produc: '+FichaCliente[N].Produc+' | '+
                 'Cant: '+inttostr(FichaCliente[N].Cant)+' | '+
                 FichaCliente[N].Env+' | '+
                 'Importe: '+FichaCliente[N].Imp+' | '+
                 'NroOrden: '+ inttostr(FichaCliente[N].NroOrden)+'.';

      ListBox1.Items.Add(LineaList);

      if N<>0 then
       begin
         Button4.Enabled:=true;
         Button2.Enabled:=true;
         DatosGuardados:=0;
       end;
    end;
end;

         //SELECCIONAR LINEA LISTBOX
procedure TForm1.ListBox1Click(Sender: TObject);
begin
  if Listbox1.Selected[listbox1.ItemIndex] then
    begin
      PosicionSelec:=(listbox1.ItemIndex) + 1;
      if listbox1.ItemIndex>-1 then
        begin
          Button3.Enabled:=true;
          Button5.Enabled:=true;
        end;
    end
  else
    begin
      button3.Enabled:=false;
      Button5.Enabled:=false;
    end;
end;

         // MODIFICAR PEDIDO
procedure TForm1.Button3Click(Sender: TObject);
var
  i:integer;
  LineaModif:string;
begin

  Form3.Edit1.Text:=(FichaCliente[PosicionSelec].Ape);
  Form3.Edit2.Text:=FichaCliente[PosicionSelec].Nom;

 if ((FichaCliente[PosicionSelec].Tel)<>'') and ((FichaCliente[PosicionSelec].Tel)<>'---') then
    begin
      Form3.CheckBox2.Checked:=true;
      Unit3.DatoTel:=FichaCliente[PosicionSelec].Tel;
    end;

  if ((FichaCliente[PosicionSelec].Fb)<>'') and ((FichaCliente[PosicionSelec].Fb)<>'---') then
    begin
      Form3.CheckBox3.Checked:=true;
      Unit3.DatoFb:=FichaCliente[PosicionSelec].Fb;
    end;

  if ((FichaCliente[PosicionSelec].Ig)<>'') and ((FichaCliente[PosicionSelec].Ig)<>'---') then
    begin
      Form3.CheckBox4.Checked:=true;
      Unit3.DatoIg:=FichaCliente[PosicionSelec].Ig;
    end;

  for i:=0 to 2 do
    begin
      if (FichaCliente[PosicionSelec].Estil)=(Form3.ComboBox1.Items[i])then
       begin
          Form3.ComboBox1.Text:=Form3.ComboBox1.Items[i];
          Form3.ComboBox1.ItemIndex:=i;
        end;
    end;

  for i:=0 to 7 do
    begin
      if (FichaCliente[PosicionSelec].Produc)=(Form3.ComboBox2.Items[i])then
        begin
          Form3.ComboBox2.Text:=Form3.ComboBox2.Items[i];
          Form3.ComboBox2.ItemIndex:=i;
         end;
    end;

  Form3.SpinEdit1.Value:=FichaCliente[PosicionSelec].Cant;
  Form3.Edit3.Text:=FichaCliente[PosicionSelec].Imp;

  if (FichaCliente[PosicionSelec].Env='Sin envio') then  //Direccion
    begin
      Unit3.DatoEnv:=FichaCliente[PosicionSelec].Env;
      Form3.CheckBox1.Checked:=false;
    end
  else
    begin
      Unit3.DatoEnv:=FichaCliente[PosicionSelec].Env;
      Form3.CheckBox1.Checked:=true;
    end;

  NueCli.NroOrden:=FichaCliente[PosicionSelec].NroOrden;
  //carga datos a modif en el formulario 3
  Form3.ShowModal;
   //actualiza datos del pedido
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

      FichaCliente[PosicionSelec]:=NueCli;

      LineaModif:=FichaCliente[PosicionSelec].Ape+', '+
                  FichaCliente[PosicionSelec].Nom+' | '+
                  'Tel: '+FichaCliente[PosicionSelec].Tel+' | '+
                  'Fb: '+FichaCliente[PosicionSelec].Fb+' | '+
                  'Ig: '+FichaCliente[PosicionSelec].Ig+' | '+
                  'Estil: '+FichaCliente[PosicionSelec].Estil+' | '+
                  'Produc: '+FichaCliente[PosicionSelec].Produc+' | '+
                  'Cant: '+inttostr(FichaCliente[PosicionSelec].Cant)+' | '+
                  FichaCliente[PosicionSelec].Env+' | '+
                  'Importe: '+FichaCliente[PosicionSelec].Imp+' | '+
                  'NroOrden: '+ inttostr(FichaCliente[PosicionSelec].NroOrden)+'.';

       ListBox1.Items[PosicionSelec-1]:=LineaModif;
       listbox1.ItemIndex:=-1;
       Button3.Enabled:=false;
       Button5.Enabled:=false;

   end;
end;
      //BOTON FILTRAR
procedure TForm1.Button4Click(Sender: TObject);    
begin
  Form4.ShowModal; //Abre formulario 4 para filtrar pedido
end;

  // --- BOTON ELIMINAR PEDIDO -- //
procedure TForm1.Button5Click(Sender: TObject);
 var
  i:integer;
  ItemSeleccionado:Integer;
begin

  if MessageDlg('Seguro que desea eliminar el pedido seleccionado?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
    begin
      Form1.Button2.Enabled:=true;
      DatosGuardados:=0;
      ItemSeleccionado := ListBox1.ItemIndex;
      if Listbox1.Selected[ItemSeleccionado] then
        begin
          PosicionSelec:=(ItemSeleccionado) + 1; //arreglo
          ListBox1.Items.Delete(ItemSeleccionado);
        end;

      if PosicionSelec=N then
        begin
          FichaCliente[N].Ape:=Unassigned;
          FichaCliente[N].Nom:=Unassigned;
          FichaCliente[N].Tel:=Unassigned;
          FichaCliente[N].Fb:=Unassigned;
          FichaCliente[N].Ig:=Unassigned;
          FichaCliente[N].Estil:=Unassigned;
          FichaCliente[N].Produc:=Unassigned;
          FichaCliente[N].Cant:=Unassigned;
          FichaCliente[N].Env:=Unassigned;
          FichaCliente[N].Imp:=Unassigned;
          FichaCliente[N].NroOrden:=Unassigned;

          N:=N-1;
        end
      else
        begin
          for i:=PosicionSelec to (N-1) do
            begin
              FichaCliente[i].Ape:= FichaCliente[i+1].Ape;
              FichaCliente[i].Nom:= FichaCliente[i+1].Nom;
              FichaCliente[i].Tel:= FichaCliente[i+1].Tel;
              FichaCliente[i].Fb:= FichaCliente[i+1].Fb;
              FichaCliente[i].Ig:= FichaCliente[i+1].Ig;
              FichaCliente[i].Estil:= FichaCliente[i+1].Estil;
              FichaCliente[i].Produc:= FichaCliente[i+1].Produc;
              FichaCliente[i].Cant:= FichaCliente[i+1].Cant;
              FichaCliente[i].Env:= FichaCliente[i+1].Env;
              FichaCliente[i].Imp:= FichaCliente[i+1].Imp;
              FichaCliente[i].NroOrden:= FichaCliente[i+1].NroOrden;
            end;
          FichaCliente[N].Ape:=Unassigned;
          FichaCliente[N].Nom:=Unassigned;
          FichaCliente[N].Tel:=Unassigned;
          FichaCliente[N].Fb:=Unassigned;
          FichaCliente[N].Ig:=Unassigned;
          FichaCliente[N].Estil:=Unassigned;
          FichaCliente[N].Produc:=Unassigned;
          FichaCliente[N].Cant:=Unassigned;
          FichaCliente[N].Env:=Unassigned;
          FichaCliente[N].Imp:=Unassigned;
          FichaCliente[N].NroOrden:=Unassigned;
          N:=N-1;
        end;
        listbox1.ItemIndex:=-1;
        Button3.Enabled:=false;
        Button5.Enabled:=false;

        if N=0 then
          begin
            Button3.Enabled:=false;
            Button4.Enabled:=false;
            Button5.Enabled:=false;
            Button2.Enabled:=true;
            DatosGuardados:=0;
          end;
      end;
end;

       //BOTON SALIR
procedure TForm1.Button8Click(Sender: TObject);
begin
  if ((N=0) or (DatosGuardados=1)) and (Button2.Enabled=false) then
    begin
      if MessageDlg('Desea salir de TOMIKO ACCS?', mtConfirmation,
        [mbYes, mbNo], 0) = mrYes then
        begin
          Form1.Close;
        end;
    end
  else
      ShowMessage('Primero debe guardar los pedidos.');
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  CargarTxt:TextFile;
  Linea:string;
begin
  Width := 1010;  //Ancho
  Height := 280; //Alto

  if not FileExists('C:\ListaCliente.txt') then
    begin
      Button1.Enabled:=true;
      Button6.Enabled:=false;
    end
  else
    begin
      AssignFile(CargarTxt,'C:\ListaCliente.txt');
      Reset(CargarTxt); //Abre para lectura
      while not Eof(CargarTxt) do
        begin
          Readln(CargarTxt, Linea);
        end;
      if Linea='' then
        begin
          Button6.Enabled:=false;
          Button1.Enabled:=true;
        end
      else
        begin
          Button6.Enabled:=true;
          Button1.Enabled:=false;
        end;
     CloseFile(CargarTxt);
    end;

end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  form5.Memo1.clear;
  form5.Memo2.clear;

  form5.memo1.lines.add('- Autores del sistema:');
  form5.memo1.lines.add('     > Eduen Martinez ');
  form5.memo1.lines.add('     > Milagros Gallardo Gosen');
  form5.Memo1.Lines.add('');
  form5.Memo1.Lines.add('- A?o de creacion del Software: 2021');
  form5.Memo1.Lines.add('- Direccion: Alem 1250 ');
  form5.Memo1.Lines.add('- Contacto: @Softwarelibre');

  form5.memo2.Lines.add('* TOMIKO ACCESORIOS * ');
  form5.memo2.lines.add('Software dise?ado de forma especial '+
                        'para un emprendimiento de accesorios,  '+
                        'el cual ayudar? a organizar las ventas  '+
                        'de la forma m?s adecuada');

  Form5.ShowModal;
end;

           //GUARDAR DATOS DEL ARREGLO
procedure TForm1.Button2Click(Sender: TObject);
var
   CrearTxt:TextFile;
   i:integer;
begin

     DatosGuardados:=0;

       AssignFile(CrearTxt,'C:\ListaCliente.txt');
       Rewrite(CrearTxt);
       for i:=1 to N do
         begin
           WriteLn(CrearTxt, FichaCliente[i].Ape);
           WriteLn(CrearTxt, FichaCliente[i].Nom);
           WriteLn(CrearTxt, FichaCliente[i].Tel);
           WriteLn(CrearTxt, FichaCliente[i].Fb);
           WriteLn(CrearTxt, FichaCliente[i].Ig);
           WriteLn(CrearTxt, FichaCliente[i].Estil);
           WriteLn(CrearTxt, FichaCliente[i].Produc);
           WriteLn(CrearTxt, inttostr(FichaCliente[i].Cant));
           WriteLn(CrearTxt, FichaCliente[i].Env);
           WriteLn(CrearTxt, FichaCliente[i].Imp);
           WriteLn(CrearTxt, inttostr(FichaCliente[i].NroOrden));
         end;
          CloseFile(CrearTxt);

     DatosGuardados:=1;

     Button2.Enabled:=false;

end;
 




         //CARGAR ARREGLO Y LISTBOX
procedure TForm1.Button6Click(Sender: TObject);
var
  CargarTxt:TextFile;
  contLinea:integer;
  Linea,LineaListBox:string;
begin
  DatosGuardados:=1;
  if not FileExists('C:\ListaCliente.txt') then
    begin
      ShowMessage('No hay datos guardados!');
    end
  else
    begin
      N:=1;
      contLinea:=0;
      AssignFile(CargarTxt,'C:\ListaCliente.txt');
      Reset(CargarTxt); //Abre para lectura
      while not Eof(CargarTxt) do    //hasta q no haya datos
        begin
          contLinea:=contLinea+1;
          Readln(CargarTxt, Linea);
          if (contLinea=1) then
            FichaCliente[N].Ape:=Linea
          else
          if (contLinea=2) then
            FichaCliente[N].Nom:=Linea
          else
          if (contLinea=3) then
            FichaCliente[N].Tel:=Linea
          else
          if (contLinea=4) then
            FichaCliente[N].Fb:=Linea
          else
          if (contLinea=5) then
            FichaCliente[N].Ig:=Linea
          else
          if (contLinea=6) then
            FichaCliente[N].Estil:=Linea
          else
          if (contLinea=7) then
            FichaCliente[N].Produc:=Linea
          else
          if (contLinea=8) then
            FichaCliente[N].Cant:=strtoint(Linea)
          else
          if (contLinea=9) then
            FichaCliente[N].Env:=Linea
          else
          if (contLinea=10) then
            FichaCliente[N].Imp:=Linea
          else
          if (contLinea=11) then
            begin
              FichaCliente[N].NroOrden:=strtoint(Linea);

              LineaListBox:=FichaCliente[N].Ape+', '+
                            FichaCliente[N].Nom+' | '+
                            'Tel: '+FichaCliente[N].Tel+' | '+
                            'Fb: '+FichaCliente[N].Fb+' | '+
                            'Ig: '+FichaCliente[N].Ig+' | '+
                            'Estil: '+FichaCliente[N].Estil+' | '+
                            'Produc: '+FichaCliente[N].Produc+' | '+
                            'Cant: '+inttostr(FichaCliente[N].Cant)+' | '+
                            FichaCliente[N].Env+' | '+
                            'Importe: '+FichaCliente[N].Imp+' | '+
                            'NroOrden: '+ inttostr(FichaCliente[N].NroOrden)+'.';
              ListBox1.Items.Add(LineaListBox);

              contLinea:=0;
              N:=N+1;
            end;
        end;
      CloseFile(CargarTxt);
      N:=N-1;   //para q vuelva a quedar en el 2, para q agregar una persona entra en el 3
      Button6.Enabled:=false;  //cargar pedidos
      Button1.Enabled:=true;   //agregar pedidos
      Button4.Enabled:=true;   //filtrar pedidos
    end;

end;


end.
