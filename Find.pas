unit Find;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, DBunit,
  Vcl.ExtCtrls, Data.DB, Data.Win.ADODB;

type
  TfFind = class(TForm)
    PanelFindGrid: TPanel;
    DBGridPerson: TDBGrid;
    PanelFindMenu: TPanel;
    LabelFind1: TLabel;
    ButtonFind1: TButton;
    EditFindFamily: TEdit;
    PanelFind: TPanel;
    q_GetPeopleFamily: TADOQuery;
    ds_GetPeopleFamily: TDataSource;
    procedure ButtonFind1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFind: TfFind;

implementation

{$R *.dfm}

procedure TfFind.ButtonFind1Click(Sender: TObject);
begin
 If EditFindFamily.Text = '' then Application.MessageBox('Ошибка в поле Фамилия','Ошибка') else
 begin
    try
      q_GetPeopleFamily.Close;
      q_GetPeopleFamily.Parameters.ParamByName('Family').Value:=EditFindFamily.Text;
      q_GetPeopleFamily.Open;
      ds_GetPeopleFamily.DataSet.Active := False;
      ds_GetPeopleFamily.DataSet.Active := True;
    except
      Application.MessageBox('Ошибка поиска','Ошибка');
      exit;
    end;
 end;

end;

end.
