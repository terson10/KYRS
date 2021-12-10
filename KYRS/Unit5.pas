unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TRep = class(TForm)
    QuickRep1: TQuickRep;
    QRBand4: TQRBand;
    QRLabel2: TQRLabel;
    QRBand5: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand6: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
    QuickRep2: TQuickRep;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel13: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape5: TQRShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Rep: TRep;

implementation

uses Unit1, Unit2, Unit3, Unit4, Unit6, Unit7;

{$R *.dfm}




end.
