program test (input, output);

    type
    tNatZahl = 1..maxint;
    
    var
    p : tNatZahl;
    q : tNatZahl;
    prim : boolean;

begin
    write('Zahl eingeben: ');
    readln(p);
    prim := true;
    q := 2;
    while (prim) and (q <= p - 1) do 
    begin
        if p mod q = 0 then
            prim := false;
        write(q);
        write(prim);
        q := q + 1
    end;
    readln
end.