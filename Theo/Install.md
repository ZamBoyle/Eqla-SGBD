# Installation de mariadb
## 1. Pourquoi MariaDB ?
Cette année, nous allons travailler avec MariaDB au lieu de MySQL. Le principale différence entre MariaDB et MySQL c'est que MariaDB est complètement Open Source alors que MySQL ne l'est pas. De plus MariaDB est globalement aussi plus rapide que MySQL. Avant le rachat de MySQL par Oracle, MySQL était Open Source. MySQL existe sous deux versions: Une version community/Communautaire et une version Professionnelle. La version professionnelle est nettement plus performante. Par exemple, la version pro permet la prise en charge de 200.000 connexions simultatnées ce que ne permet pas la version Community. Cependant, MariaDB supporte aussi 200.000 connexions.

Beaucoup de personnes travaillent avec le couple PHP et MySQL. Pour vous, ça ne change rien que cela soit MySQL et MariaDB. Ce que nous verrons dans le cadre du cours sera donc pareil dans les deux cas.

Donc le choix entre MySQL community, MySQL Pro et MariaDB va dépendre de vos besoins.
Vous pouvez consulter ce site pour vous y aider: [MariaDB vs MySQL – Principales différences, avantages et inconvénients, et plus encore](https://www.hostinger.fr/tutoriels/mariadb-vs-mysql)

## 2. Installation
### 2.1 Linux - Distributions basées sur Debian
Pour installer mariadb, il suffit de taper les commandes suivantes dans un terminal:
```console
sudo apt update
sudo apt install mariadb-server mariadb-client
sudo apt-get install wget software-properties-common dirmngr ca-certificates apt-transport-https -y
```
Vérifions que le service tourne:
```console
systemctl status mariadb
```
Cette commande retournera quelque chose du style:
```console
mariadb.service - MariaDB 10.6.7 database server
     Loaded: loaded (/lib/systemd/system/mariadb.service; enabled; vendor preset: enabled)
     Active: active (running) since Mon 2022-10-17 14:59:28 CEST; 54min ago
       Docs: man:mariadbd(8)
             https://mariadb.com/kb/en/library/systemd/
    Process: 6479 ExecStartPre=/usr/bin/install -m 755 -o mysql -g root -d /var/run/mysqld (code=exited, status=0/SUCCESS)
    Process: 6480 ExecStartPre=/bin/sh -c systemctl unset-environment _WSREP_START_POSITION (code=exited, status=0/SUCCESS)
    Process: 6482 ExecStartPre=/bin/sh -c [ ! -e /usr/bin/galera_recovery ] && VAR= ||   VAR=`cd /usr/bin/..; /usr/bin/galera_recovery`; [ $? -eq 0 ]   && systemctl set-env>
    Process: 6529 ExecStartPost=/bin/sh -c systemctl unset-environment _WSREP_START_POSITION (code=exited, status=0/SUCCESS)
    Process: 6531 ExecStartPost=/etc/mysql/debian-start (code=exited, status=0/SUCCESS)
   Main PID: 6511 (mariadbd)
     Status: "Taking your SQL requests now..."
      Tasks: 7 (limit: 18864)
     Memory: 57.0M
        CPU: 1.058s
     CGroup: /system.slice/mariadb.service
             └─6511 /usr/sbin/mariadbd

oct 17 14:59:28 Omen mariadbd[6511]: 2022-10-17 14:59:28 0 [Note] Plugin 'FEEDBACK' is disabled.
oct 17 14:59:28 Omen mariadbd[6511]: 2022-10-17 14:59:28 0 [Note] InnoDB: Loading buffer pool(s) from /var/lib/mysql/ib_buffer_pool
oct 17 14:59:28 Omen mariadbd[6511]: 2022-10-17 14:59:28 0 [Warning] You need to use --log-bin to make --expire-logs-days or --binlog-expire-logs-seconds work.
oct 17 14:59:28 Omen mariadbd[6511]: 2022-10-17 14:59:28 0 [Note] InnoDB: Buffer pool(s) load completed at 221017 14:59:28
oct 17 14:59:28 Omen mariadbd[6511]: 2022-10-17 14:59:28 0 [Note] Server socket created on IP: '127.0.0.1'.
oct 17 14:59:28 Omen mariadbd[6511]: 2022-10-17 14:59:28 0 [Note] /usr/sbin/mariadbd: ready for connections.
oct 17 14:59:28 Omen mariadbd[6511]: Version: '10.6.7-MariaDB-2ubuntu1.1'  socket: '/run/mysqld/mysqld.sock'  port: 3306  Ubuntu 22.04
oct 17 14:59:28 Omen systemd[1]: Started MariaDB 10.6.7 database server.
oct 17 14:59:28 Omen /etc/mysql/debian-start[6533]: Upgrading MySQL tables if necessary.
oct 17 14:59:43 Omen mariadbd[6511]: 2022-10-17 14:59:43 31 [Warning] Access denied for user 'root'@'localhost'
```
Si vous voyez écrit ***active (running)*** c'est que mariadb tourne bien. :-)

Une fois que c'est bien installé, nous allons sécuriser MariaDB. Nous allons taper la commande suivante mais lisez par après ce qu'il faudra répondre:
```console
sudo mysql_secure_installation
```
- A la question: **Enter current password for root (enter for none):**   
Tapez simplement sur <ins>_ENTER_</ins>.

- A la question: **Switch to unix_socket authentication [Y/n]**  
  Tapez sur <ins>_N_</ins> suivit d'<ins>_ENTER_</ins>.

- A la question: **Change the root password? [Y/n]**  
  Tapez <ins>_Y_</ins> suivit d'**ENTER**.

- A la question: **Remove anonymous users? [Y/n]**  
  Tapez <ins>_Y_</ins> suivit d'<ins>_ENTER_</ins>.

- A la question: **Disallow root login remotely? [Y/n]**  
  Tapez <ins>_Y_</ins> suivit d'<ins>_ENTER_</ins>.

- A la question: **Remove test database and access to it? [Y/n]**  
  Tapez <ins>_Y_</ins> suivit d'<ins>_ENTER_</ins>.

- A la question: **Reload privilege tables now? [Y/n]**  
  Tapez <ins>_Y_</ins> suivit d'<ins>_ENTER_</ins>.

## 2.2 Mac OS via brew
La première chose à faire de mettre à jour les packages.
```console
brew update
```
Ensuite on installe mariadb:
```console
brew install mariadb
```

Après l'installation, démarrez MariaDB Server:
```
mysql.server start
```
Pour démarrer automatiquement MariaDB Server, utilisez la fonctionnalité de services de Homebrew, qui configure le démarrage automatique avec l'utilitaire launchctl de launchd:
```console
brew services start mariadb
```

Une fois que c'est bien installé, nous allons sécuriser MariaDB. Nous allons taper la commande suivante mais lisez par après ce qu'il faudra répondre:

```console
MariaDB-secure-installation
```
- A la question: **Enter current password for root (enter for none):**   
Tapez simplement sur <ins>_ENTER_</ins>.

- A la question: **Switch to unix_socket authentication [Y/n]**  
  Tapez sur <ins>_N_</ins> suivit d'<ins>_ENTER_</ins>.

- A la question: **Change the root password? [Y/n]**  
  Tapez <ins>_Y_</ins> suivit d'**ENTER**.

- A la question: **Remove anonymous users? [Y/n]**  
  Tapez <ins>_Y_</ins> suivit d'<ins>_ENTER_</ins>.

- A la question: **Disallow root login remotely? [Y/n]**  
  Tapez <ins>_Y_</ins> suivit d'<ins>_ENTER_</ins>.

- A la question: **Remove test database and access to it? [Y/n]**  
  Tapez <ins>_Y_</ins> suivit d'<ins>_ENTER_</ins>.

- A la question: **Reload privilege tables now? [Y/n]**  
  Tapez <ins>_Y_</ins> suivit d'<ins>_ENTER_</ins>.


## 2.3 Windows - Installation
**Attention**, ne sélectionnez pas une version **ALPHA** mais une version stable ou une **RC** ou une version stable. Même si version ALPHA devrait fonctionner, je préfère utiliser une Release Candidate (RC) ou une stable qui devrait elle fonctionner sans problème. Une RC est la dernière étape avant la version finale/stable d'un logiciel. Une RC est quasi une version stable. On dit qu'elle est candidate à la version "finale" ou "stable".

Téléchargez la version qui correspond à votre ordinateur à cette [adresse](https://mariadb.org/download/?t=mariadb&p=mariadb&r=10.11.0&os=windows&cpu=x86_64&pkg=msi&m=serverion).


Lors de l'exéctuion du Setup, faites tout le temps NEXT jusqu'au moment où vous devrez définir un mot de passe pour l'utilisateur root (lire rout :)).

**!!! N'OUBLIEZ PAS VOTRE MOT DE PASSE !!!**
Chaque année, un stagiaire oublie évidemment son mot de passe... ;-)

Cochez la case: "**Use UTF8 as default server's character set**". Ca mettra comme jeu de caractères l'UTF8 qui est maintenant, je trouve, à utiliser partout. Nous en reparlerons plus tard...

Faites tout le temps **NEXT** jusqu'au moment où vous pourrez cliquer sur **Install**. 


## 2.4 Windows - Modifier le PATH
<ins>A faire en classe</ins>: ajouter l'exécutable de MariaDB dans la variable d'environnement **PATH**. Nous en avons parlé lors de l'étude de l'utilisation d'un terminal. Dans cette variable d'environnement sont listés les répertoires où le terminal doit chercher l'exécutable que vous souhaiter exécuter. Cela permet depuis n'importe quel répertoire de lancer un programme figurant dans l'un des répertoires référencés dans la variable **PATH**.
