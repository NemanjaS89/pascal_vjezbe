program StringTest (input, output);
{ Ein Beispiel fuer string-Operationen }

    const 
    MAXLAENGE = 100;

    var 
    Zeichenkette : string[MAXLAENGE];

begin
    write('Geben Sie einen Satz ein: ');
    readln(Zeichenkette);
    writeln(Zeichenkette);
    writeln('Das dritte Zeichen ist: ', Zeichenkette[3]);
    writeln('Das letzte Zeichen ist: ', Zeichenkette[length(Zeichenkette)]);
    readln
end. { StringTest }