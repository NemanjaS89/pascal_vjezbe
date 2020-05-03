program kleinsteZahl (input, output);

    var
    Zahl,
    Min : integer;

begin
    writeln('Geben Sie die Zahlen ein. <ctl> z beendet die Eingabe.');

    if eof then
        writeln('Leere Eingabefolge!')
    else
    begin
        readln(Zahl);
        Min := Zahl;
        while not eof do
        begin
        readln(Zahl);
        if Zahl < Min then
            Min := Zahl;
        end;
    writeln('Die kleinste Zahl ist ', Min, '.');
    end;
    readln
end.