# Variables pour configurer l'accès aux serveurs
$serverIP = "176.16.10.20"  # IP du serveur cible
$TightVNCExecutable = "C:\Program Files\TightVNC\tvnviewer.exe"  # Chemin vers TightVNC
$RDPExecutable = "mstsc.exe"  # Outil par défaut de RDP (Remote Desktop)

# Fonction pour se connecter via TightVNC
function Connect-TightVNC {
    param (
        [string]$serverIP
    )
    if (Test-Path $TightVNCExecutable) {
        Write-Host "Connexion à $serverIP via TightVNC..."
        Start-Process $TightVNCExecutable -ArgumentList $serverIP
    } else {
        Write-Host "TightVNC n'est pas installé. Veuillez l'installer."
    }
}

# Fonction pour se connecter via RDP
function Connect-RDP {
    param (
        [string]$serverIP
    )
    Write-Host "Connexion à $serverIP via RDP..."
    Start-Process $RDPExecutable -ArgumentList "/v:$serverIP"
}

# Menu pour sélectionner le mode de connexion
Write-Host "Sélectionnez le mode de connexion :"
Write-Host "1. TightVNC"
Write-Host "2. RDP"
$choice = Read-Host "Entrez 1 ou 2"

switch ($choice) {
    1 { Connect-TightVNC -serverIP $serverIP }
    2 { Connect-RDP -serverIP $serverIP }
    default { Write-Host "Choix invalide." }
}
