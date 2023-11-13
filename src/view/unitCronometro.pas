unit unitCronometro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.MPlayer,
  Vcl.Buttons;

type
  TfrmCronometro = class(TForm)
    tTempo: TTimer;
    lbSegundos: TLabel;
    lblMinutos: TLabel;
    Label3: TLabel;
    MediaPlayer1: TMediaPlayer;
    Label1: TLabel;
    lbHoras: TLabel;
    btnPlay: TSpeedButton;
    procedure tTempoTimer(Sender: TObject);
    procedure btnPlayClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCronometro: TfrmCronometro;

implementation

{$R *.dfm}

procedure TfrmCronometro.btnPlayClick(Sender: TObject);
begin
  tTempo.Enabled := true;
end;

procedure TfrmCronometro.tTempoTimer(Sender: TObject);
var
  seg, min, hor, cont: Integer;
begin
  seg := StrToInt(lbSegundos.Caption);
  min := StrToInt(lblMinutos.Caption);
  hor := StrToInt(lbHoras.Caption);

  cont := seg + 1;

  if cont < 10 then
   lbSegundos.Caption :=   '0' + IntToStr(cont)
  else
    lbSegundos.Caption :=  IntToStr(cont);

  if cont > 59 then
  begin
    lbSegundos.Caption := '00';

    if (min >= 9) and (min < 59) then
      lblMinutos.Caption :=  IntToStr(StrToInt(lblMinutos.Caption) + 1)
    else if min = 59 then
    begin
      lblMinutos.Caption := '00';

      if (hor >= 9) and (hor < 59 ) then
        lbHoras.Caption := IntToStr(StrToInt(lbHoras.Caption) + 1)
      else if hor = 59  then
      begin
        lbHoras.Caption := '60';
        tTempo.Enabled := False;
      end else
        lbHoras.Caption := '0' + IntToStr(StrToInt(lbHoras.Caption) + 1);

    end else
      lblMinutos.Caption :=  '0' + IntToStr(StrToInt(lblMinutos.Caption) + 1);
  end;

end;

end.
