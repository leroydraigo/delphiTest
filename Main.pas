unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Oper, Statist,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin, Data.DB, Data.Win.ADODB;

type
  TfMain = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    PageControl1: TPageControl;
    procedure N2Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMain: TfMain;
  opNum,stNum: byte;


implementation

{$R *.dfm}


procedure TfMain.N2Click(Sender: TObject);
var
  fOper:TfOper;
  tab:TTabSheet;
begin
  opNum := opNum + 1;
  Application.CreateForm(TfOper, fOper);
  fOper.Caption := 'Оператор ' + IntToStr(opNum);
  tab := TTabSheet.Create(Self);
  tab.PageControl := PageControl1;
  tab.Parent := PageControl1;
  tab.Caption := fOper.Caption;
  //привязка вкладок к онкам
  PageControl1.ActivePage := tab;
  tab.Tag := fOper.GetHashCode;
  fOper.LinkedTab := tab;
end;

procedure TfMain.N3Click(Sender: TObject);
var
  fStatist:TfStatist;
  tab:TTabSheet;
begin
  stNum := stNum + 1;
  Application.CreateForm(TfStatist, fStatist);
  fStatist.Caption := 'Статист ' + IntToStr(stNum);
  tab := TTabSheet.Create(Self);
  tab.PageControl := PageControl1;
  tab.Parent := PageControl1;
  tab.Caption := fStatist.Caption;
  PageControl1.ActivePage := tab;
  tab.Tag := fStatist.GetHashCode;
  fStatist.LinkedTab := tab;
end;

procedure TfMain.PageControl1Change(Sender: TObject);
var
  form: TForm;
  tab:TTabSheet;
begin
  tab := PageControl1.ActivePage;
  //замена окон по PageControl
  form := TForm(tab.Tag);
  form.Show;
end;


end.
