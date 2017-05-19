program project1;
uses Crt;
var eins,zwei,drei,vier,funf,secs,sieb,acht,neun : char;
    spieler,gewonnen : integer;

procedure wechsel(benutzer : integer);
  begin
    if benutzer = 1 then spieler := 2;
    if benutzer = 2 then spieler := 1;
  end;

procedure aendern;
var zahl : integer;
    w : boolean;
  begin
    repeat
      w := true;
      readln(zahl);
      if (spieler = 1) and (zahl = 1) and (eins = '1') then eins := 'o'
      else if (spieler = 1) and (zahl = 2) and (zwei = '2') then zwei := 'o'
      else if (spieler = 1) and (zahl = 3) and (drei = '3') then drei := 'o'
      else if (spieler = 1) and (zahl = 4) and (vier = '4') then vier := 'o'
      else if (spieler = 1) and (zahl = 5) and (funf = '5') then funf := 'o'
      else if (spieler = 1) and (zahl = 6) and (secs = '6') then secs := 'o'
      else if (spieler = 1) and (zahl = 7) and (sieb = '7') then sieb := 'o'
      else if (spieler = 1) and (zahl = 8) and (acht = '8') then acht := 'o'
      else if (spieler = 1) and (zahl = 9) and (neun = '9') then neun := 'o'
      else if (spieler = 2) and (zahl = 1) and (eins = '1') then eins := 'x'
      else if (spieler = 2) and (zahl = 2) and (zwei = '2') then zwei := 'x'
      else if (spieler = 2) and (zahl = 3) and (drei = '3') then drei := 'x'
      else if (spieler = 2) and (zahl = 4) and (vier = '4') then vier := 'x'
      else if (spieler = 2) and (zahl = 5) and (funf = '5') then funf := 'x'
      else if (spieler = 2) and (zahl = 6) and (secs = '6') then secs := 'x'
      else if (spieler = 2) and (zahl = 7) and (sieb = '7') then sieb := 'x'
      else if (spieler = 2) and (zahl = 8) and (acht = '8') then acht := 'x'
      else if (spieler = 2) and (zahl = 9) and (neun = '9') then neun := 'x'
      else
        begin
          w := false;
          clrscr;
          writeln('    ',sieb,' | ',acht,' | ',neun,'  ');
          writeln('   ---|---|---');
          writeln('    ',vier,' | ',funf,' | ',secs,'  ');
          writeln('   ---|---|---');
          writeln('    ',eins,' | ',zwei,' | ',drei,'  ');
          writeln;
          writeln('-----------------');
          writeln;
          writeln;
          writeln('Ueberpruefen Sie ihre Eingabe!');
          writeln;
          writeln('Spieler ',spieler,' ist am Zug!');
        end;
    until w = true;
  end;

procedure zeigen;
  begin
    clrscr;
    writeln('    ',sieb,' | ',acht,' | ',neun,'  ');
    writeln('   ---|---|---');
    writeln('    ',vier,' | ',funf,' | ',secs,'  ');
    writeln('   ---|---|---');
    writeln('    ',eins,' | ',zwei,' | ',drei,'  ');
    writeln;
    writeln('-----------------');
    writeln;
    writeln;
    writeln('Spieler ',spieler,' ist am Zug!');
  end;

procedure sieg(var win : integer);
  begin
    if (eins <> '1') and (zwei <> '2') and (drei <> '3') and (vier <> '4') and (funf <> '5') and (secs <> '6') and (sieb <> '7') and (acht <> '8') and (neun <> '9') then win := 3;
    if (eins = 'o') and (zwei = 'o') and (drei = 'o') then win := 1;
    if (vier = 'o') and (funf = 'o') and (secs = 'o') then win := 1;
    if (sieb = 'o') and (acht = 'o') and (neun = 'o') then win := 1;
    if (sieb = 'o') and (vier = 'o') and (eins = 'o') then win := 1;
    if (acht = 'o') and (funf = 'o') and (zwei = 'o') then win := 1;
    if (neun = 'o') and (secs = 'o') and (drei = 'o') then win := 1;
    if (sieb = 'o') and (funf = 'o') and (drei = 'o') then win := 1;
    if (neun = 'o') and (funf = 'o') and (eins = 'o') then win := 1;
    if (eins = 'x') and (zwei = 'x') and (drei = 'x') then win := 2;
    if (vier = 'x') and (funf = 'x') and (secs = 'x') then win := 2;
    if (sieb = 'x') and (acht = 'x') and (neun = 'x') then win := 2;
    if (sieb = 'x') and (vier = 'x') and (eins = 'x') then win := 2;
    if (acht = 'x') and (funf = 'x') and (zwei = 'x') then win := 2;
    if (neun = 'x') and (secs = 'x') and (drei = 'x') then win := 2;
    if (sieb = 'x') and (funf = 'x') and (drei = 'x') then win := 2;
    if (neun = 'x') and (funf = 'x') and (eins = 'x') then win := 2;
  end;

begin
  clrscr;
  gewonnen := 0;
  spieler := 1;
  eins := '1';
  zwei := '2';
  drei := '3';
  vier := '4';
  funf := '5';
  secs := '6';
  sieb := '7';
  acht := '8';
  neun := '9';
  zeigen;
  while gewonnen = 0 do
  begin
    aendern;
    sieg(gewonnen);
    wechsel(spieler);
    zeigen;
  end;
  clrscr;
  writeln('    ',sieb,' | ',acht,' | ',neun,'  ');
  writeln('   ---|---|---');
  writeln('    ',vier,' | ',funf,' | ',secs,'  ');
  writeln('   ---|---|---');
  writeln('    ',eins,' | ',zwei,' | ',drei,'  ');
  writeln;
  writeln('-----------------');
  writeln;
  writeln;
  if (gewonnen = 1) or (gewonnen = 2) then writeln('Der Sieger ist Spieler ',gewonnen,'!');
  if gewonnen = 3 then writeln('Unentschieden!');
  readln;
end.       
