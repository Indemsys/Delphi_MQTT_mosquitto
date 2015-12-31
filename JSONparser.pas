unit JSONparser;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  System.Contnrs, superobject, supertypes;

type
  PSuperObjectIter = ^TSuperObjectIter;

type
  Tsobj = record
    obj: ISuperObject;
  end;

type
  Psobj = ^Tsobj;

function ParseJSON(src: string): TStringList;

implementation

function ParseJSON(src: string): TStringList;
var
  obj: ISuperObject;
  objects: TStack;
  entries: TStack;
  piter: PSuperObjectIter;
  pobj: Psobj;

  list: TStringList;
  val: extended;
begin

  list := TStringList.Create;
  try
    objects := TStack.Create;
    entries := TStack.Create;
    try
      objects.Push(Nil);
      entries.Push(Nil);

      obj := TSuperObject.ParseString(PSOChar(src), False);

      if obj = Nil then
      begin
        // Пытаемся расшифровать строку как простое число
        try
          val := StrToFloat(src);
        except
          val := 0;
        end;
        list.Add(format('T=%g', [val]));
      end
      else
      begin
        New(piter);
        New(pobj);
        pobj^.obj := obj;
        ObjectFindFirst(pobj^.obj, piter^); // Позиционируемся на первый подчиненный объект
        while (True) do
        begin
          repeat
            if (piter.val.DataType = stObject) or (piter.val.DataType = stArray) then
            begin
              // Если это объект составной, то переключаемся на его внутренние объекты, а сам текущий объект и итератор сохранаяем в стеке
              objects.Push(pobj);
              entries.Push(piter);
              New(pobj);
              pobj^.obj := piter.val;
              New(piter);
              if ObjectFindFirst(pobj^.obj, piter^) then
                continue; // Позиционируемся на первый подчиненный объект
              // Здесь неопределено, вероятно здесь будем в случае ошибки
            end;
            if piter.val = Nil then
              break;

            // Здесь имеем ключ и значение объекта JSON содержащего интересующие данные
            list.Add(format('%s=%g', [piter.key, piter.val.AsDouble]));
            // Memo1.Lines.Add('Type:' + IntToStr(Integer(piter.val.DataType)) + '  Key: "' + piter.key + '"  Val:  ' + piter.val.AsJSon + Format(' Number: %f' ,[piter.val.AsDouble]) );

            if not ObjectFindNext(piter^) then
              break;
          until (False);
          ObjectFindClose(piter^);

          repeat
            if objects.Count <> 0 then
            begin
              Dispose(pobj);
              Dispose(piter);
              pobj := Psobj(objects.Pop);
              piter := PSuperObjectIter(entries.Pop);
              if objects.Count = 0 Then
                break;
            end
            else
            begin
              break;
            end;

            if not ObjectFindNext(piter^) then
              ObjectFindClose(piter^)
            else
            begin
              break;
            end;

          until (False);

          if objects.Count = 0 then
            break;
        end;
        if pobj <> Nil Then
          Dispose(pobj);
        if piter <> Nil Then
          Dispose(piter);
      end;
    finally
      objects.Free;
      entries.Free;
    end;
  finally
    result := list;
  end;
end;

end.
