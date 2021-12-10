unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids;

type
  TCheck = class(TForm)
    DBGrid: TDBGrid;
    Panel: TPanel;
    Label12: TLabel;
    But2: TButton;
    But3: TButton;
    procedure But2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure But3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Check: TCheck;

implementation

uses Unit1, Unit5, Unit7, Unit2, Unit3, Unit4;

{$R *.dfm}

procedure TCheck.But2Click(Sender: TObject);
begin
DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:= 'Delete * From Prodazi Where Код_продажі = '+DBGrid.Fields[0].AsString+'';
DataModule1.ADOQWork.ExecSQL;
DataModule1.ADOQProd2.Close;
DataModule1.ADOQProd2.SQL.Text:='SELECT Tovari.Назва_товара, Personal.ПІБ, Prodazi.Кількість, Prodazi.Ціна, Prodazi.Знижка, Prodazi.Код_чека  '
+ ' FROM Personal INNER JOIN (Tovari INNER JOIN Prodazi ON Tovari.Код_товара = Prodazi.Код_товара) ON Personal.Код_персонала = Prodazi.Код_персонала  '
+ ' WHERE (((Prodazi.Код_чека)='+Cheknom+'))';
DataModule1.ADOQProd2.open;
DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:=' SELECT Sum(Prodazi.Ціна) AS [Sum-Ціна], Prodazi.Код_чека FROM Prodazi GROUP BY Prodazi.Код_чека HAVING (((Prodazi.Код_чека)='+cheknom+'))';
DataModule1.ADOQWork.Open;
ChekSum:= DataModule1.DataSWork.DataSet.Fields[0].AsString;
Label12.caption:= 'Сумма по чеку (грн): ' + ChekSum;
Main.Label12.caption:= 'Сумма по чеку (грн): ' + ChekSum;
DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:='UPDATE [Check] SET [Check].Сума = '+ChekSum+' WHERE (((Check.Код_чека)='+ChekNom+')) ';
DataModule1.ADOQWork.ExecSQL;
end;

procedure TCheck.FormShow(Sender: TObject);
begin
DataModule1.ADOQProd2.close;
DataModule1.ADOQProd2.SQL.Text:=' SELECT Prodazi.Код_продажі, Check.Дата, Tovari.Назва_товара, Prodazi.Кількість, Prodazi.Ціна, Personal.ПІБ, Prodazi.Код_чека '
+'FROM [Check] INNER JOIN ((Category INNER JOIN Tovari ON Category.Код_категорії = Tovari.Код_категорії) INNER JOIN (Personal INNER JOIN Prodazi ON Personal.Код_персонала = Prodazi.Код_персонала)'
+'ON Tovari.Код_товара = Prodazi.Код_товара) ON Check.Код_чека = Prodazi.Код_чека WHERE (((Prodazi.Код_чека)='+ChekNom+'))';
DataModule1.ADOQProd2.Open;
Label12.caption:= 'Сумма по чеку (грн): ' + ChekSum;
end;

procedure TCheck.But3Click(Sender: TObject);
begin
DataModule1.ADOQRep.Close;
DataModule1.ADOQRep.SQL.Text:='SELECT Tovari.Назва_товара, Prodazi.Кількість, Prodazi.Ціна, Tovari.Ціна_грн'
+' FROM [Check] INNER JOIN (Tovari INNER JOIN Prodazi ON Tovari.Код_товара = Prodazi.Код_товара) ON Check.Код_чека = Prodazi.Код_чека WHERE (((Prodazi.Код_чека)='+Cheknom+'))';
DataModule1.ADOQRep.Open;
Rep.QRLabel4.Caption:='Чек №'+ChekNom;
Rep.QRLabel5.Caption:='Дата: ' + DateToStr(Main.DateTimePicker1.Date);
Rep.QRLabel13.Caption:='Менеджер: ' + Main.DBLookupComboBox2.Text;
Rep.QRLabel16.Caption:='Сумма по чеку (грн): ' + ChekSum;
Rep.QuickRep2.PreviewModal;
Check.Close;
end;


end.
 