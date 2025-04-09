# Automatisation-Rapports-Ventes-SQL
Automatisation des rapports de ventes avec SQL, utilisant la base de données Chinook

Une entreprise souhaite générer un rapport détaillé sur les ventes totales par produit pour le dernier trimestre.

Utiliser SQL pour extraire, filtrer et agréger les données nécessaires à l'élaboration du rapport.

**Requêtes de base** :
 -Clients non américains : Créez une requête pour afficher les informations des clients (nom complet, ID client et pays) qui ne sont pas situés aux États-Unis.
 
 -Clients brésiliens : Créez une requête pour afficher les clients venant du Brésil.
 
 -Factures des clients brésiliens : Créez une requête affichant les factures des clients brésiliens. Les colonnes doivent inclure le nom du client, l'ID de la facture, la date de la facture et le pays de facturation.
 
 -Agents de vente : Créez une requête pour afficher uniquement les employés qui sont des agents de vente

**Agrégations et relations** :
-Pays uniques dans les factures : Créez une requête pour obtenir une liste des pays de facturation uniques dans la table Invoice.

-Factures par agent de vente : Créez une requête pour afficher les factures associées à chaque agent de vente. Le résultat doit inclure le nom complet de l'agent de vente.

-Détails des factures : Créez une requête pour afficher le total de chaque facture, le nom du client, le pays et le nom de l'agent de vente.

**Analyse par année et lignes de facture** :
-Ventes par année : Combien de factures ont été émises en 2009 et 2011 ? Quel est le montant total des ventes pour chaque année ?

-Articles pour une facture donnée : Créez une requête comptabilisant le nombre d'articles (ligne de factures) pour l'ID de la facture 37.

-Articles par facture : Créez une requête pour compter le nombre d'articles (ligne de factures) pour chaque facture. Utilisez GROUP BY.

**Détails des morceaux** :
-Nom des morceaux : Créez une requête pour afficher le nom du morceau pour chaque ligne de facture.

-Morceaux et artistes : Créez une requête pour afficher le nom du morceau acheté ainsi que le nom de l'artiste pour chaque ligne de facture.

**Comptages et regroupements** :
-Nombre de factures par pays : Créez une requête pour afficher le nombre de factures par pays. Utilisez GROUP BY.

-Nombre de morceaux par playlist : Créez une requête pour afficher le nombre total de morceaux présents dans chaque playlist. Incluez le nom de la playlist.

-Liste des morceaux : Créez une requête pour afficher tous les morceaux (tracks), sans afficher les IDs, mais incluant le nom de l'album, le type de média et le genre.

**Analyse des ventes**:
-Factures et articles : Créez une requête pour afficher toutes les factures avec le nombre d'articles (ligne de factures) par facture.

-Ventes par agent de vente : Créez une requête pour afficher les ventes totales réalisées par chaque agent de vente.

-Meilleur agent de 2009 : Quel agent de vente a généré le plus de ventes en 2009 ?

-Meilleur agent de 2010 : Quel agent de vente a généré le plus de ventes en 2010 ?

-Meilleur agent global : Quel agent de vente a réalisé le plus de ventes sur l'ensemble des années ?

**Analyse des clients et des pays** :
-Clients par agent de vente : Créez une requête pour afficher le nombre de clients attribués à chaque agent de vente.

-Ventes totales par pays : Créez une requête pour afficher les ventes totales par pays. Quel pays a dépensé le plus ?

-Analyse des morceaux et des artistes :

-Morceau le plus acheté en 2013 : Créez une requête pour afficher le morceau le plus acheté en 2013.

-Top 5 des morceaux les plus achetés : Créez une requête pour afficher les 5 morceaux les plus achetés.

-Top 3 des artistes les plus vendus : Créez une requête pour afficher les 3 artistes ayant vendu le plus de morceaux.

-Type de média le plus acheté : Créez une requête pour afficher le type de média le plus acheté.
