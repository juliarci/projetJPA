-- Initialisation des tables
INSERT INTO Employe(employe_type, matricule, montant_prime, pourcentage, diplome, nom, email) VALUES
    ('C', 1, null, 10, null, 'Rémi Bastide', 'Remi.Bastide@univ-jfc.fr'), -- Les clés sont auto-générées
    ('T', 2, 1000, null, null, 'Elyes Lamine', 'Elyes.Lamine@univ-jfc.fr'),
    ('A',3, null, null, 'Master', 'Jean-Marie Pécatte', 'JM.Pecatte@univ-jfc.fr');
-- On peut fixer les clés auto-générées, mais il faut ensuite
-- réinitialiser le compteur de clé auto-générée
-- Attention : la syntaxe est différente selon le SGBD utilisé
-- Ici la syntaxe pour le SGBD H2
ALTER TABLE Employe ALTER COLUMN matricule RESTART WITH 4;


INSERT INTO Projet(code, nom, date_debut, date_fin) VALUES
                                                      (default, 'Projet1', '2023-12-03', '2024-12-03'),
                                                      (default, 'Projet2', '2022-05-02', null),
                                                      (default, 'Projet3', '2024-05-11', '2025-09-12');

INSERT INTO Participation(role, pourcentage) VALUES
                                                 ('Scrum master', 10),
                                                 ('Secretaire', 50),
                                                 ('Informaticien',40);

INSERT INTO Participation_employes(employes_matricule, participation_id_participation) VALUES (1, 1),
                                                                                              (2,1),
                                                                                              (2,2),
                                                                                              (2,3);
INSERT INTO Participation_projets(participation_id_participation, projets_code) VALUES
                                                                                   (1,1),
                                                                                   (1,2),
                                                                                   (1,3);
