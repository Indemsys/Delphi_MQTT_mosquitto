program TMQTTC;

uses
  Vcl.Forms,
  Main in 'Main.pas' {frmMain},
  MOSQUITTO in 'MOSQUITTO.PAS',
  MainDataModule in 'MainDataModule.pas' {dm: TDataModule},
  ConnProfilesTbl in 'ConnProfilesTbl.pas' {frmConnProfilesTbl},
  PeriodicPublishObj in 'PeriodicPublishObj.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
