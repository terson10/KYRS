unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TRep2 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand4: TQRBand;
    QRLabel2: TQRLabel;
    QRBand5: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand6: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRShape2: TQRShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Rep2: TRep2;

implementation

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit6;

{$R *.dfm}

end.
