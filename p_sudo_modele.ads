package p_sudo_modele is
-----------------------------------------------------------------------------------------------------------------
-- taille des régions et nombre de regions de la grille
COTEREGION : constant Positive := 3; -- région large et haute de 3 cases
NBREGIONS : constant Positive := 3; -- grille large et haute de 3 regions
------------------------------------------------------------------------------------------------------------------

-- vocabulaire des éléments de la grille
type T_Valeur is ('.','1','2','3','4','5','6','7','8','9'); -- '.' représente une case vide

subtype T_Symbole is T_Valeur range '1'..'9';

VIDE : constant T_Valeur := T_Valeur'First; 

subtype integer9 is integer range 1..9;

------------------------------------------------------------------------------------------------------------------
 -- grille de sudoku
subtype NumLigne  is Positive range 1..COTEREGION*NBREGIONS;

subtype NumColonne is Positive range 1..COTEREGION*NBREGIONS;

type TV_Grille is array (NumLigne, NumColonne) of T_Valeur;

-----------------------------------------------------------------------------------------------------------------

function EstCoupPossible (G : in TV_Grille; L : in Numligne; C : in Numcolonne; S : in T_Symbole) return Boolean;
 -- {} => {résultat = vrai s'il est possible de jouer le symbole s en position (l,c) dans la grille g, faux sinon}

------------------------------------------------------------------------------------------------------------------

function EstTerminee(G : in TV_Grille) return Boolean;
--{} => {résultat = vrai si toutes les cases de G ont été remplie (<=> G est résolue)

-----------------------------------------------------------------------------------------------------------------
-- types et procédures nécessaires pour la procédure Resoudre
-----------------------------------------------------------------------------------------------------------------
type TV_Sol is array(T_symbole) of boolean;
------------------------------------------------------------------------------------------------------------------
procedure RechVide(G : in TV_Grille; l : out integer; c : out integer);
-- {il reste au moins une case vide} => {l et c sont les numeros de ligne et colonne de la premiere case vide}
------------------------------------------------------------------------------------------------------------------
procedure RechSol(G : in TV_Grille; l : in integer; c : in integer; Vsol : out TV_Sol);
 -- {} => {Vsol(i) = vrai si i est une solution de la case G(l,c), faux sinon}
------------------------------------------------------------------------------------------------------------------
procedure SolaTester(Vsol : in out TV_sol; Sol: out T_valeur);
-- {} => {Sol = l'indice i de la premiere case de V tel que V(i) = vrai, VIDE sinon
-- si Sol est différent de VIDE, alors Vsol(i) prend la valeur faux}
------------------------------------------------------------------------------------------------------------------
procedure Resoudre (G : in out TV_Grille; Resolu : out Boolean);
--{} => {resolu=vrai si on a pu compléter toutes les cases vides de la grille G (G contient la solution) ;
 --  resolu =faux sinon (G est inchangée)}
------------------------------------------------------------------------------------------------------------------
 
end p_sudo_modele;
