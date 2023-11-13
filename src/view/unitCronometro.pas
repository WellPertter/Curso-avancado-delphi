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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCronometro: TfrmCronometro;

implementation

{$R *.dfm}

end.
