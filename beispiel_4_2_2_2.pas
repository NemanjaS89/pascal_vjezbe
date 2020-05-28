program Seminar2 (input, output);

    const
    MAXTEILNEHMER = 12;
    TAGE = 31;
    MONATE = 12;
    MINJAHR = 1900;
    MAXJAHR = 2010;

    type
    tTag = 1..TAGE;
    tMonat = 1..MONATE;
    tJahr = MINJAHR..MAXJAHR;
    tNatZahlPlus = 0..maxint;
    tNatZahl = 0..maxint;
    tStatus = (aktiv, passiv);
    tIndex = 1..MAXTEILNEHMER;
    tString = string [20];
    tSeminarStudent = 
        record
            Name : tString;
            { Erweiterung: }
            Geburtstag : 
                record
                    Tag : tTag;
                    Monat : tMonat;
                    Jahr : tJahr;
                end;
                { Ende der Erweiterung }
            MatrikelNr : tNatZahlPlus;
            Status : tStatus;
        end;
    tTeilnehmerfeld = array[tIndex] of tSeminarStudent;


    var 
    Teilnehmerfeld : tTeilnehmerfeld;
    AnzStud : tNatZahl;
    i : tIndex;
    Status : char; { Zeichen zum Einlesen des Studentenstatus. 
                    Muss vom Typ char sein, um eingesesen werden zu koennen.
                    'a' entspricht aktiv, 
                    'p' entspricht passiv }

    
begin
    write('Wie viele Studenten nehmen am Seminar teil? ');
    readln(AnzStud);
    if AnzStud > MAXTEILNEHMER then
    begin
        writeln('Bitte hoechstens ', MAXTEILNEHMER, ' Eingaben!');
        AnzStud := MAXTEILNEHMER
    end;
    writeln('Geben Sie Name, Matr.Nr. und Aktivitaet der ', AnzStud:3, ' Teilnehmer ein: ');

    for i := 1 to AnzStud do 
    begin
        write('Name: ');
        readln(Teilnehmerfeld[i].Name);
        write('Matr.Nr.: ');
        readln(Teilnehmerfeld[i].MatrikelNr);
        write('a - aktiv, p - passiv: ');
        readln(Status);
        if Status = 'a' then 
            Teilnehmerfeld[i].Status := aktiv
        else
            Teilnehmerfeld[i].Status := passiv
    end;

    { Scheine ausgeben }
    writeln;
    for i := 1 to AnzStud do 
    begin
        if Teilnehmerfeld[i].Status = aktiv then
        begin
            writeln('Der Student ', Teilnehmerfeld[i].Name);
            write('mit der Matrikel-Nr. ');
            writeln(Teilnehmerfeld[i].MatrikelNr);
            writeln('hat mit Erfolg am Seminar teilgenommen.');
        end
    end;
    writeln;

    writeln('Liste aller aktiven Seminar-Teilnehmer');
    writeln('--------------------------------------');
    for i := 1 to AnzStud do 
        if Teilnehmerfeld[i].Status = aktiv then
            writeln(Teilnehmerfeld[i].Name);
        writeln;

    writeln('Liste aller Zuhoerer im Seminar');
    writeln('-------------------------------');
    for i := 1 to AnzStud do 
        if Teilnehmerfeld[i].Status = passiv then
            writeln(Teilnehmerfeld[i].Name);
        writeln;
    readln
end.