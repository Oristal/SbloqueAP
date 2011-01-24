with p_esiut; use p_esiut;
package body p_sudo_modele is

-----------------------------------------------------------------------------------------------------------------
function EstCoupPossible (G : in TV_Grille; L : in Numligne; C : in Numcolonne; S : in T_Symbole) return Boolean is
-- {} => {résultat = vrai s'il est possible de jouer le symbole s en position (l,c) dans la grille g, faux sinon}
begin
-- A COMPLETER...
return false;
end EstCoupPossible;
-----------------------------------------------------------------------------------------------------------------
function EstTerminee(G : in TV_Grille) return Boolean is
--{} => {résultat = vrai si toutes les cases de G ont été remplie (<=> G est résolue)*
complet : boolean;
begin

	complet := true;

	for i in G'First(1)..G'Last(1) loop
			for j in G'First(2)..G'Last(2) loop
				if G(i,j) = VIDE then
					complet := false;
				end if;
			end loop;
	end loop;

return complet;

end EstTerminee;
-----------------------------------------------------------------------------------------------------------------
procedure RechVide(G : in TV_Grille; l : out integer; c : out integer) is
-- {il reste au moins une case vide} => {l et c sont les numeros de ligne et colonne de la premiere case vide}
begin
-- A COMPLETER...
	null;
end RechVide;
-----------------------------------------------------------------------------------------------------------------
procedure RechSol(G : in TV_Grille; l : in integer; c : in integer; Vsol : out TV_Sol) is
-- {} => {Vsol(i) = vrai si i est une solution de la case G(l,c), faux sinon}
begin
-- A COMPLETER...
	null;
end RechSol;
-----------------------------------------------------------------------------------------------------------------
procedure SolaTester(Vsol : in out TV_sol; Sol: out T_valeur) is
-- {} => {Sol = l'indice i de la premiere case de V tel que V(i) = vrai, VIDE sinon
--			 si Sol est différent de VIDE, alors Vsol(i) prend la valeur faux}
begin
-- A COMPLETER...
	null;
end SolaTester;
------------------------------------------------------------------------------------------------------------------
procedure Resoudre (G : in out TV_Grille; Resolu : out Boolean) is
--{} => {resolu=vrai si on a pu compléter toutes les cases vides de la grille G (G contient la solution) ;
--       resolu =faux sinon (G est inchangée)}
begin
-- A COMPLETER...
	null;
end Resoudre;
------------------------------------------------------------------------------------------------------------------
 
end p_sudo_modele;
