program Fakultaet(input, output);

    type
    tNatZahl = 1..maxint;

    var
    i : tNatZahl;
    Zahl,
    Ergebnis : integer;

begin
    writeln('Fuer welche Zahl soll die Fakultaet berechnet werden?');
    readln(Zahl);

    if Zahl < 0 then
        writeln('Fuer negative Zahlen ist die Fakultaet nicht definiert.')
    else
    begin
        Ergebnis := 1; { Initialisierung }
        for i := 1 to Zahl do
            Ergebnis := Ergebnis * i;
        writeln('Die Fakultaet von ', Zahl, ' lautet ', Ergebnis, '.');
    end;
    readln
end. { Fakultaet }