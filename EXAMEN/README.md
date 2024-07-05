lien du software : https://gist.github.com/thibaultserti/21456f4797100376f67443920e5d5145

TERRAFORM :

N'ayant pas de credits sur un provider cloud, j'ai imaginé la creation d'une VM via le provider GCP.
Les variables sont stockes dans variables.tf alors que les autres fichiers terraform permettent : 
la gestion du firewall autorisant l'http et le ssh, la creation d'une vm debian en Europe avec un reseau et une adresse ip publique

ANSIBLE :

concernant ansible j'ai cree un dossier inventories qui comporte la liste des hosts cibles, en locurence dans l'exemple present le software sera testé en local. Le dossier templates dispose du fichier service pour gerer le systemd. Le playbook ansible va dabord cree un utilisateur 'apiuser' dedie pour l'execution, met a jour les paquets systemes avec apt, clone le repository detenant le software, crée un environnement python (venv) dans lequel il installe les packages present dans requirements.txt, ensuite il configure le service systemd pour demarer l'api. Le playbook se termine en lancant l'api. 

TEST :

je teste l'application avec les commandes suivantes [CF le dossier SCREENSHOT] 
curl http://127.0.0.1:8000
ps aux | grep uvicorn

