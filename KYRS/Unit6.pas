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
DataModule1.ADOQWork.SQL.Text:= 'Delete * From Prodazi Where ���_������ = '+DBGrid.Fields[0].AsString+'';
DataModule1.ADOQWork.ExecSQL;
DataModule1.ADOQProd2.Close;
DataModule1.ADOQProd2.SQL.Text:='SELECT Tovari.�����_������, Personal.ϲ�, Prodazi.ʳ������, Prodazi.ֳ��, Prodazi.������, Prodazi.���_����  '
+ ' FROM Personal INNER JOIN (Tovari INNER JOIN Prodazi ON Tovari.���_������ = Prodazi.���_������) ON Personal.���_��������� = Prodazi.���_���������  '
+ ' WHERE (((Prodazi.���_����)='+Cheknom+'))';
DataModule1.ADOQProd2.open;
DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:=' SELECT Sum(Prodazi.ֳ��) AS [Sum-ֳ��], Prodazi.���_���� FROM Prodazi GROUP BY Prodazi.���_���� HAVING (((Prodazi.���_����)='+cheknom+'))';
DataModule1.ADOQWork.Open;
ChekSum:= DataModule1.DataSWork.DataSet.Fields[0].AsString;
Label12.caption:= '����� �� ���� (���): ' + ChekSum;
Main.Label12.caption:= '����� �� ���� (���): ' + ChekSum;
DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:='UPDATE [Check] SET [Check].���� = '+ChekSum+' WHERE (((Check.���_����)='+ChekNom+')) ';
DataModule1.ADOQWork.ExecSQL;
end;

procedure TCheck.FormShow(Sender: TObject);
begin
DataModule1.ADOQProd2.close;
DataModule1.ADOQProd2.SQL.Text:=' SELECT Prodazi.���_������, Check.����, Tovari.�����_������, Prodazi.ʳ������, Prodazi.ֳ��, Personal.ϲ�, Prodazi.���_���� '
+'FROM [Check] INNER JOIN ((Category INNER JOIN Tovari ON Category.���_������� = Tovari.���_�������) INNER JOIN (Personal INNER JOIN Prodazi ON Personal.���_��������� = Prodazi.���_���������)'
+'ON Tovari.���_������ = Prodazi.���_������) ON Check.���_���� = Prodazi.���_���� WHERE (((Prodazi.���_����)='+ChekNom+'))';
DataModule1.ADOQProd2.Open;
Label12.caption:= '����� �� ���� (���): ' + ChekSum;
end;

procedure TCheck.But3Click(Sender: TObject);
begin
DataModule1.ADOQRep.Close;
DataModule1.ADOQRep.SQL.Text:='SELECT Tovari.�����_������, Prodazi.ʳ������, Prodazi.ֳ��, Tovari.ֳ��_���'
+' FROM [Check] INNER JOIN (Tovari INNER JOIN Prodazi ON Tovari.���_������ = Prodazi.���_������) ON Check.���_���� = Prodazi.���_���� WHERE (((Prodazi.���_����)='+Cheknom+'))';
DataModule1.ADOQRep.Open;
Rep.QRLabel4.Caption:='��� �'+ChekNom;
Rep.QRLabel5.Caption:='����: ' + DateToStr(Main.DateTimePicker1.Date);
Rep.QRLabel13.Caption:='��������: ' + Main.DBLookupComboBox2.Text;
Rep.QRLabel16.Caption:='����� �� ���� (���): ' + ChekSum;
Rep.QuickRep2.PreviewModal;
Check.Close;
end;


end.
 