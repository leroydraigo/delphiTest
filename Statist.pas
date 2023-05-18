unit Statist;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Find, Data.DB, Data.Win.ADODB, DBunit,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfStatist = class(TfFind)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Splitter2: TSplitter;
    DBGrid1: TDBGrid;
    DBGrid10People: TDBGrid;
    Splitter1: TSplitter;
    Label1: TLabel;
    DTPickerAdd1: TDateTimePicker;
    DTPickerAdd2: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DTPickerBirth1: TDateTimePicker;
    Label5: TLabel;
    DTPickerBirth2: TDateTimePicker;
    Label6: TLabel;
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    ds_GetPeopleBirthAdd: TDataSource;
    q_GetPeopleBirthAdd: TADOQuery;
    q_GetPeopleRecord: TADOQuery;
    ds_GetPeopleRecord: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid10PeopleCellClick(Column: TColumn);
    procedure FormActivate(Sender: TObject);
  private
     FLinkedTab: TTabSheet;
    { Private declarations }
  public
      property LinkedTab:TTabSheet read FLinkedTab write FLinkedTab;
    { Public declarations }
  end;

var
  fStatist: TfStatist;

implementation

{$R *.dfm}

procedure TfStatist.Button1Click(Sender: TObject);
var
   Add1, Add2, Birth1, Birth2 : string;
begin
  if CheckBox2.Checked then
    begin
      Add1:=DateToStr(DTPickerAdd1.Date);
      Add2:=DateToStr(DTPickerAdd2.Date);
    end
    else
    begin
      Add1:='01/01/1910';
      Add2:='01/01/2500';
    end;
  if CheckBox1.Checked then
    begin
      Birth1:=DateToStr(DTPickerBirth1.Date);
      Birth2:=DateToStr(DTPickerBirth2.Date);
    end
    else
    begin
      Birth1:='01/01/1910';
      Birth2:='01/01/2500';
    end;
    q_GetPeopleBirthAdd.Close;
    q_GetPeopleBirthAdd.Parameters.ParamByName('Birth1').Value:=Birth1;
    q_GetPeopleBirthAdd.Parameters.ParamByName('Birth2').Value:=Birth2;
    q_GetPeopleBirthAdd.Parameters.ParamByName('Add1').Value:=Add1;
    q_GetPeopleBirthAdd.Parameters.ParamByName('Add2').Value:=Add2;
  try
    q_GetPeopleBirthAdd.Open;
    ds_GetPeopleBirthAdd.DataSet.Active := False;
    ds_GetPeopleBirthAdd.DataSet.Active := True;
  except
    Application.MessageBox('Ошибка поиска','Ошибка');
    exit;
  end;


end;

procedure TfStatist.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked = false then
  begin
    DTPickerBirth1.Enabled := false;
    DTPickerBirth2.Enabled := false;
  end
  else
  begin
    DTPickerBirth1.Enabled := true;
    DTPickerBirth2.Enabled := true;
  end;

end;

procedure TfStatist.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked = false then
  begin
    DTPickerAdd1.Enabled := false;
    DTPickerAdd2.Enabled := false;
  end
  else
  begin
    DTPickerAdd1.Enabled := true;
    DTPickerAdd2.Enabled := true;
  end;
end;

procedure TfStatist.DBGrid10PeopleCellClick(Column: TColumn);
begin
  If DBGrid10People.DataSource.DataSet.IsEmpty = false then
  begin
    q_GetPeopleRecord.Close;
    q_GetPeopleRecord.Parameters.ParamByName('id_People').Value:=DBGrid10People.DataSource.DataSet.FieldByName('Id').Value;
    q_GetPeopleRecord.Open;
    ds_GetPeopleRecord.DataSet.Active := False;
    ds_GetPeopleRecord.DataSet.Active := True;
  end;

end;

procedure TfStatist.FormActivate(Sender: TObject);
begin
  inherited;
  //для активаци PageControl в main
  if not Assigned(FLinkedTab)then exit;
  LinkedTab.PageControl.ActivePage := FLinkedTab;
end;

procedure TfStatist.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  LinkedTab.Free;
  Action := CaFree;
end;

end.
