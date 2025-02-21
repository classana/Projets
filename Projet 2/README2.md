##  



# **Téléassistance**

## 07.10.2024

**─**

Lassana , Hicham, Jessy ,Mamadou 

# 

# **Sommaire** 

1\. Présentation générale du projet

2\. Présentation de l’équipe Rôles et tâches de chacun dans le projet

3\. Choix techniques 

4\. Difficultés et solutions 

5\. Amélioration faites


1\. **Présentation du projet : TightVNC et  Bureau à distance (RDP)**

 *TightVNC : Téléassistance et contrôle à distance*

      
Objectifs principal :

·	Configurer un accès sécurisé pour faire de la téléassistance sur un serveur en utilisant une interface graphique depuis un client  
·	Le logiciel TightVNC, ainsi que la connexion Bureau à distance de Windows doivent être utilisés  
·	Serveur : Windows Server 2022  
·	Client : Windows 10 Pro

      Objectif secondaire :

* Script Powershell pour faciliter la connexion initiale de la téléassistance.

Mettre en place une téléassistance d'un poste serveur depuis un poste distant pour faciliter les opérations de maintenance, le tout par le biais d'un accès sécurisé.

2\. Présentation de l'équipe  
 

NOUS SOMMES 4 TECHNICIENS RÉSEAUX

 ZGUIOUAR HICHAM :

KONATE MAMADOU :

CAMARA LASSANA :  

FREMOR JESSY : 

Répartitions de nos rôles 

Première Semaine :                   	I

|                 PO |           FREMOR JESSY |
| :---- | :---- |
|                 SM |         KONATE MAMADOU |

Tâches Semaine 1

|                TÂCHES |            NOMS |
| :---- | :---- |
| Présentation des outils Tightvnc et un configuration VM poste client RDP   |               ZGUIOUAR HICHAM  |
| Installation des outils et documentation  et objectif secondaire Script |               KONATE MAMADOU  |
|  RDP:  Bureau d'accès à distance  Configuration VM poste Serveur et            VM poste Client  |               CAMARA LASSANA  |
| TIGHTVNC : Configuration VM poste Serveur et VM poste Client |               FREMOR JESSY  |

:

Rôles Semaine 2

|                   PO |           ZGUIOUAR HICHAM  |
| :---- | :---- |
|                   SM |           CAMARA LASSANA  |

TÂCHES Semaine 2

|      Exposer le projet  |              tout le monde dans l'équipe |
| :---- | :---- |
|      Utilisations Logiciels   |        tout le monde dans l'équipe |
|      Finalisation du projet |          tout le monde dans l'équipe |


3\. Choix techniques 

Le client est sous Windows 10

* Nom : CLIWIN 01  
* Compte : wilder  
* Mot de passe : Azerty1\*  
* Adresse IP fixe : 172.16.10.20/24

Le Serveur est sous OS Windows Server 2022

* Nom : SRV WIN01  
* Compte : Administrator  
* Mot de passe : Azerty1\*  
* Adresse IP fixe : 172.16.10.10/24

Logiciel de prise en main à distance

* TightVNC Version 2.8.81 ( logiciel gratuit et OpenSource )  
* Bureau d'accès à distance ( solution native de Windows )

 

4\. Difficultés et solutions 

\*Au moment de la première utilisation du logiciel tightvnc confusion entre la version server et la version client et au niveau de la configuration RDP problème survenu lors du de l'hôte Administrateur au lieu de Administrator 

\*Un de collègue à été blacklisté par github ce qui a rendu difficile l’association du dossier de son côté 

5\. Amélioration faites


\-  Connections entre le 2 postes sans ouvrir le pare feu de sécurité

\-   Partage de dossiers entre les deux postes;

\-  Fonctionnalité Github

\-  SCRIPT
