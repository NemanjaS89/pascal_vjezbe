program FolgenInverter (input, output);

type
tIndex = 1..5;
tZahlenFeld = array [tIndex] of integer;

var
Feld : tZahlenFeld;
i : tIndex;

begin
    for i := 1 to 5 do
    begin
        write('Bitte geben Sie die ', i, '. Zahl ein: ');
        readln(Feld[i])
    end;

    for i := 5 downto 1 do
        writeln(Feld[i]);
    readln
end. { FolgenInverter }