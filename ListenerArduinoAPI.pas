unit ListenerArduinoAPI;

interface

type
  IArduinoListener = interface(IInterface)
  ['{5FDA8373-A910-493C-B92B-F2537CD957C8}']
    function GetValorPropriedade: Integer;
    procedure PararComunicacao;
    procedure IniciarComunicacao;
    procedure SetValorPropriedade(const Value: Integer);
    property ValorPropriedade: Integer read GetValorPropriedade write SetValorPropriedade;
  end;

implementation

end.
