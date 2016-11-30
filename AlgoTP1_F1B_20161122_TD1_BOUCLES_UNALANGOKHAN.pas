program AlgoTP1_F1B_20161122_TD1_BOUCLES_UNALANGOKHAN; //nom programme

uses crt,math;

var nbr,choix,test,binaire,i,long,compteur:integer;
	ch,test2,nbr2:string;	
	
	
begin		//Debut


repeat

choix:=0;
test:=0;
ch:='' ;
clrscr;

writeln('Bienvenue dans le programme qui permet de transformer vos chiffre en binaire et inversement.',#13#10,
'Entrez 1 ou 2 pour faire votre choix.',#13#10,'Choix 1 : Decimal -> Binaire',#13#10,'Choix 2 : Binaire -> Decimal');
readln(choix);		//Choix de l'utilisateur
clrscr;

if choix=1 then	//premier choix
begin

	writeln('Entrez un nombre pour le convertir en binaire : ');
	readln(nbr);

	repeat		//On entre dans la boucle
		If nbr mod 2 = 1 then 	// condition
			ch:='1'+ch
		
		else
			ch:='0'+ch ;
			nbr:=nbr div 2;		
	until nbr=0;		//Condition sortie de boucle

	writeln(#13#10,'Le resultat de votre nombre binaire est : ',ch,#13#10,#13#10,	//resultat binaire
	'Entrez 1 pour recommencer, ou n''importe quelle autre touche pour quitter.');
	readln(test);		//choix pour recommencer ou quitter
	
end
else if choix=2 then	//deuzieme choix
begin

	binaire:=0;
	long:=0;
	test2:='';
	compteur:=0;
	
	writeln('Entre votre nombre binaire : ');
	readln(nbr2);
	long:=Length(nbr2);
	compteur:=long;


	for i:=0 to long-1 do		//on entre dans la boucle
	begin

		test2:=copy(nbr2,compteur,1);
		compteur:=compteur-1;
		
		if (test2='1') AND (i<>0) then		//condition
		begin
			binaire:=binaire+trunc(power(2,i));
		end
		else if (i=0) AND (test2='0') then		//condition 2
		begin
			binaire:=1
		end
	
	end;		//on sort de la boucle
	
	
		writeln('Le resultat de votre nombre decimal est : ',binaire-1,#13#10,#13#10,		//resultat
		'Entrez 1 pour recommencer, ou n''importe quelle autre touche pour quitter.');
		readln(test);		//choix pour recommencer ou quitter

end
else
	writeln('Desole mais ce choix n''existe pas.')

until ((choix<>1) OR (choix<>2)) AND (test<>1);


writeln('Merci et aurevoir!');

readln;

END.		//Fin programme
