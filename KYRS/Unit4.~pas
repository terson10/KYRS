unit Unit4;

interface

uses
Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls,DB;

type
  TSprav = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Button2: TButton;
    Button16: TButton;
    Button18: TButton;
    Button19: TButton;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit4: TEdit;
    Button4: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Button1: TButton;
    TabSheet3: TTabSheet;
    DBGrid3: TDBGrid;
    Panel4: TPanel;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Label1: TLabel;
    Edit2: TEdit;
    TabSheet2: TTabSheet;
    TabSheet4: TTabSheet;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    Button3: TButton;
    Panel5: TPanel;
    DBGrid4: TDBGrid;
    TabSheet5: TTabSheet;
    DBGrid5: TDBGrid;
    Panel6: TPanel;
    Button14: TButton;
    Button15: TButton;
    Button17: TButton;
    Edit6: TEdit;
    Label7: TLabel;
    Button6: TButton;
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Sprav: TSprav;

implementation

uses Unit2, Unit1, Unit3, Unit5, Unit6, Unit7;

{$R *.dfm}

 procedure TSprav.Button18Click(Sender: TObject);
begin
Edit1.Text:='';
Edit2.Text:='';
Edit4.Text:='0';
DBLookupComboBox1.KeyValue:=1;
Button1.Visible:=true;
Button4.Visible:=false;
Panel2.Visible:=true;

end;

procedure TSprav.Button19Click(Sender: TObject);
begin
  Edit1.Text:=DBGrid1.Fields[1].AsString;
  Edit2.Text:=DBGrid1.Fields[4].AsString;
  Edit4.Text:=DBGrid1.Fields[3].AsString;
DataModule1.ADOTCategory.Locate('Назва_категорії',DBGrid1.Fields[2].AsString,[loCaseInsensitive, loPartialKey]);
DBLookupComboBox1.KeyValue:= StrToInt(DataModule1.DataSCategory.DataSet.Fields[0].AsString);

Button1.Visible:=false;
Button4.Visible:=True;

Panel2.Visible:=true;
end;

procedure TSprav.Button2Click(Sender: TObject);
begin
DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:= 'DELETE * FROM Tovari Where (Tovari.Код_товара = '+DBGrid1.Fields[0].AsString+')';
DataModule1.ADOQWork.ExecSQL;
FormShow(Sender);
end;

procedure TSprav.FormShow(Sender: TObject);
begin
DataModule1.ADOQTovari.Close;
DataModule1.ADOQTovari.SQL.Text:= 'SELECT Tovari.Код_товара, Tovari.Назва_товара , Category.Назва_категорії , Tovari.Ціна_грн, Tovari.Опис'
+ ' FROM Category INNER JOIN Tovari ON Category.[Код_категорії] = Tovari.[Код_категорії] ORDER BY Tovari.Код_товара';
DataModule1.ADOQTovari.Open;

end;

procedure TSprav.Button8Click(Sender: TObject);
begin
 DataModule1.ADOTPers.Insert;
end;

procedure TSprav.Button9Click(Sender: TObject);
begin
if  DataModule1.ADOTPers.Modified then
 DataModule1.ADOTPers.Post;
end;

procedure TSprav.Button7Click(Sender: TObject);
begin
 DataModule1.ADOTPers.Delete;
end;

procedure TSprav.Button4Click(Sender: TObject);
begin

DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:='UPDATE Tovari SET Tovari.Назва_товара = "'+Edit1.Text+'", Tovari.Код_категорії = "'+IntToStr(DBLookupComboBox1.KeyValue)+'", Tovari.Ціна_грн = '+Edit4.Text+', Tovari.Опис = "'+Edit2.Text+'" '
+' WHERE (((Tovari.Код_товара)='+DBGrid1.Fields[0].AsString+'))';
DataModule1.ADOQWork.ExecSQL;

FormShow(Sender);
panel2.Visible:=False;

end;

procedure TSprav.Button6Click(Sender: TObject);
begin
Edit1.Text:='';
Edit2.Text:='';
Edit4.Text:='';
FormShow(Sender);
panel2.Visible:=False;
end;

procedure TSprav.Button1Click(Sender: TObject);
begin
DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:='INSERT INTO Tovari ( [Назва_товара], [Код_категорії], [Ціна_грн], [Опис] ) values ("'+Edit1.Text+'", '+IntToStr(DBLookupComboBox1.KeyValue)+', '+Edit4.Text+', "'+Edit2.Text+'")';
DataModule1.ADOQWork.ExecSQL;

DataModule1.ADOQTovari.Close;
DataModule1.ADOQTovari.SQL.Text:= 'SELECT Tovari.Код_товара, Tovari.Назва_товара, Category.Назва_категорії, Tovari.Ціна_грн, Tovari.Опис'
+' FROM Category, Tovari WHERE Category.[Код_категорії] = Tovari.[Код_категорії] ORDER BY Tovari.Код_товара';
DataModule1.ADOQTovari.Open;

panel2.Visible:=False;
end;


procedure TSprav.Edit6Change(Sender: TObject);
begin
DataModule1.ADOQTovari.Close;
DataModule1.ADOQTovari.SQL.Text:= 'SELECT Tovari.Код_товара, Tovari.Назва_товара, Category.Назва_категорії, Tovari.Ціна_грн, Tovari.Опис'
+' FROM Category INNER JOIN Tovari ON Category.[Код_категорії] = Tovari.[Код_категорії] where Tovari.Назва_товара like "%'+Edit6.Text+'%" ORDER BY Tovari.Код_товара';
DataModule1.ADOQTovari.Open;
end;

procedure TSprav.Button15Click(Sender: TObject);
begin
 DataModule1.ADOTCategory.Insert;
end;

procedure TSprav.Button17Click(Sender: TObject);
begin
if  DataModule1.ADOTCategory.Modified then
 DataModule1.ADOTCategory.Post;
end;

procedure TSprav.Button14Click(Sender: TObject);
begin
 DataModule1.ADOTCategory.Delete;
end;

procedure TSprav.Button16Click(Sender: TObject);
begin
Rep.QuickRep1.PreviewModal;
end;

procedure TSprav.Button3Click(Sender: TObject);
begin
Rep2.QuickRep1.PreviewModal;
end;

end.
