program Seminarverwaltung (input, output);

    const 
    MAXTEILNEHMER = 100;

    type
    tIndex = 1..MAXTEILNEHMER;
    tStatus = (aktiv, passiv);
    tFeld = array[tIndex] of tStatus;

    var 
    Status : tFeld;
    i : tIndex;
    Teilnehmer : integer;

begin
    repeat
        write('Bitte geben Sie die Nummer der Teilnehmer ein: ');
        readln(Teilnehmer)
    until (1 <= Teilnehmer) and (Teilnehmer <= MAXTEILNEHMER);

    for i := 1 to Teilnehmer do
        Status[i] := passiv;

    for i := 1 to Teilnehmer do
    begin
        write('Bitte deklarieren Sie den Teilnahmestatus des ', i, '. Teilnehmers (aktiv oder passiv): ');
        readln(Status[i]);
    end;
    write('Die Matrikelnummer aktiven Teilnehmer sind: ');
    for i := 1 to Teilnehmer do
        if Status[i] = aktiv then
            write(i:2);
    writeln;
    write('Die Matrikelnummer passiven Teilnehmer sind: ');
    for i := 1 to Teilnehmer do  
        if Status[i] = passiv then
            write(i:2);
    readln
end. { Seminarverwaltung }