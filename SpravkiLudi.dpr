program SpravkiLudi;

uses
  Vcl.Forms,
  Main in 'Main.pas' {fMain},
  Oper in 'Oper.pas' {fOper},
  DBunit in 'DBunit.pas' {fDBUnit},
  Find in 'Find.pas' {fFind},
  Statist in 'Statist.pas' {fStatist};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfMain, fMain);
  Application.CreateForm(TfDBUnit, fDBUnit);
  Application.CreateForm(TfFind, fFind);
 // Application.CreateForm(TfStatist, fStatist);
  //Application.CreateForm(TfOperator, fOperator);
  Application.Run;
end.
