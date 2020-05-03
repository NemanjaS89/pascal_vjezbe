program MinimumFeld (input, output);

const
FELDGROESSE = 5;

type
tIndex = 1..FELDGROESSE;
tZahlenFeld = array [tIndex] of integer;

var
i : tIndex;
Feld : tZahlenFeld;
Min : integer;
minFeld : tIndex;

begin
    writeln ('Geben Sie bitte 20 integer-Zahlen ein.');

    for i := 1 to FELDGROESSE do
        readln(Feld[i]);

    Min := Feld[1];
    for i := 1 to FELDGROESSE do
        if Feld[i] <= Min then
        begin
            Min := Feld[i];
            minFeld := i
        end;
    writeln('Die kleinste eingegebene Zahl ist ', Min, ' und wurde im Feld ', minFeld, ' gelesen.');
    readln
end.