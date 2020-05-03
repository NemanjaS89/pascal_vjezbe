program kleinsteZahlRepeat (input, output);

    var
    Zahl,
    Min : integer;

begin
    writeln('Geben Sie die Zahlen ein. 0 beendet die Eingabe.');
    readln(Zahl);
    Min := Zahl;

    repeat
        if Zahl < Min then
            Min := Zahl;
        readln(Zahl);
    until Zahl = 0;

    if Min <> 0 then 
        writeln('Die kleinste Zahl ist ', Min, '.')
    else
        writeln('Leere Eingabefolge!');
    readln
end.