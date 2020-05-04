program VokaleUndKonsonanten (input, output);
{ Bestimmt in einem einzulesenden Satz die Anzahl der vorkommenden Vokale un Konsonanten}
    type
    tBuchst = 'a'..'z';
    tNatZahl = 0..maxint;
    tHaeufigkeit = array[tBuchst] of tNatZahl;

    var
    Anzahl: tHaeufigkeit;
    Zeichen: char;
    Gesamtzahl,
    Vokalzahl : tNatzahl;

begin
    { Initialisieren der Zaehler }
    for Zeichen := 'a' to 'z' do
        Anzahl[Zeichen] := 0;
    Gesamtzahl := 0;

    write('Geben Sie eine Satz mit dem Punkt am Ende ein: ');
    read(Zeichen);
    while Zeichen <> '.' do
    begin
        if (Zeichen >= 'a') and (Zeichen <= 'z') then
        begin
            Anzahl[Zeichen] := Anzahl[Zeichen] + 1;
            Gesamtzahl := Gesamtzahl + 1
        end;
        read(Zeichen)
    end;
    begin
    writeln;
    Vokalzahl := Anzahl['a'] + Anzahl['e'] + Anzahl['i'] + Anzahl['o'] + Anzahl['u'];
    writeln('Anzahl der Vokale: ', Vokalzahl, '.');
    write('Anzahl der Konsonanten: ');
    writeln(Gesamtzahl - Vokalzahl, '.');
    end;
    readln;
end. { VokaleUndKonsonanten }