with p_esiut; use p_esiut;
with p_sudo_modele; use p_sudo_modele;
with p_sudo_vue_texte; use p_sudo_vue_texte;

procedure sudoku_text1 is
-- {} => {}

G : TV_Grille;	-- Grille du sudoku
reponse : character;	-- Sert à récupérer la réponse du joueur
l, c : integer9;	-- subtype integer9 is integer range 1..9;
s : T_Valeur;

begin

	init_grille("4...3.......6..8..........1....5..9..8....6...7.2........1.27..5.3....4.9........", G);	-- Initialisation de la grille

		loop	-- Début de la boucle
			trace_grille(G);	-- affichage de la grille de Gs
			Ecrire("Souhaitez vous jouer? (o/n) "); Lire(reponse); A_la_ligne;

			if reponse = 'n' then	-- Si ne souhaite pas jouer on quitte la boucle et le jeu se termine
				exit;
			else	-- sinon on propose de changer une case 
				begin
					lit_coup(l, c, s);
					G(l,c) := s;
				exception
					when CONSTRAINT_ERROR => Ecrire("Vous devez entrer un chiffre entre 1 et 9");
				end;
			end if;
		end loop;

end sudoku_text1;
