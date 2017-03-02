/*==============================================================*/
/* Nom de SGBD :  PostgreSQL 8                                  */
/* Date de création :  01/03/2017 21:17:09                      */
/*==============================================================*/


drop index ASSOCIATION_1_FK;

drop index ADRESSE_PK;

drop table ADRESSE;

drop index ASSOCIATION_3_FK;

drop index ASSOCIATION_2_FK;

drop index ASSOCIATION_2_PK;

drop table ASSOCIATION_2;

drop index COEFICIENT_PK;

drop table COEFICIENT;

drop index ETUDIANTS_PK;

drop table ETUDIANTS;

drop index FILIERE_PK;

drop table FILIERE;

drop index ASSOCIATION_4_FK;

drop index MATIERE_PK;

drop table MATIERE;

drop index MATIEREFILIERE2_FK;

drop index MATIEREFILIERE_FK;

drop index MATIEREFILIERE_PK;

drop table MATIEREFILIERE;

drop index ASSOCIATION_5_FK;

drop index NOTES_PK;

drop table NOTES;

/*==============================================================*/
/* Table : ADRESSE                                              */
/*==============================================================*/
create table ADRESSE (
   IDADRESSE            SERIAL               not null,
   IDETUDIANT           INT4                 not null,
   TELEPHONE            VARCHAR(50)           null,
   ADRESSE              VARCHAR(50)           null,
   LOT                  VARCHAR(10)           null,
   constraint PK_ADRESSE primary key (IDADRESSE)
);

/*==============================================================*/
/* Index : ADRESSE_PK                                           */
/*==============================================================*/
create unique index ADRESSE_PK on ADRESSE (
IDADRESSE
);

/*==============================================================*/
/* Index : ASSOCIATION_1_FK                                     */
/*==============================================================*/
create  index ASSOCIATION_1_FK on ADRESSE (
IDETUDIANT
);

/*==============================================================*/
/* Table : ASSOCIATION_2                                        */
/*==============================================================*/
create table ASSOCIATION_2 (
   IDETUDIANT           INT4                 not null,
   IDFILIERE            INT4                 not null,
   constraint PK_ASSOCIATION_2 primary key (IDETUDIANT, IDFILIERE)
);

/*==============================================================*/
/* Index : ASSOCIATION_2_PK                                     */
/*==============================================================*/
create unique index ASSOCIATION_2_PK on ASSOCIATION_2 (
IDETUDIANT,
IDFILIERE
);

/*==============================================================*/
/* Index : ASSOCIATION_2_FK                                     */
/*==============================================================*/
create  index ASSOCIATION_2_FK on ASSOCIATION_2 (
IDETUDIANT
);

/*==============================================================*/
/* Index : ASSOCIATION_3_FK                                     */
/*==============================================================*/
create  index ASSOCIATION_3_FK on ASSOCIATION_2 (
IDFILIERE
);

/*==============================================================*/
/* Table : COEFICIENT                                           */
/*==============================================================*/
create table COEFICIENT (
   IDCOEFICIENT         SERIAL               not null,
   COEF                 INT4                 null,
   constraint PK_COEFICIENT primary key (IDCOEFICIENT)
);

/*==============================================================*/
/* Index : COEFICIENT_PK                                        */
/*==============================================================*/
create unique index COEFICIENT_PK on COEFICIENT (
IDCOEFICIENT
);

/*==============================================================*/
/* Table : ETUDIANTS                                            */
/*==============================================================*/
create table ETUDIANTS (
   IDETUDIANT           SERIAL               not null,
   NOM                  VARCHAR(50)           null,
   PRENOM               VARCHAR(50)           null,
   DATENAISSANCE        DATE                 null,
   SEXE                 VARCHAR(10)           null,
   constraint PK_ETUDIANTS primary key (IDETUDIANT)
);

/*==============================================================*/
/* Index : ETUDIANTS_PK                                         */
/*==============================================================*/
create unique index ETUDIANTS_PK on ETUDIANTS (
IDETUDIANT
);

/*==============================================================*/
/* Table : FILIERE                                              */
/*==============================================================*/
create table FILIERE (
   IDFILIERE            SERIAL               not null,
   NOMFILIERE           VARCHAR(50)           null,
   constraint PK_FILIERE primary key (IDFILIERE)
);

/*==============================================================*/
/* Index : FILIERE_PK                                           */
/*==============================================================*/
create unique index FILIERE_PK on FILIERE (
IDFILIERE
);

/*==============================================================*/
/* Table : MATIERE                                              */
/*==============================================================*/
create table MATIERE (
   IDMATIERE            SERIAL               not null,
   IDCOEFICIENT         INT4                 not null,
   NOMMATIERE           VARCHAR(50)           null,
   constraint PK_MATIERE primary key (IDMATIERE)
);

/*==============================================================*/
/* Index : MATIERE_PK                                           */
/*==============================================================*/
create unique index MATIERE_PK on MATIERE (
IDMATIERE
);

/*==============================================================*/
/* Index : ASSOCIATION_4_FK                                     */
/*==============================================================*/
create  index ASSOCIATION_4_FK on MATIERE (
IDCOEFICIENT
);

/*==============================================================*/
/* Table : MATIEREFILIERE                                       */
/*==============================================================*/
create table MATIEREFILIERE (
   IDMATIERE            INT4                 not null,
   IDFILIERE            INT4                 not null,
   constraint PK_MATIEREFILIERE primary key (IDMATIERE, IDFILIERE)
);

/*==============================================================*/
/* Index : MATIEREFILIERE_PK                                    */
/*==============================================================*/
create unique index MATIEREFILIERE_PK on MATIEREFILIERE (
IDMATIERE,
IDFILIERE
);

/*==============================================================*/
/* Index : MATIEREFILIERE_FK                                    */
/*==============================================================*/
create  index MATIEREFILIERE_FK on MATIEREFILIERE (
IDMATIERE
);

/*==============================================================*/
/* Index : MATIEREFILIERE2_FK                                   */
/*==============================================================*/
create  index MATIEREFILIERE2_FK on MATIEREFILIERE (
IDFILIERE
);

/*==============================================================*/
/* Table : NOTES                                                */
/*==============================================================*/
create table NOTES (
   IDNOTE               SERIAL               not null,
   IDETUDIANT           INT4                 not null,
   IDMATIERE			INT4				 not null,
   NOTE                 FLOAT8               null,
   constraint PK_NOTES primary key (IDNOTE)
);

/*==============================================================*/
/* Index : NOTES_PK                                             */
/*==============================================================*/
create unique index NOTES_PK on NOTES (
IDNOTE
);

/*==============================================================*/
/* Index : ASSOCIATION_5_FK                                     */
/*==============================================================*/
create  index ASSOCIATION_5_FK on NOTES (
IDETUDIANT
);

alter table ADRESSE
   add constraint FK_ADRESSE_ASSOCIATI_ETUDIANT foreign key (IDETUDIANT)
      references ETUDIANTS (IDETUDIANT)
      on delete restrict on update restrict;

alter table ASSOCIATION_2
   add constraint FK_ASSOCIAT_ASSOCIATI_ETUDIANT foreign key (IDETUDIANT)
      references ETUDIANTS (IDETUDIANT)
      on delete restrict on update restrict;

alter table ASSOCIATION_2
   add constraint FK_ASSOCIAT_ASSOCIATI_FILIERE foreign key (IDFILIERE)
      references FILIERE (IDFILIERE)
      on delete restrict on update restrict;

alter table MATIERE
   add constraint FK_MATIERE_ASSOCIATI_COEFICIE foreign key (IDCOEFICIENT)
      references COEFICIENT (IDCOEFICIENT)
      on delete restrict on update restrict;

alter table MATIEREFILIERE
   add constraint FK_MATIEREF_MATIEREFI_MATIERE foreign key (IDMATIERE)
      references MATIERE (IDMATIERE)
      on delete restrict on update restrict;

alter table MATIEREFILIERE
   add constraint FK_MATIEREF_MATIEREFI_FILIERE foreign key (IDFILIERE)
      references FILIERE (IDFILIERE)
      on delete restrict on update restrict;

alter table NOTES
   add constraint FK_NOTES_ASSOCIATI_ETUDIANT foreign key (IDETUDIANT)
      references ETUDIANTS (IDETUDIANT)
      on delete restrict on update restrict;

