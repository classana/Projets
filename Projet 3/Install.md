### 4. Installation et configuration TightVNC poste Serveur et poste Client

﻿**Le logiciel TightVNC**

Téléchargeable sur https://www.tightvnc.com/download.php 

**Avantages de TightVNC :**

1. **Gratuit et open-source :** TightVNC est un logiciel open-source, ce qui signifie qu'il est disponible gratuitement et que son code source peut être consulté et modifié selon les besoins.
1. **Facilité d'utilisation :** TightVNC est relativement facile à installer et à configurer, ce qui le rend accessible même pour les utilisateurs moins expérimentés.
1. **Multiplateforme :** TightVNC est compatible avec différentes plateformes, notamment Windows, Linux et macOS, ce qui permet une plus grande flexibilité dans les environnements hétérogènes.
1. **Faible bande passante :** Il offre une bonne performance même dans des conditions de bande passante limitée, ce qui le rend adapté aux connexions Internet plus lentes.
1. **Sécurité :** Bien que cela dépende de la configuration, TightVNC propose des options de sécurité telles que l'authentification par mot de passe et le cryptage des données, ce qui permet de protéger les connexions à distance.

**Inconvénients de TightVNC :**

1. **Sécurité :** Bien que TightVNC offre des options de sécurité, il peut être considéré comme moins sécurisé que d'autres solutions de téléassistance plus avancées, surtout si la configuration n'est pas correctement réalisée.
1. **Performance :** Dans certains cas, TightVNC peut être moins performant que d'autres solutions de téléassistance, en particulier sur des réseaux très chargés ou avec une latence élevée.
1. **Interface utilisateur limitée :** L'interface utilisateur de TightVNC est assez basique et peut manquer de certaines fonctionnalités avancées présentes dans d'autres logiciels similaires.
1. **Support limité :** Étant un logiciel open-source, le support technique officiel peut être limité, bien que la communauté des utilisateurs puisse fournir une assistance via des forums et des discussions en ligne.

En résumé, TightVNC est une option populaire pour la téléassistance en raison de sa simplicité, de sa compatibilité multiplateforme et de sa gratuité. Cependant, il peut présenter des limitations en termes de sécurité et de performances par rapport à d'autres solutions commerciales. Il convient donc de peser ces avantages et inconvénients en fonction des besoins spécifiques de votre projet.

**Installation et configuration sous Windows : partie serveur**

TightVNC est disponible au téléchargement depuis l’adresse suivante : <https://www.tightvnc.com/download.php>.

La méthode la plus simple est de télécharger le fichier compatible pour l’installateur **WindowsServer**
![](https://raw.githubusercontent.com/
)

Section d'installation de TightVNC sous Windows

Le fichier s’exécute sous la forme d’un **didacticiel** vous guidant pendant les étapes de l’installation.
![](https://github.com/WildCodeSchool/TSSR_PARIS_0924_P1_G3_TightVNC/blob/jessy_config_tightvnc/images/tightVnc1.png)


Le programme d’installation propose **3 options** classiques :

- L’installation **typique**, tout se passe de manière automatique avec les composants et leurs valeurs par défaut (partie serveur, partie cliente, mot de passe, emplacement sur le disque, etc.) ;
- L’installation **Custom,** ici le programme demande confirmation et de chaque étape ;
- L’installation **Complète,** identique à la première option, mais en incluant tous les composants disponibles. 
![](https://github.com/WildCodeSchool/TSSR_PARIS_0924_P1_G3_TightVNC/blob/jessy_config_tightvnc/images/tightVNC2%20(2).png)



Dans notre cas, je vous propose de passer par **l’installation personnalisée (Custom)**.

L’étape suivante consiste à sélectionner le type d’installation. S'il s'agit du poste **qui sera contrôlé** à distance, dans ce cas il faut installer TightVNC **Server.** S’il s’agit du poste avec lequel **vous prendrez le contrôle** à distance d’un autre, il faut installer TightVNC **Client.(voir installation coté client)**

![](https://github.com/WildCodeSchool/TSSR_PARIS_0924_P1_G3_TightVNC/blob/jessy_config_tightvnc/images/tightVNCServ3.png
)


Type d'installation : client ou serveur ?

Ici, nous allons choisir d’installer les **deux composants**.

Le programme d’installer propose ensuite la configuration de **4 options distinctes** :

- **L’association des fichiers avec une extension .vnc** est pratique, vous pouvez garder cette option ;
- **Déclarer TightVNC en tant que service** va dépendre de vos contraintes de sécurité. Dans le cas où vous souhaitez démarrer les programmes TightVNC de manière automatique avec le poste, il faut cocher cette option. Je reviendrai plus en détail sur cet aspect dans le chapitre suivant ;
- L’option suivante autorise les programmes TightVNC à exécuter la séquence « **Ctrl-Alt-Del** » bien connue permettant notamment d’envoyer un ordre de redémarrage au système d’exploitation. En la cochant, vous autorisez l’utilisateur ayant le contrôle du poste à effectuer cette opération ;
- Enfin, dernière option, il s’agit d’ajouter une règle dans le **Firewall** Windows afin de **laisser passer les flux réseaux** concernant TightVNC.


![](https://github.com/WildCodeSchool/TSSR_PARIS_0924_P1_G3_TightVNC/blob/jessy_config_tightvnc/images/tightVNCServ4.png
)


Fenêtre de tâches additionnelles

Je vous propose donc de **cocher les 4 options** proposées. Notez que Windows vous demandera très probablement confirmation de l’action, car nous ajoutons ici des règles systèmes supplémentaires.


![](https://github.com/WildCodeSchool/TSSR_PARIS_0924_P1_G3_TightVNC/blob/jessy_config_tightvnc/images/tightVNCServ5.png
)



Demande de confirmation de Windows

Le panneau suivant est important car il permet de **sécuriser** l’installation de TightVNC sur le poste. Il s’agit ici de définir **deux mots de passe différents** :

- **Le premier** mot de passe va permettre de **sécuriser la prise de contrôle** à distance sur ce poste. **Chaque client** VNC souhaitant s’y connecter devra connaître ce mot de passe (Nous avons choisit : "**Remote1***") ;
- **Le second** permet de **sécuriser le comportement et la configuration** de TighVNC sur ce poste. **Chaque modification** dans la configuration ou l’exécution du serveur TightVNC devra être confirmée avec ce mot de passe (Nous avons choisit : "**Admin5-**") .

![](https://github.com/WildCodeSchool/TSSR_PARIS_0924_P1_G3_TightVNC/blob/jessy_config_tightvnc/images/tightVNCServ6.png
)


Définition des mots de passe  
N’hésitez pas à saisir les mots de passe « **forts** », c’est à dire avec au moins un **caractère spécial**, un **chiffre** et une **majuscule.**


Voilà ! L’installation se termine ici. Nous allons maintenant vérifier que tout s’est bien passé.

**Que venons-nous d'installer ?**

Normalement, une icône supplémentaire VNC s’est ajoutée dans la barre des tâches Windows.

![](https://github.com/WildCodeSchool/TSSR_PARIS_0924_P1_G3_TightVNC/blob/jessy_config_tightvnc/images/tightVNCServ7.png
)


Icône VNC dans la barre des tâches Windows

Cette icône nous permet d’accéder au panneau de configuration, je reviendrai sur le sujet dans le chapitre suivant.

Vous avez également des **raccourcis supplémentaires** en fonction des composants installés dans le menu Windows tels que : 

![](https://github.com/WildCodeSchool/TSSR_PARIS_0924_P1_G3_TightVNC/blob/jessy_config_tightvnc/images/tightVNCServ8.png
)


Raccourcis supplémentaires 


Par ailleurs, si vous avez sélectionné l’option d’installation de TightVNC en tant que service, vous retrouverez la ligne associée dans le menu services de Windows, telle que :

![](https://github.com/WildCodeSchool/TSSR_PARIS_0924_P1_G3_TightVNC/blob/jessy_config_tightvnc/images/tightVNCServ9.png
)


Service de TightVNC dans le menu services Windows

De plus, vous pouvez également retrouver la règle ajoutée pour TightVNC dans le **Firewall** de Windows telle que :


![](https://github.com/WildCodeSchool/TSSR_PARIS_0924_P1_G3_TightVNC/blob/jessy_config_tightvnc/images/tightVNCServ10.png
)


(Cette partie n'est à prendre en compte que si les pare-feux sont restés activés sur le poste serveur !)
Règle de TightVNC Server du Firewall


Cette autorisation se traduit par **l’ouverture de ports** en écoute sur le poste. Vous pouvez **lister ces ports** en lançant la commande suivante (depuis une invite de commande en mode Administrateur) :

netstat -abp TCP

Vous pourrez constater l’ouverture de deux ports par défaut, 5800 et 5900.

![](https://github.com/WildCodeSchool/TSSR_PARIS_0924_P1_G3_TightVNC/blob/jessy_config_tightvnc/images/tightVNCServ11.png
)


Les ports 5900 et 5800 sont ouverts

Le port **5900** correspondant au port **d’écoute principal** de TightVNC, celui qui permet la prise de contrôle à distance. Le port **5800** permet de **"s’interfacer" avec le serveur** TightVNC depuis le poste client.

**Démarrez automatiquement TightVNC sous Windows**

Nous avons vu précédemment qu’il est possible d’installer le serveur TightVNC directement en tant que **service Windows**. Avec cette méthode, TightVNC sera lancé automatiquement **à chaque démarrage de la machine**.

Cependant, si vous n’avez pas coché l’option lors du processus d’installation il est toujours possible après coup d’enregistrer TightVNC en tant que service depuis les raccourcis ajoutés dans le menu Windows.

Par exemple, pour **enregistrer TightVNC** en tant que service :

![](https://github.com/WildCodeSchool/TSSR_PARIS_0924_P1_G3_TightVNC/blob/jessy_config_tightvnc/images/tightVNCServ12.png)

Attention, cette action inscrit le service dans les registres Windows **sans le démarrer**. Il est nécessaire soit de **redémarrer** Windows, soit de le **lancer à la main** pour démarrer le serveur.


A l’inverse pour **supprimer le service** TightVNC (sans pour autant désinstaller le programme) :

![](https://github.com/WildCodeSchool/TSSR_PARIS_0924_P1_G3_TightVNC/blob/jessy_config_tightvnc/images/tightVNCServ13.png)

Supprimer le service TightVNC

Windows sollicitera une **confirmation** pour ces deux actions, qui sont également disponibles via les options des **lignes de commande** TightVNC comme je vous le montrerai dans le **chapitre suivant**.


﻿**Logiciel TightVNC client**

Télécharger et installer TightVNC Viewer : <http://www.tightvnc.com/download.php>

![](https://github.com/lienTelechargement)

Une fois installé, il suffit de suivre les étapes telles qu'indiquées dans les images.

!![](https://github.com/WildCodeSchool/TSSR_PARIS_0924_P1_G3_TightVNC/blob/jessy_config_tightvnc/images/tightVnc1.png)


![](https://github.com/WildCodeSchool/TSSR_PARIS_0924_P1_G3_TightVNC/blob/jessy_config_tightvnc/images/tightVNC2%20(2).png)

Choisir "**Custom**".

![](https://github.com/WildCodeSchool/TSSR_PARIS_0924_P1_G3_TightVNC/blob/jessy_config_tightvnc/images/tightVNC3.png)

Cliquer sur la petite icône à coté de TightVNC et sélectionner la petite croix. De ce fait, il n'y aura que le TightVNC Viewer d'installé. L’autre sera inutile du coté client. Puis appuyer sur "**Next**".

![](https://github.com/WildCodeSchool/TSSR_PARIS_0924_P1_G3_TightVNC/blob/jessy_config_tightvnc/images/tightVNC4.png)

De nouveau sur "**Next**".

![](https://github.com/WildCodeSchool/TSSR_PARIS_0924_P1_G3_TightVNC/blob/jessy_config_tightvnc/images/tightVNC5.png)

Puis "**Install**".

![](https://github.com/WildCodeSchool/TSSR_PARIS_0924_P1_G3_TightVNC/blob/jessy_config_tightvnc/images/tightVNC6.png)


![](https://github.com/WildCodeSchool/TSSR_PARIS_0924_P1_G3_TightVNC/blob/jessy_config_tightvnc/images/tightVNC7.png)

L'installation devrait alors se dérouler normalement.

![](https://github.com/WildCodeSchool/TSSR_PARIS_0924_P1_G3_TightVNC/blob/jessy_config_tightvnc/images/tightVNC8.png)

Aller dans le disque dur de votre ordinateur > Program Files > rentrer dans le dossier de TightVNC. Une fois dedans, clic droit sur le fichier indiqué sur l’image puis sélectionner « Create shortcut ».

![](https://github.com/WildCodeSchool/TSSR_PARIS_0924_P1_G3_TightVNC/blob/jessy_config_tightvnc/images/tightVNC9%20(1).png)

Ceci est l’icône qui devrait apparaître sur votre Bureau.

### 5. Test connexion TightVNC

Double-cliquez sur l'icône de lancement du logiciel.

![](https://github.com/WildCodeSchool/TSSR_PARIS_0924_P1_G3_TightVNC/blob/jessy_config_tightvnc/images/tightVNC9%20(1).png)

Une fois le logiciel lancé, on devrait avoir cette fenêtre qui s'ouvre:

![](https://github.com/WildCodeSchool/TSSR_PARIS_0924_P1_G3_TightVNC/blob/jessy_config_tightvnc/images/TighVnc%20ouverture.png)

Il est possible de se connecter soit par le nom du server (SRVWIN01) soit par son adresse IP (172.16.10.10).
Puis insérer le mot de passe : **Remote1*** (ou celui que vous avez défini lors l'installaiton de TightVNC sur le poste serveur).

Nous avons un onglet option établi par défaut 

![](https://github.com/WildCodeSchool/TSSR_PARIS_0924_P1_G3_TightVNC/blob/jessy_config_tightvnc/images/option%20par%20defaut%20(1).png)

Il y a toujours la possibilité de jouer avec les paramètres par défaut pour améliorer l'utilisation.

Appuyer sur **Connect** pour lancer la connexion.
Une fois connecté(e) vous devriez avoir ce rendu.  
L'affichage d'un écran noir en fond sur le poste Serveur est normal.  

![](https://github.com/WildCodeSchool/TSSR_PARIS_0924_P1_G3_TightVNC/blob/jessy_config_tightvnc/images/TightVnc%20e%CC%81crans.png)

Il y a une barre d'icônes en haut de la fenêtre de TightVNC.  

![](https://github.com/WildCodeSchool/TSSR_PARIS_0924_P1_G3_TightVNC/blob/jessy_config_tightvnc/images/TightVnc%20barre%20d'icons.jpg)

De gauche à droite : 
- nouvelle connexion: permet d'ouvrir une nouvelle connexion en plus de la première
- sauvegarde 
- ouverture des options
- info connexion
- pause 
- actualisation image
- raccourci ctrl+alt+del
- raccourci ctrl+esc
- raccourci ctrl
- raccourci alt
- transfert de fichier entre client/server
- zoomer
- dézoomer
- zoomer par pourcentage
- zoom auto
- plein écran

Naviguez dans les différents répertoires du poste serveur depuis TightVNC pour vérifier que vous ne rencontrez pas de problèmes ou de ralentissements.  
Le cas échéant référez-vous à la FAQ plus bas.  

Une fois la connexion testée, appuyer sur le bouton de sauvegarde et enregistrer le raccourci sur le bureau avec le nom suivant : **config_co_pserv**  
Répondre "**No**" à la question, cela empêche le logiciel de conserver le mot de passe de connexion.

Double-cliquez sur le raccourci nouvellement créé sur le bureau et l'image suivante devrait apparaître :  
![](https://raw.githubusercontent.comTightVnc%20ouverture.png)

### 6. Configuration de l'accès sécurisé via TightVNC par filtrage d'adresse IP (depuis serveur)

Depuis le poste serveur renseignez dans la barre de recherche en bas à gauche de votre écran : “TightVNC Service - Offline Configuration". Cliquez sur l'application du même nom.
![](https://raw.githubusercontent.comsecu_tight_VNC1.jpg)


Dans la fenêtre de l'application, accèder à l'onglet "**Acces Control**".

![](https://raw.githubusercontent.comsecu_tight_VNC2.jpg)


Cliquez sur le bouton "**Add**" pour paramétrer la ou les adresses IP considérées.

![](https://raw.githubusercontent.comsecu_tight_VNC3.jpg)


Dans la case "First matching", entrez l'adresse IP du poste client concerné (dans notre cas 172.16.10.20). Si vous souhaitez étendre la plage des adresses IP concernées, alors remplir la case "Last matching IP" au-dessous avec la dernière adresse IP voulue. Dans le cas contraire, laissez cette case vide. Il est alors possible de donner l'accès "Allow", refusez l'accès ("Deny") ou encore de laisser le choix à l'utilisateur par le biais d'une fenêtre qui s'ouvrira lors de la requête de téléassistance émise par le poste client "Query local user".
Dans notre cas, et pour des raisons de sécurité et de contrôle, nous cochons cette dernière et appuyons sur "**OK**".

![](https://github.com/WildCodeSchool/TSSR_PARIS_0924_P1_G3_TightVNC/blob/jessy_config_tightvnc/images/secu_tight_VNC4.jpg)
![](https://github.com/WildCodeSchool/TSSR_PARIS_0924_P1_G3_TightVNC/blob/jessy_config_tightvnc/images/secu_tight_VNC5.jpg)


Ne pas oublier d'appliquer nos options à l'utilisation de TightVNC en cliquant d'abord sur "Apply" avant de fermer la fenêtre ou d'appuyer sur "**OK**".

![](https://github.com/WildCodeSchool/TSSR_PARIS_0924_P1_G3_TightVNC/blob/jessy_config_tightvnc/images/secu_tight_VNC6.jpg)

### 7. Utilisation d'un script powershell pour faciliter la connexion au poste serveur


### 8. FAQ


### Bureau d'accès à distance


_**La connexion depuis le poste client ne fonctionne pas ?**_

Voici quelques solutions possibles aux problèmes courants que vous pouvez rencontrer lorsque vous tentez de vous connecter à un PC distant. Si ces solutions ne fonctionnent pas, vous trouverez plus d’informations sur le site web de Microsoft Community.

**Impossible de trouver un PC distant**. Assurez-vous d’avoir le nom de PC adéquat, puis vérifiez si vous avez entré ce nom correctement. Si vous ne pouvez toujours pas vous connecter, essayez d’utiliser l’adresse IP du PC distant au lieu de son nom.

**Un problème de réseau est survenu**. Vérifiez que vous disposez d’une connexion à Internet.

**Le port du Bureau à distance peut être bloqué par un pare-feu**. Si vous utilisez un pare-feu Windows, procédez comme suit :

  - Ouvrez le pare-feu Windows.
  - Cliquez sur **Autoriser une application ou une fonctionnalité via le Pare-feu Windows**.
  - Cliquez sur **Modifier les paramètres**. Vous devrez peut-être saisir votre mot de passe administrateur ou confirmer votre choix.
  - Sous **Applications et fonctionnalités autorisées**, sélectionnez **Bureau à distance**, puis appuyez ou cliquez sur **OK**.
  - Si vous utilisez un autre pare-feu, assurez-vous que le port Bureau à distance (généralement 3389) est ouvert.

**La fonctionnalité Connexion à distance ne peut pas être configurée sur le PC distant**. Pour résoudre ce problème, revenez au paramétrage **ACTIVER LE BUREAU A DISTANCE SUR LE POSTE SERVEUR** de cette documentation.

**Le PC à distance peut autoriser uniquement la connexion des PC dont l’authentification au niveau du réseau est configurée.**

**Le PC à distance est peut-être désactivé**. Vous ne pouvez pas vous connecter à un PC qui est désactivé, en veille ou en veille prolongée. Par conséquent, vérifiez que les paramètres de mise en veille et veille prolongée sur un PC distant sont définis sur **Jamais**. Remarque : La mise en veille prolongée n’est pas disponible pour tous les PC.


### TightVNC

_**Quelles sont les versions de Windows supportées par TightVNC ?**_

TightVNC fonctionne en principe sur toutes les versions de Windows (les systèmes 32 bits et 64 bits sont pris en charge) :
    Windows XP / Vista / 7 / 8 / 8.1 / 10 / 11,
    les versions correspondantes de Windows Server.
Sous Windows XP, vous devez avoir installé le dernier Service Pack. Les systèmes Windows CE ne sont pas pris en charge.
Il n'y a pas d'exigences minimales en matière d'espace disque ou de mémoire vive. TightVNC utilise si peu d'espace et de mémoire qu'il peut fonctionner partout où Windows est en cours d'exécution.
Les versions antérieures 1.2 et 1.3 de TightVNC présentent toutefois certaines limitations. Il n'est pas possible d'utiliser TightVNC Server en tant que service système sur Windows Vista / Windows 7 dans ce cas. 

_**Impossible d'installer les logiciels sur le poste serveur ou client ?**_

Vérifez que vous avyez les droits d'adminisration sur le poste, que vous avez un système compatible avec le logiciel et que le poste respecte la configuration requise pour l'éxecuter.

_**Comment quitter le mode plein écran de TightVNC Viewer ?**_

Pour quitter le mode plein écran de TightVNC Viewer pour Windows, vous pouvez utiliser la combinaison de clavier Ctrl-Alt-Shift-F.
La raison de cette combinaison de clavier complexe est que nous devons utiliser un raccourci clavier qui n'est pas susceptible d'être utilisé par des applications normales. Si une combinaison est utilisée comme raccourci clavier dans la visionneuse TightVNC, elle sera traitée localement dans la visionneuse et ne sera donc pas transmise au serveur VNC, ce qui peut poser des problèmes avec les applications distantes qui utilisent le même raccourci clavier.
Dans nos applications modernes telles que Remote Ripple et MightyViewer, il est beaucoup plus facile de quitter le mode plein écran. Il suffit de déplacer le pointeur de la souris sur le bord supérieur de l'écran et une barre d'outils flottante apparaît, dans laquelle vous pouvez choisir de quitter le mode plein écran. 

_**La navigation sur le poste serveur est lente ou semble lagguer ?**_

Verifiez les paramètres suivants dans les options du poste Client depuis TightVNC Viewer.

![](https://raw.githubusercontent.comoption%20par%20defaut.png)

Vous pouvez jouez sur les paramètres suivants :
- Laissez l'option "**Prefered encoding**" sur *Tigh*. C'est le format conseillé par l'éditeur du logiciel.
- Cochez **256 colors**, cela affichera le poste serveur en 256 colours et donc améliorera grandement la latence entre les deux postes.
- Vous pouvez aussi jouer sur le taux de compression **Set custom compression level**.
- Vous pouvez aussi baisser la qualité des images en cochant **Allow JPEG, set image quality** et en mettant la qualité sur **poor**.

Depuis le poste serveur, ouvrer le menu de configuration TighVNC serveur (reprendre la méthode donnée en 6. pour y accéder).

![](https://raw.githubusercontent.comoption_vnc_serveur.png)  

Sur cette page là, baisser le paramètre **Scree polling cycle** au minimum, cela devrait améliorer les performance depuis le poste client.  
Et vérifiez que **Hide desktop wallpaper** est bien désactivé.

_**Lors de la connexion depuis le poste client, je vois juste un fond uni, aucune icône ou encore je ne peux pas naviguer sur le poste serveur ?**_

Depuis le poste serveur, ouvrer le menu de configuration TighVNC serveur (reprendre la méthode donnée dans la partie 6. pour y accéder).

Sur cette page là, décochez le **Use D3D driver if available**.  
![](https://raw.githubusercontent.comoption_vnc_serveur.png)


### Script de connexion


_**Au lancement du script sur le poste client , un message d'erreur apparait indiquant que le scirpt ne peut être éxecuté. ?**_

Vérifiez que le poste client est bien toutes les autorisation pour éxecuter des scripts comme précisé dans la partie 7.

_**Le script se lance depuis le poste client et indique que la connexion est en cours mais rien s'affiche ou il se ferme tout de suite ?**_

Verifiez que les raccourcis **RDP.RDP** et **config_co_pserv** sont bien présent sur le bureau, s'ils n'y sont pas, il faut les recréer.

