program HashIdTest;

{$APPTYPE CONSOLE}

{$R *.res}

uses System.SysUtils
   , HashIds in 'HashIds.pas'
   ;
var
  oHashIds : THashIds;
begin
  oHashIds:=THashIds.Create('this is my salt');
  try
    Writeln('Result for Encrypt(12345) = '+oHashIds.Encrypt(12345));
    Writeln('Result for DecryptToStr(''NkK9'') = '+oHashIds.DecryptToStr('NkK9'));
  finally
    oHashIds.Free;
  end;
  readln;
end.
