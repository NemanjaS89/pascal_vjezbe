program Maximum(input, output);

    var
    currentMax: integer;
    userInput: integer;


begin
    writeln('Bitte geben Sie eine Nummer ein. Geben Sie eine Null ein fuer das Ende: ');
    readln(userInput);
    currentMax := userInput;
    
    while userInput <> 0 do
    begin
        if userInput > currentMax then
            currentMax := userInput;
        readln(userInput);
    end;
    if currentMax <> 0 then
        begin
        writeln('Maximum Ihrer Eingabefolge ist ', currentMax, '.')
        end
    else
        begin
        writeln('Leere Eingabefolge!')
        end;
        
    readln
end.