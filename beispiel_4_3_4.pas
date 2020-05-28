program FeldSort (input, output);

    const 
    FELDGROESSE = 5;

    type
    tIndex = 1..FELDGROESSE;
    tFeld = array[tIndex] of integer;

    var 
    EingabeFeld : tFeld;
    MinPos,
    i : tIndex;
    Tausch : integer;

    function FeldMinimumPos ( Feld : tFeld; von, bis : tIndex): tIndex;
    { bestimmt die Position des Minimums im Feld zwischen von und bis, 1 <= von <= bis <= FELDGROESSE}
        var 
        MinimumPos,
        j : tIndex;
    
    begin
        MinimumPos := von;
        for j := von + 1 to bis do 
            if Feld[j] < Feld[MinimumPos] then
                MinimumPos := j;
            FeldMinimumPos := MinimumPos
    end;

begin
    { Einlesen des Feldes }
    writeln('Geben sie ', FELDGROESSE, ' Werte ein: ');
    for i := 1 to FELDGROESSE do 
        readln(EingabeFeld[i]);

    { Sortieren }
    for i := 1 to FELDGROESSE - 1 do 
    begin
        MinPos := FeldMinimumPos(EingabeFeld, i, FELDGROESSE);
        { Minimum gefunden, jetzt muessen wir es mit dem Element auf Position i vertauschen }
        Tausch := EingabeFeld[MinPos];
        EingabeFeld[MinPos] := EingabeFeld[i];
        EingabeFeld[i] := Tausch
    end;

    { Ausgabe des sortierten Feldes }
    for i := 1 to FELDGROESSE do
        write(EingabeFeld[i]:6);
    writeln;
    readln
end. { FeldSort }