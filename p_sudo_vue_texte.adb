with p_esiut; use p_esiut;
with p_sudo_modele; use p_sudo_modele;

package body p_sudo_vue_texte is

---------------------------------------------------------------------
procedure lit_coup(l, c : out integer; s : out T_symbole) is 
-- demande un numéro de ligne, un numéro de colonne et une valeur  

a, b : integer;
k : integer;

begin

	loop
		begin
			Ecrire("Entrez le numéro de ligne : ") ; Lire(a); l := a;
			A_La_Ligne;
			exit;
		exception 
			when CONSTRAINT_ERROR => Ecrire_Ligne("Entrez un entier compris entre 1 et 9");
		end;
	end loop;

	loop
		begin
			Ecrire("Entrez le numéro d'une colonne : " ); Lire(b); c := b;
			A_La_Ligne;
			exit;
		exception
			when CONSTRAINT_ERROR => Ecrire_Ligne("Entrez un entier compris entre 1 et 9");
		end;
	end loop;

	loop
		begin
		Ecrire ("Entrez une valeur comprise entre 1 et 9 : "); Lire(k); s := T_Valeur'val(k);
		A_La_Ligne;
			exit;
		exception
			when CONSTRAINT_ERROR => Ecrire_Ligne("Entrez un entier compris entre 1 et 9");
		end;
	end loop;

end lit_coup;
---------------------------------------------------------------------
procedure init_grille(chG : in string; G : out TV_Grille) is
-- crée le contenu du "tableau" grille de sudoku à partir d'une chaine de (81) caractères

symbole : T_valeur;
k : integer := 1;

begin

	for i in G'First(1)..G'Last(1) loop
			for j in G'First(2)..G'Last(2) loop
				case chG(k) is	-- on convertis le caractère en T_Valeur
					when '.' => symbole := '.';
					when '1' => symbole := '1';
					when '2' => symbole := '2';
					when '3' => symbole := '3';
					when '4' => symbole := '4';
					when '5' => symbole := '5';
					when '6' => symbole := '6';
					when '7' => symbole := '7';
					when '8' => symbole := '8';
					when '9' => symbole := '9';
					when others => raise CONSTRAINT_ERROR;
				end case;
				G(i,j) := symbole;	-- On associe le T_Valeur à notre grille
				k := k+1;	-- On avance dans le chG
			end loop;
	end loop;

end init_grille;
---------------------------------------------------------------------
procedure trace_grille(G : in TV_Grille) is
-- trace la grille de sudoku en fonction de l'etat en cours de G
begin
	
	Ecrire("  |123|456|789|"); A_la_ligne;
	Ecrire("  +---+---+---+"); A_la_ligne;

	for i in 1..9 loop	-- On parcours chaque ligne
	
	Ecrire(i); Ecrire("|");	-- On écrit le numéro de la ligne et le séparateur

		for j in 1..9 loop	-- On parcours la ligne en question

			Ecrire(T_valeur'image(G(i,j))(2));	-- On écrit la valeur
			if j=3 or j=6 or j=9 then	-- On créé un séparateur toutes les 3 valeurs
				Ecrire("|");
			end if;

		end loop;
	
		A_la_ligne;

	if i=3 or i=6 or i=9 then
	Ecrire("  +---+---+---+"); A_la_ligne;	-- On créé un séparateur toutes les 3 lignes
	end if;

	end loop;

end trace_grille;
---------------------------------------------------------------------

end p_sudo_vue_texte;
