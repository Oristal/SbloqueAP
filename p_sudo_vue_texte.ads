with p_esiut; use p_esiut;
with p_sudo_modele; use p_sudo_modele;

package p_sudo_vue_texte is

package p_valeurIO is new p_enum(T_valeur); use p_valeurIO;

---------------------------------------------------------------------
procedure lit_coup(l, c : out integer; s : out T_symbole); 
-- demande un numéro de ligne, un numéro de colonne et une valeur  
---------------------------------------------------------------------
procedure init_grille(chG : in string; G : out TV_Grille);    
-- crée le contenu du "tableau" grille de sudoku à partir d'une chaine de (81) caractères
---------------------------------------------------------------------
procedure trace_grille(G : in TV_Grille); 
-- trace la grille de sudoku en fonction de l'etat en cours de G
---------------------------------------------------------------------

end p_sudo_vue_texte;
