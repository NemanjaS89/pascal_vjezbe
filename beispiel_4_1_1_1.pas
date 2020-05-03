program Quadratzahl(input, output);
{ berechnet die Quadrate der Zahllen von 1 bis 10 }

    const 
    MAXINDEX = 10;

    type
    tIndex = 1..MAXINDEX;

    var 
    i : tIndex; { Laufvariable }

begin
    for i := 1 to MAXINDEX do
        writeln(i:2, sqr(i):5);
    readln
end. { Quadratzahl }