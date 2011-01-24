with p_esiut; use p_esiut;
with p_sudo_modele; use p_sudo_modele;
with p_sudo_vue_texte; use p_sudo_vue_texte;

procedure programme is
-- {} => {}

G : TV_Grille;
l, c : integer9;	-- subtype integer9 is integer range 1..9;
s : T_Valeur;

begin

init_grille("...6..9.23.87.....4............95..17......8...........2..6.5.....4...3..1.......", G);	-- On met la chaine dans G

trace_grille(G);	-- affichage de la grille de G

A_la_ligne;
lit_coup(l, c, s);	-- Modification du sudoku
G(l,c) := s;

trace_grille(G);	-- affichage de la grille modifiée de G

end programme;
