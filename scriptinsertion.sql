-- insert adresse

INSERT INTO adresse (idadresse, idetudiant, telephone, adresse, lot) VALUES (1, 1, '0345048260', 'Mananara', 'Ib364/KL');
INSERT INTO adresse (idadresse, idetudiant, telephone, adresse, lot) VALUES (2, 2, '0345048261', 'Ivory', '654E/PO');
INSERT INTO adresse (idadresse, idetudiant, telephone, adresse, lot) VALUES (3, 3, '0340870534', 'Mananara', '210IPO');
INSERT INTO adresse (idadresse, idetudiant, telephone, adresse, lot) VALUES (4, 4, '0322126611', 'Isorana', 'IB266');
INSERT INTO adresse (idadresse, idetudiant, telephone, adresse, lot) VALUES (5, 5, '0342560198', 'Nasandratrony', 'IIB201');
INSERT INTO adresse (idadresse, idetudiant, telephone, adresse, lot) VALUES (6, 6, '0331076022', 'Fiankinana', '12E/1254');
INSERT INTO adresse (idadresse, idetudiant, telephone, adresse, lot) VALUES (7, 7, '0340490400', 'Akofafa', '506BN/123');
INSERT INTO adresse (idadresse, idetudiant, telephone, adresse, lot) VALUES (8, 8, '0344582512', 'Betse', 'IV12');
INSERT INTO adresse (idadresse, idetudiant, telephone, adresse, lot) VALUES (9, 9, '0346058219', 'Ambanidia', 'IVB2301');
INSERT INTO adresse (idadresse, idetudiant, telephone, adresse, lot) VALUES (10, 10, '0348046090', 'Andoharanofotsy', 'IB266');


--
-- insert coeficient
--



INSERT INTO coeficient (idcoeficient, coef) VALUES (1, 1);
INSERT INTO coeficient (idcoeficient, coef) VALUES (2, 2);
INSERT INTO coeficient (idcoeficient, coef) VALUES (3, 3);
INSERT INTO coeficient (idcoeficient, coef) VALUES (4, 4);
INSERT INTO coeficient (idcoeficient, coef) VALUES (5, 5);
INSERT INTO coeficient (idcoeficient, coef) VALUES (6, 6);
INSERT INTO coeficient (idcoeficient, coef) VALUES (7, 7);
INSERT INTO coeficient (idcoeficient, coef) VALUES (8, 8);
INSERT INTO coeficient (idcoeficient, coef) VALUES (9, 9);
INSERT INTO coeficient (idcoeficient, coef) VALUES (10, 10);

-- insert etudiants

INSERT INTO etudiants (idetudiant, nom, prenom, datenaissance, sexe) VALUES (1, 'Haja', 'Niaina', '1993-01-01', 'Masculin');
INSERT INTO etudiants (idetudiant, nom, prenom, datenaissance, sexe) VALUES (2, 'Mahatia', 'Francisco', '1992-02-02', 'Masculin');
INSERT INTO etudiants (idetudiant, nom, prenom, datenaissance, sexe) VALUES (3, 'Haja Mahasoa', 'Clement', '1995-10-12', 'Masculin');
INSERT INTO etudiants (idetudiant, nom, prenom, datenaissance, sexe) VALUES (4, 'Mamy', 'Ernestine', '1994-02-03', 'Feminin');
INSERT INTO etudiants (idetudiant, nom, prenom, datenaissance, sexe) VALUES (5, 'Heriniaina', 'Claudine', '1994-10-10', 'Feminin');
INSERT INTO etudiants (idetudiant, nom, prenom, datenaissance, sexe) VALUES (6, 'Nirina', 'Michelle', '1991-05-23', 'Feminin');
INSERT INTO etudiants (idetudiant, nom, prenom, datenaissance, sexe) VALUES (7, 'Ravelonoro', 'Marie', '1992-11-15', 'Feminin');
INSERT INTO etudiants (idetudiant, nom, prenom, datenaissance, sexe) VALUES (8, 'Marie', 'Pauline', '1993-09-01', 'Feminin');
INSERT INTO etudiants (idetudiant, nom, prenom, datenaissance, sexe) VALUES (9, 'Randriana', 'Haja', '1990-02-20', 'Masculin');
INSERT INTO etudiants (idetudiant, nom, prenom, datenaissance, sexe) VALUES (10, 'Jean', 'Regis', '1995-04-06', 'Masculin');


-- insert filiere

INSERT INTO filiere (idfiliere, nomfiliere) VALUES (1, 'Science sociale');
INSERT INTO filiere (idfiliere, nomfiliere) VALUES (2, 'Gestion');
INSERT INTO filiere (idfiliere, nomfiliere) VALUES (3, 'Economie');
INSERT INTO filiere (idfiliere, nomfiliere) VALUES (4, 'Mathematiques');
INSERT INTO filiere (idfiliere, nomfiliere) VALUES (5, 'Informatique');
INSERT INTO filiere (idfiliere, nomfiliere) VALUES (6, 'Multimedia');
INSERT INTO filiere (idfiliere, nomfiliere) VALUES (7, 'Communication');
INSERT INTO filiere (idfiliere, nomfiliere) VALUES (8, 'Marketing');


-- insert matiere

INSERT INTO matiere (idmatiere, idcoeficient, nommatiere) VALUES (1, 2, 'Malagasy');
INSERT INTO matiere (idmatiere, idcoeficient, nommatiere) VALUES (2, 8, 'Programmation');
INSERT INTO matiere (idmatiere, idcoeficient, nommatiere) VALUES (3, 4, 'Web');
INSERT INTO matiere (idmatiere, idcoeficient, nommatiere) VALUES (4, 3, 'Anglais');
INSERT INTO matiere (idmatiere, idcoeficient, nommatiere) VALUES (5, 5, 'Francais');
INSERT INTO matiere (idmatiere, idcoeficient, nommatiere) VALUES (6, 6, 'Analyse de donnee');
INSERT INTO matiere (idmatiere, idcoeficient, nommatiere) VALUES (7, 5, 'Algorithme');
INSERT INTO matiere (idmatiere, idcoeficient, nommatiere) VALUES (8, 2, 'Optimisation');
INSERT INTO matiere (idmatiere, idcoeficient, nommatiere) VALUES (9, 8, 'Marketing');
INSERT INTO matiere (idmatiere, idcoeficient, nommatiere) VALUES (10, 10, 'Gestion de projet');
INSERT INTO matiere (idmatiere, idcoeficient, nommatiere) VALUES (11, 3, 'Economie');


-- insert matierefiliere

INSERT INTO matierefiliere (idmatiere, idfiliere) VALUES (1, 1);
INSERT INTO matierefiliere (idmatiere, idfiliere) VALUES (2, 1);
INSERT INTO matierefiliere (idmatiere, idfiliere) VALUES (3, 1);
INSERT INTO matierefiliere (idmatiere, idfiliere) VALUES (4, 1);
INSERT INTO matierefiliere (idmatiere, idfiliere) VALUES (5, 1);
INSERT INTO matierefiliere (idmatiere, idfiliere) VALUES (6, 1);
INSERT INTO matierefiliere (idmatiere, idfiliere) VALUES (7, 1);
INSERT INTO matierefiliere (idmatiere, idfiliere) VALUES (8, 1);
INSERT INTO matierefiliere (idmatiere, idfiliere) VALUES (9, 1);
INSERT INTO matierefiliere (idmatiere, idfiliere) VALUES (10, 1);
INSERT INTO matierefiliere (idmatiere, idfiliere) VALUES (11, 2);

