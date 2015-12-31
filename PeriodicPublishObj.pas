unit PeriodicPublishObj;

interface

uses
  Windows, System.Classes, System.SysUtils,
  Winapi.Messages, Vcl.Dialogs, System.UITypes, System.StrUtils,
  Vcl.Forms, Vcl.ExtCtrls, CodeSiteLogging;

type
  TPublishProc = procedure(topic, payload: string; QoS: Integer; Retain: Boolean) of object;

  TBUBFuncsType = (pbfRandom, pbfSinus, pbfTriangle, pbfSquare);

type
  TPeriodicPublishObj = class(TTimer)
  private
    F_topic: String;
    F_paylod: STring;
    F_QoS: Integer;
    F_retain: Boolean;

    F_function: Integer; // Номер функции
    F_max: single; // Максимум выходной величины
    F_min: single; // Минимум  выходной величины
    F_periodicity: Integer;

    F_sample_cnt: Integer; // Счетчик отсчетов
    F_publishproc: TPublishProc;
    F_offs: Integer;

    procedure SetPayload(Value: String);
  protected
    procedure EventHandler(Sender: TObject);

  public
    procedure SetPackData(topicv, payloadv: string; QoSv: Integer; Retainv: Boolean);
    procedure SetFunction(func: Integer; minv, maxv: single; periodicityv, offsv: Integer);
    constructor Create(AOwner: TComponent; timeout: Integer; publishproc: TPublishProc);
    destructor Destroy; override;
  published
    property topic: String read F_topic write F_topic;
    property payload: String read F_paylod write SetPayload;
    property QoS: Integer read F_QoS write F_QoS default 0;
    property Retain: Boolean read F_retain write F_retain default False;
  end;

implementation

constructor TPeriodicPublishObj.Create(AOwner: TComponent; timeout: Integer; publishproc: TPublishProc);
begin
  inherited Create(AOwner);
  Enabled := False;
  Interval := timeout;
  OnTimer := EventHandler;
  F_publishproc := publishproc;
end;

procedure TPeriodicPublishObj.SetPackData(topicv, payloadv: string; QoSv: Integer; Retainv: Boolean);
begin
  F_topic := topicv;
  F_QoS := QoSv;
  F_retain := Retainv;

  payload := payloadv;
end;

procedure TPeriodicPublishObj.SetFunction(func: Integer; minv, maxv: single; periodicityv, offsv: Integer);
begin
  F_function := func;
  F_max := maxv;
  F_min := minv;
  F_periodicity := periodicityv;
  F_offs := offsv;
end;

procedure TPeriodicPublishObj.SetPayload(Value: String);
begin
  F_paylod := Value;
end;

procedure TPeriodicPublishObj.EventHandler(Sender: TObject);
var
  v: single;
  vstr: String;
begin
  try
    case TBUBFuncsType(F_function) of
      pbfRandom:
        v := Random * (F_max - F_min) + F_min;

      pbfSinus:
        v := ((sin(((F_sample_cnt + F_offs)mod F_periodicity) * 2 * 3.141592653 / F_periodicity) + 1) / 2) * (F_max - F_min) + F_min;

      pbfTriangle:
        v := 0;
      pbfSquare:
        v := 0;
    else
      v := 0;

    end;
  except
    v := 0;
  end;

  // Ищем и заменяем а Paylod патерн переменной на саму переменню
  try
    vstr := format(F_paylod, [v]);
  except
    vstr := F_paylod;
  end;

  if Assigned(F_publishproc) then
    F_publishproc(F_topic, vstr, F_QoS, F_retain);

  Inc(F_sample_cnt);
end;

destructor TPeriodicPublishObj.Destroy;
begin
  Enabled := False;
  inherited Destroy;
end;

end.
