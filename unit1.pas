unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, IndLed, LedNumber, Forms, Controls, Graphics,
  Dialogs, StdCtrls, windows;

type

  { TSimon }

  TSimon = class(TForm)
    nivel1: TButton;
    nivel2: TButton;
    nivel3: TButton;
    Rojo: TindLed;
    Verde: TindLed;
    azul: TindLed;
    Amarillo: TindLed;
    Jugar: TButton;
    Contador: TLEDNumber;
    reiniciar: TButton;
    Acerca: TButton;
    Salir: TButton;
    procedure AmarilloClick(Sender: TObject);
    procedure azulClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure JugarClick(Sender: TObject);
    procedure ContadorClick(Sender: TObject);
    procedure nivel1Click(Sender: TObject);
    procedure nivel2Click(Sender: TObject);
    procedure nivel3Click(Sender: TObject);
    procedure reiniciarClick(Sender: TObject);
    procedure RojoClick(Sender: TObject);
    procedure SalirClick(Sender: TObject);
    procedure VerdeClick(Sender: TObject);
  private
   ronda,cont,jugada,level:integer;
   Vectorrandom:Array[1..100] of integer;
   procedure ledrojo;
   procedure ledazul;
   procedure ledverde;
   procedure ledamarillo;
   procedure ledrandomcolores;
   procedure reproducir;
   procedure aleatorio;
  public

  end;

var
  Simon: TSimon;

implementation

{$R *.frm}
procedure TSimon.aleatorio;
var
  i:integer;
begin
      For i:=1 to 100 do
      Begin
           Vectorrandom [i] := Random(4);
      end;
end;

procedure TSimon.JugarClick(Sender: TObject);
begin
  jugar.Enabled:=true;
  Randomize;
  cont:=1;
  aleatorio;
  ronda :=1;
  cont:= jugada;
  nivel1.Visible:=true;
  nivel2.Visible:=true;
  nivel3.Visible:=true;
  jugar.Enabled:=false;
end;

procedure TSimon.ContadorClick(Sender: TObject);
begin

end;

procedure TSimon.nivel1Click(Sender: TObject);
begin
 level:=1;
 nivel2.Visible:=false;
 nivel3.Visible:=false;
 reproducir;

end;

procedure TSimon.nivel2Click(Sender: TObject);
begin
 level:=2;
 nivel1.Visible:=false;
 nivel3.Visible:=false;
 reproducir;

end;

procedure TSimon.nivel3Click(Sender: TObject);
begin
 level:=3;
 nivel2.Visible:=false;
 nivel1.Visible:=false;
 reproducir;

end;

procedure TSimon.reiniciarClick(Sender: TObject);
begin
  jugar.Enabled:=true;
  cont:=1;
  aleatorio;
  ronda :=1;
  cont:= jugada;
  nivel1.Visible:=true;
  nivel2.Visible:=true;
  nivel3.Visible:=true;
end;

procedure TSimon.azulClick(Sender: TObject);
begin
  ledazul;
  if vectorrandom[jugada] = 0 then
     Begin
     jugada:= jugada+1;
     if jugada > ronda then
        Begin
        ronda:= ronda+1;
        reproducir;
        end;
      End
  else
           Showmessage('Perdiste :(')

end;

procedure TSimon.FormCreate(Sender: TObject);
begin

end;

procedure TSimon.AmarilloClick(Sender: TObject);
begin
  ledamarillo;
  if vectorrandom[jugada] = 3 then
     Begin
     jugada:= jugada+1;
     if jugada > ronda then
        Begin
        ronda:= ronda+1;
        reproducir;
        end;
      End
  else
           Showmessage('Perdiste :(')

end;

procedure TSimon.RojoClick(Sender: TObject);
begin
  ledRojo;
  if vectorrandom[jugada] = 1 then
     Begin
     jugada:= jugada+1;
     if jugada > ronda then
        Begin
        ronda:= ronda+1;
        reproducir;
        end;
      End
  else
           Showmessage('Perdiste :(')

end;

procedure TSimon.SalirClick(Sender: TObject);
begin
  halt;
end;

procedure TSimon.VerdeClick(Sender: TObject);
begin
  ledverde;
  if vectorrandom[jugada] = 2 then
     Begin
     jugada:= jugada+1;
     if jugada > ronda then
        Begin
        ronda:= ronda+1;
        reproducir;
        end;
      End
  else
           Showmessage('Perdiste :(')

end;

procedure TSimon.reproducir;
Var
  i:Integer;
Begin
     Contador.Caption:=inttostr(ronda);
      For i:= 1 to ronda do
      Begin
        If Vectorrandom [i]= 0 then
        ledAzul;
        If Vectorrandom [i]= 1 then
        ledRojo;
        If Vectorrandom [i]= 2 then
        ledVerde;
        If Vectorrandom [i]= 3 then
        ledAmarillo;

      end;

      jugada:=1;

end;

procedure TSimon.ledrojo;
begin
       rojo.LedValue:=true;
       rojo.Update;
       if level=1 then
       Windows.Beep(349,1000);
       if level=2 then
       Windows.Beep(349,500);
       if level=3 then
       Windows.Beep(349,250);
       rojo.LedValue:=false;
       if level=1 then
       sleep(1000);
       if level=2 then
       sleep(500);
       if level=3 then
       sleep(250);
end;
procedure TSimon.ledverde;
begin
       verde.LedValue:=true;
       verde.Update;
       if level=1 then
       Windows.Beep(392,1000);
       if level=2 then
       Windows.Beep(392,500);
       if level=3 then
       Windows.Beep(392,250);
       verde.LedValue:=false;
       verde.Update;
       if level=1 then
       sleep(1000);
       if level=2 then
       sleep(500);
       if level=3 then
       sleep(250);
end;
procedure TSimon.ledazul;
begin
       azul.LedValue:=true;
       azul.Update;
       if level=1 then
       Windows.Beep(440,1000);
       if level=2 then
       Windows.Beep(440,500);
       if level=3 then
       Windows.Beep(440,250);
       azul.LedValue:=false;
       azul.Update;
       if level=1 then
       sleep(1000);
       if level=2 then
       sleep(500);
       if level=3 then
       sleep(250);
end;
procedure TSimon.ledamarillo;
begin
       amarillo.LedValue:=true;
       amarillo.Update;
       if level=1 then
       Windows.Beep(493,1000);
       if level=2 then
       Windows.Beep(493,500);
       if level=3 then
       Windows.Beep(493,250);
       amarillo.LedValue:=false;
       amarillo.Update;
       if level=1 then
       sleep(1000);
       if level=2 then
       sleep(500);
       if level=3 then
       sleep(250);
end;

procedure TSimon.ledrandomcolores;
begin

end;

end.

