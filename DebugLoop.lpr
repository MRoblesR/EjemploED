program DebugLoop;

var
  i, suma, promedio: Integer;
  numeros: array[1..100] of Integer;

begin
  WriteLn('=== Calculando suma de 100 números ===');
  WriteLn;
  
  // Llenar array con valores
  for i := 1 to 100 do
  begin
    numeros[i] := i;
  end;
  
  // Calcular suma
  suma := 0;
  for i := 1 to 100 do
  begin
    suma := suma + numeros[i];
    
    // BUG: en la iteración 50, restamos en vez de sumar
    if i = 50 then
      suma := suma - (numeros[i] * 2);
  end;
  
  WriteLn('Suma total: ', suma);
  WriteLn('Debería ser: ', (100 * 101) div 2);  // Fórmula: n*(n+1)/2
  
  promedio := suma div 100;
  WriteLn('Promedio: ', promedio);
  
  ReadLn;
end.
