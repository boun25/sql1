/*My sql et un systeme de gestion de basse de donnes relationnelles populaire utilisé pour stocker rt récrupérer des données sensible.

structute des utilisateur 
chaque utilisateur est identifier par un nom (username )et associé a un hote (host) depuis lequel 
Structure des utilisateurs
Chaque utilisateur est identifié par un nom (username) et associé à un hôte (host) depuis lequel il peut se connecter. La combinaison de l'utilisateur et de l'hote est unique.ADD
Gestion des utilisateurs
1. Création des utilisateurs

Pour créer un utilisateur, on utilise mla commande*/
▷ Execute | JSON
create user 'nomutuilisateur'@'hote' IDENTIFIED BY 'mot depasse';*/


/* Modifier mdp */
alter user 'helderUseur'@ 'localhost IDENTIFIED BY 'newpasse';


/*Rename */
rename user 'helderUseur'@ 'localhost' to 'carl'@'localhost';

/*supprime */
drop user 'utilisateur'@'hote';

/* Voir les utilisateurs crées ou présents */ 
select user from mysql.user;

/* Voir l'utilisateur courant */
 select current.user ;
​
Execute | JSON
//*Gestion des PRIVILEGES
Les privilèges déterminent ce que chaque utilisateur est autorisé à faire. Les privilèges incluent les clauses: INSERT, UPDATE, DELETE, etc. La commande GRANT est utilisée pour accorder des privilèges*/


▷ Execute | JSON
Grant all on bdd.* to 'user'@'hote'; /*hote /*hote = localhost*/
/* revoke les droits*/
▷ Execute | JSON
revoke privilege on bdd from 'user'@'hote';


describle 'Nomdelatable ' = c'est pour affiche le nom de la table 

pour creé une table 
create table personnes(id_personne int not null primary key auto_increment, nom
 varchar (255) not null, date_naissance date not null, sexe char(1) not null);

change en innodb la table

alter table personnes engine=Innodb;


/*ajoute un element dans une table */
ALTER TABLE personnes ADD prenom VARCHAR(255) NOT NULL AFTER nom;


mysql> show tables;
+------------------+
| Tables_in_teste1 |
+------------------+
| adresse          |
| personnes        |
| telephones       |
+------------------+




mysql> select * from adresse;
+------------+--------+----------------------+-----------+-------------+-------------+
| id_adresse | numero | rue                  | ville     | code_postal | id_personne |
+------------+--------+----------------------+-----------+-------------+-------------+
|          1 |     12 | Rue de la Paix       | Paris     |       75001 |           1 |
|          2 |     34 | Rue de la République | Lyon      |       69001 |           2 |
|          3 |     56 | Rue de la Liberté    | Marseille |       13001 |           3 |
+------------+--------+----------------------+-----------+-------------+-------------+


mysql> select rue from adresse;
+----------------------+
| rue                  |
+----------------------+
| Rue de la Paix       |
| Rue de la République |
| Rue de la Liberté    |
+----------------------+

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| performance_schema |
| teste1             |
+--------------------+


/*la table addresse*/

insert into adresse (numero, rue, ville, code_postal, id_personne) values(12, 'Rue de la Paix','Paris', 75001,1),  
    ->  (34, 'Rue de la République', 'Lyon', 69001, 2),  
    -> (56, 'Rue de la Liberté', 'Marseille', 13001, 3);




    /*table telephone*/

    insert into telephones (numero, types, id_personne) values (0456789012, 'f', 1), (0789011245, 'p', 1);
    insert into telephones (numero, types, id_personne) values (04567587912, 'f', 2), (0689124578, 'p', 2);
    insert into telephones (numero, types, id_personne) values (0556789545, 'f', 3), (0745128729, 'p', 3);