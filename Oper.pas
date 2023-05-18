unit Oper;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus, Vcl.ComCtrls,
  Vcl.Tabs, Vcl.Samples.Spin, Vcl.Grids, Vcl.DBGrids, Data.DB, Data.Win.ADODB, DBunit, Find,
  Vcl.DBCtrls, Vcl.DBLookup;

type
  TfOper = class(TfFind)
    ButtonAddPerson: TButton;
    Label2: TLabel;
    Label1: TLabel;
    EditName: TEdit;
    Label3: TLabel;
    EditSurname: TEdit;
    EditBirthDate: TDateTimePicker;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label5: TLabel;
    ButtonAddRecord: TButton;
    Label7: TLabel;
    Label9: TLabel;
    DateTimePickerExpDate: TDateTimePicker;
    SpinEditQty: TSpinEdit;
    Label8: TLabel;
    EditThing: TEdit;
    Label4: TLabel;
    q_AddPerson: TADOQuery;
    Panel1: TPanel;
    Splitter1: TSplitter;
    q_AddRecord: TADOQuery;
    DBComboBox1: TDBComboBox;
    EditFamily: TEdit;
    EditPerson: TEdit;
    Panel2: TPanel;
    Splitter2: TSplitter;
    DBGrid1: TDBGrid;
    DBGrid10People: TDBGrid;
    q_Get10People: TADOQuery;
    ds_Get10People: TDataSource;
    q_Get10PeopleRecord: TADOQuery;
    ds_Get10PeopleRecord: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonAddPersonClick(Sender: TObject);
    procedure DBGridPersonCellClick(Column: TColumn);
    procedure ButtonAddRecordClick(Sender: TObject);
    procedure DBGrid10PeopleCellClick(Column: TColumn);
    procedure FormActivate(Sender: TObject);
  private
    FLinkedTab: TTabSheet;
    { Private declarations }
  public
    //связь окна с вкладкой
    property LinkedTab:TTabSheet read FLinkedTab write FLinkedTab;
    { Public declarations }
  end;
var
  fOper: TfOper;

implementation

{$R *.dfm}



procedure TfOper.ButtonAddPersonClick(Sender: TObject);
begin
  If EditName.Text = '' then Application.MessageBox('Ошибка в поле Имя','Ошибка') else
    If EditFamily.Text = '' then Application.MessageBox('Ошибка в поле Фамилия','Ошибка') else
      If EditSurname.Text = '' then Application.MessageBox('Ошибка в поле Отчесвто','Ошибка') else
      begin
        q_AddPerson.Parameters.ParamByName('Name').Value:=EditName.Text;
        q_AddPerson.Parameters.ParamByName('Family').Value:=EditFamily.Text;
        q_AddPerson.Parameters.ParamByName('Surname').Value:=EditSurname.Text;
        q_AddPerson.Parameters.ParamByName('BirthDate').Value:=DateToStr(EditBirthDate.Date);
        try
          q_AddPerson.ExecSQL;
          Application.MessageBox('Добавлено','Успешно');
          q_Get10People.Close;
          q_Get10People.Open;
        except
          Application.MessageBox('Ошибка добавления','Ошибка');
          exit;
        end;
        ds_GetPeopleFamily.DataSet.Active := False;
        ds_GetPeopleFamily.DataSet.Active := True;
      end;
end;
procedure TfOper.ButtonAddRecordClick(Sender: TObject);
begin
  If EditThing.Text = '' then Application.MessageBox('Ошибка в поле Предмет','Ошибка') else
    If (EditPerson.Text = 'Выполните поиск...') or (EditPerson.Text = '   ') then Application.MessageBox('Ошибка в поле Кому','Ошибка') else
      begin
        q_AddRecord.Parameters.ParamByName('id_People').Value:=DBGridPerson.DataSource.DataSet.FieldByName('Id').Value;
        q_AddRecord.Parameters.ParamByName('Thing').Value:=EditThing.Text;
        q_AddRecord.Parameters.ParamByName('Qty').Value:=SpinEditQty.Value;
        q_AddRecord.Parameters.ParamByName('ExpDate').Value:=DateToStr(DateTimePickerExpDate.Date);
        try
          q_AddRecord.ExecSQL;
          Application.MessageBox('Занесено','Успешно');
        except
          Application.MessageBox('Ошибка добавления','Ошибка');
          exit;
        end;
        ds_Get10PeopleRecord.DataSet.Active := False;
        ds_Get10PeopleRecord.DataSet.Active := True;
      end;
end;

procedure TfOper.DBGrid10PeopleCellClick(Column: TColumn);
begin
  If DBGrid10People.DataSource.DataSet.IsEmpty = false then
  begin
    q_Get10PeopleRecord.Close;
    q_Get10PeopleRecord.Parameters.ParamByName('id_People').Value:=DBGrid10People.DataSource.DataSet.FieldByName('Id').Value;
    q_Get10PeopleRecord.Open;
    ds_Get10PeopleRecord.DataSet.Active := False;
    ds_Get10PeopleRecord.DataSet.Active := True;
  end;
end;

procedure TfOper.DBGridPersonCellClick(Column: TColumn);
begin
  inherited;

  If DBGridPerson.DataSource.DataSet.IsEmpty = false then
  EditPerson.Text := DBGridPerson.DataSource.DataSet.FieldByName('Name').Text + ' '
    + DBGridPerson.DataSource.DataSet.FieldByName('Family').Text + ' '
    + DBGridPerson.DataSource.DataSet.FieldByName('Surname').Text + ' '
    + DBGridPerson.DataSource.DataSet.FieldByName('BirthDate').Text;
end;

procedure TfOper.FormActivate(Sender: TObject);
begin
  //для активаци PageControl в main
  if not Assigned(FLinkedTab)then exit;
  LinkedTab.PageControl.ActivePage := FLinkedTab;
end;

procedure TfOper.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  LinkedTab.Free;
  Action := CaFree;
end;


end.
