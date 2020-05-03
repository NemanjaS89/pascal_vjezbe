program FolgenMaximum (input, output);

    const
    FELDGROESSE = 5;

    type
    tIndex = 1..FELDGROESSE;
    tZahlenFeld = array [tIndex] of integer;

    var
    Feld : tZahlenFeld;
    Max : integer;
    i : tIndex;

begin
    writeln('Geben Sie ', FELDGROESSE:2, ' Zahlen ein.');

    for i := 1 to FELDGROESSE do
        readln(Feld[i]);

    Max := Feld[1];
    for i := 1 to FELDGROESSE do
        if Feld[i] > Max then
            Max := Feld[i];
        
    writeln('Maximum eingegebene Eingabefolge ist ', Max, '.');
    readln
end.