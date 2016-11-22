program AlgoTP1_F1B_20161122_TD1_BOUCLES_UNALANGOKHAN; //nom programme

uses crt;

var nbr:integer;
	ch:string;			// Declaration de variable
	

begin		//Debut

clrscr;
writeln('Entrez un nombre pour le convertir en binaire : ');
readln(nbr);
ch:='' ;

repeat		//On entre dans la boucle
	If nbr mod 2 = 1 then 	// condition
		ch:='1'+ch
		
	else
		ch:='0'+ch ;
		nbr:=nbr div 2;
		
until nbr=0;		//Condition sortie de boucle

writeln('Le resultat de votre nombre binaire est : ',ch);		//Ecrire le resultat binaire



readln;

END.		//Fin programme
