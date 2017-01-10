program carre_magique;
uses crt;

const	
	tailletab=5;
type 		
		  tableau=array[1..tailletab, 1..tailletab] of integer;

procedure placement_1( var actualI:integer; var actualJ:integer;var tab1:tableau); //placement du 1 
var 
	i,j:integer;
		
begin
	for i:= 1 to tailletab do
	begin
		for j := 1 to tailletab do
		begin
		    tab1[i][j] := 0;
			
		end;
		writeln();
	end;
	actualI := tailletab div 2;   		// actual sont les variables qui définissent le placement des axes XY au moment T
	actualJ := tailletab div 2 + 1;		// div pour prendre la valeur arrondie vers le bas d'un entier
    tab1[actualI][actualJ] := 1;
		
	
	
end;
procedure remplissage1(var actualI:integer; var actualJ:integer; var cpt:integer; var tab1:tableau);		// condition de la procédure,cpt stockage valeur

																						// position des chiffres sur les valeurs 0 
VAR
i,j:integer;
begin
	FOR i:=1 to tailletab do
	begin
		FOR j:=1 to tailletab do
			begin
				tab1[i][j]:=0;
			end;
			writeln();
	end;
	cpt:=1;
		while(cpt<tailletab*tailletab+1) do
			begin
				actualI:=actualI-1;
				actualJ:=actualJ+1;
			IF(actualI < 1) then
				begin
				actualI:=tailletab;
				end;
				IF(actualJ > tailletab) then
					begin
					actualJ := 1;
					end;
			while(tab1[actualI][actualJ] <> 0) do
				begin
				actualI:=actualI-1;
				actualJ:=actualJ-1;
			IF(actualI < 1) then
				begin
				actualI:=tailletab;
				end;
			IF(actualJ > tailletab) then
				begin
				actualJ:= 1;
				end;
			IF(actualJ < 1) then
				begin
				actualJ:=tailletab;
				end;
			end;
		end;
end;
	
	
procedure affichage (tab1:tableau);

var 
	i,j:integer;
begin
	for i:= 1 to tailletab do
	begin
		for j := 1 to tailletab do
		begin
			
		    write(tab1[i][j]);
			write('  ');
		end;
		writeln();
	end;
end;
		
		



var 
	 tab2: array[1..tailletab, 1..tailletab] of integer;
	 i, j, actualI,actualJ,cpt:integer;

begin
  clrscr;
	placement_1(actualI,actualJ,tab2);
	remplissage1(actualI,actualJ,cpt,tab2);	//appel de la procedure
	affichage(tab2);
	
	
    writeln();
    readln;
end.

	{
									
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	}
