unit ListenerArduino;

interface

uses
  ListenerArduinoAPI, AdPort;

type
  TListenerCourse = class(TInterfacedObject, IArduinoListener)
  strict private
    FCOM: TApdComPort;
    FCourse: Integer;
    function GetValorPropriedade: Integer;
    procedure IniciarComunicacao;
    procedure PararComunicacao;
    procedure SetValorPropriedade(const Value: Integer);
  public
    constructor Create; override;
    destructor Destroy; override;
  end;

implementation

uses
  System.SysUtils, Constantes;

constructor TListenerCourse.Create;
begin
  inherited;
  FCOM := TApdComPort.Create(nil);
  FCOM.Baud := BAUD_COURSE;
  FCOM.PromptForPort := False;

end;

destructor TListenerCourse.Destroy;
begin
  FreeAndNil(FCOM);
  inherited;
end;

function TListenerCourse.GetValorPropriedade: Integer;
begin
  Result := FCourse;
end;

procedure TListenerCourse.IniciarComunicacao;
begin

end;

procedure TListenerCourse.PararComunicacao;
begin

end;

procedure TListenerCourse.SetValorPropriedade(const Value: Integer);
begin
  FCourse := Value;

  FCOM.PutString(FCourse.ToString);
end;

end.
