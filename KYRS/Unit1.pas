unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, ExtCtrls, StdCtrls, Spin, DBCtrls,
  ComCtrls,JPEG, ExtDlgs, DB, ADODB;

type
  TMain = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    DateTimePicker1: TDateTimePicker;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label8: TLabel;
    GroupBox3: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Panel1: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    SpinEdit3: TSpinEdit;
    Label11: TLabel;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Label12: TLabel;
    Image1: TImage;
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;
  ChekNom, ChekSum,  CenaTov: String;
  usl: integer;
   uslugakod: string;
   a,b:double;

implementation

uses Unit2, Unit3, Unit4, Unit6, Unit5, Unit7;

{$R *.dfm}

procedure TMain.FormShow(Sender: TObject);
begin
DataModule1.ADOQCheck.close;
DataModule1.ADOQCheck.SQL.text:= ' SELECT * FROM [Check]';
DataModule1.ADOQCheck.Open;
DateTimePicker1.Date:=Now;
DBLookupComboBox1.KeyValue:= 1;
end;

procedure TMain.N2Click(Sender: TObject);
begin
Prog.Show;
end;
procedure TMain.N1Click(Sender: TObject);
begin
Sprav.Show;
end;

procedure TMain.Edit1Change(Sender: TObject);
begin
DataModule1.ADOQTovari.Close;
DataModule1.ADOQTovari.SQL.Text:= 'SELECT Tovari.���_������, Tovari.�����_������, Category.�����_�������, Tovari.ֳ��_���, Tovari.����'
+' FROM Category INNER JOIN Tovari ON Category.[���_�������] = Tovari.[���_�������] where Tovari.�����_������ like "%'+Edit1.Text+'%" ORDER BY Tovari.���_������';
DataModule1.ADOQTovari.Open;
end;

procedure TMain.Button2Click(Sender: TObject);
begin
DataModule1.ADOQTovari.Close;
DataModule1.ADOQTovari.SQL.Text:= 'SELECT Tovari.���_������, Tovari.�����_������, Category.�����_�������, Tovari.ֳ��_���, Tovari.����'
+' FROM Category INNER JOIN Tovari ON Category.[���_�������] = Tovari.[���_�������] where Tovari.ֳ��_��� Between '+SpinEdit1.Text+' AND '+SpinEdit2.Text+' ORDER BY Tovari.���_������';
DataModule1.ADOQTovari.Open;
end;

procedure TMain.DBLookupComboBox1Click(Sender: TObject);
begin
DataModule1.ADOQTovari.Close;
DataModule1.ADOQTovari.SQL.Text:= 'SELECT Tovari.���_������, Tovari.�����_������, Category.�����_�������, Tovari.ֳ��_���, Tovari.����'
+' FROM Category INNER JOIN Tovari ON Category.[���_�������] = Tovari.[���_�������] where Category.�����_������� = "'+DBLookupComboBox1.Text+'" ORDER BY Tovari.���_������';
DataModule1.ADOQTovari.Open;
end;

procedure TMain.Button1Click(Sender: TObject);
begin
DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:= 'INSERT INTO [Check] ( ����, ���� ) Values (:dt, 0) ';
DataModule1.ADOQWork.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy', DateTimePicker1.Date);
DataModule1.ADOQWork.ExecSQL;

FormShow(Sender);

DataModule1.ADOQWork.close;
DataModule1.ADOQWork.SQL.text:=' SELECT * FROM [Check] order by ���_����';
DataModule1.ADOQWork.Open;

DataModule1.ADOQWork.Last;
Cheknom:= DataModule1.DataSWork.DataSet.Fields[0].AsString;
Label9.Caption:='��� �'+ChekNom;

DataModule1.ADOQProd1.Close;
DataModule1.ADOQProd1.SQL.Text:='SELECT Tovari.�����_������, Personal.ϲ�, Prodazi.ʳ������, Prodazi.ֳ��, Prodazi.������, Prodazi.���_����  '
+ ' FROM Personal INNER JOIN (Tovari INNER JOIN Prodazi ON Tovari.���_������ = Prodazi.���_������) ON Personal.���_��������� = Prodazi.���_���������  '
+ ' WHERE (((Prodazi.���_����)='+Cheknom+'))';

DataModule1.ADOQProd1.Open;
ChekSum:= '0';
label12.caption:= '����� �� ���� (���): ' + ChekSum;

Panel1.Visible:=true;
GroupBox2.Enabled:=False;
end;

procedure TMain.Button4Click(Sender: TObject);
begin
Check.Show;
end;

procedure TMain.Button6Click(Sender: TObject);
begin
 Panel1.Visible:=False;
 GroupBox2.Enabled:=True;
end;

procedure TMain.Button3Click(Sender: TObject);
begin
CenaTov:= IntToStr(DBGrid1.Fields[3].AsInteger * strtoint(SpinEdit3.text));
DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:= 'INSERT INTO Prodazi ( [ʳ������], [���_����], [���_������], [���_���������], [ֳ��], [������]  ) '
 + ' Values ('+SpinEdit3.Text+', '+ChekNom+', '+DBGrid1.Fields[0].AsString+', '+inttostr(DBLookupComboBox2.KeyValue)+', '+CenaTov+', "0")';
DataModule1.ADOQWork.ExecSQL;

DataModule1.ADOQProd1.Close;
DataModule1.ADOQProd1.SQL.Text:='SELECT Tovari.�����_������, Personal.ϲ�, Prodazi.ʳ������, Prodazi.ֳ��, Prodazi.������, Prodazi.���_����  '
+ ' FROM Personal INNER JOIN (Tovari INNER JOIN Prodazi ON Tovari.���_������ = Prodazi.���_������) ON Personal.���_��������� = Prodazi.���_���������  '
+ ' WHERE (((Prodazi.���_����)='+Cheknom+'))';
DataModule1.ADOQProd1.open;

DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:=' SELECT Sum(Prodazi.ֳ��) AS [Sum-ֳ��], Prodazi.���_���� FROM Prodazi GROUP BY Prodazi.���_���� HAVING (((Prodazi.���_����)='+cheknom+'))';
DataModule1.ADOQWork.Open;

ChekSum:= DataModule1.DataSWork.DataSet.Fields[0].AsString;
label12.caption:= '����� �� ���� (���): ' + ChekSum;

DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:='UPDATE [Check] SET [Check].���� = '+ChekSum+' WHERE (((Check.���_����)='+ChekNom+')) ';
DataModule1.ADOQWork.ExecSQL;

formshow(Sender);
end;

procedure TMain.Button5Click(Sender: TObject);
begin
DataModule1.ADOQRep.Close;
DataModule1.ADOQRep.SQL.Text:='SELECT Tovari.�����_������, Prodazi.ʳ������, Prodazi.ֳ��, Tovari.ֳ��_��� '
+ ' FROM [Check] INNER JOIN (Tovari INNER JOIN Prodazi ON Tovari.���_������ = Prodazi.���_������) ON Check.���_���� = Prodazi.���_���� '
+ ' WHERE (((Prodazi.���_����)='+Cheknom+'))';
DataModule1.ADOQRep.Open;
Rep.QRLabel4.Caption:='��� �'+ChekNom;
Rep.QRLabel5.Caption:='����: ' + DateToStr(DateTimePicker1.Date);
Rep.QRLabel13.Caption:='��������: ' + DBLookupComboBox2.Text;
Rep.QRLabel16.Caption:='����� �� ���� (���): ' + ChekSum;
Rep.QuickRep2.Preview;
end;


End.
