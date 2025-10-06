# ytplay - YouTube interactif au terminal

> Solution simple et pratique : recherche YouTube + sélection interactive (fzf) + lecture mpv

## 🎯 Stack

```
yt-dlp (recherche) → fzf (sélection interactive) → mpv (lecture)
```

**Avantages :**
- ✅ Interface simple et réactive
- ✅ Tri par titre, date, auteur, durée
- ✅ Pas de dépendance Python complexe (comme yewtube)
- ✅ 100% terminal natif macOS

## 🚀 Usage

### Commande de base
```bash
ytplay "alexandre lebreton"
```

### Workflow interactif
1. **Recherche** : Affiche 20 résultats YouTube
2. **Sélection fzf** : 
   - `↑↓` : Naviguer dans les résultats
   - `/` : Filtrer par mot-clé (dans fzf)
   - `Enter` : Confirmer la sélection
   - `Esc` : Annuler
3. **Mode lecture** :
   - `1` : Audio seul (défaut, économise bande passante)
   - `2` : Vidéo complète

### Options avancées
```bash
# Recherche avec plus de résultats
ytplay "documentaire" 50

# Depuis votre Warp Workflow
# (déjà configuré avec votre workflow "Youtube")
```

## 🎛️ Personnalisation

### Modifier le nombre de résultats par défaut
```bash
# Éditer ~/.local/bin/ytplay
# Ligne 8: MAX_RESULTS="${2:-20}"  # Changer 20 → 30, 50, etc.
```

### Créer des alias rapides
```bash
# Ajouter à ~/.zshrc
alias yt='ytplay'
alias ytm='ytplay'  # yt music
alias ytd='ytplay "documentaire"'
alias ytl='ytplay "live"'

# Recharger
source ~/.zshrc
```

### Forcer audio par défaut (sans demander)
Éditer `~/.local/bin/ytplay` ligne 65-82 :
```bash
# Remplacer le bloc "Demander audio ou vidéo" par :
echo "🎧 Lecture audio..."
mpv --no-video "$VIDEO_URL"
```

## 💡 Fonctionnalités fzf

**Dans l'interface de sélection :**
- `/terme` : Filtrer les résultats en temps réel
- `Ctrl+J/K` : Naviguer (alternative aux flèches)
- `Tab` : Marquer plusieurs vidéos (lecture playlist)
- `Shift+Tab` : Démarquer

**Trier les résultats :**
La recherche affiche : `Titre | Durée | Auteur | Date | ID`
- Taper `/2024` pour voir uniquement 2024
- Taper `/lebreton` pour filtrer par auteur
- Taper `/documentaire` pour filtrer par mot-clé

## 📥 Téléchargement (mode avion)

Le script lit en streaming. Pour télécharger :
```bash
# Audio seul
yt-dlp -f bestaudio -x --audio-format m4a "URL"

# Vidéo 720p
yt-dlp -f "bestvideo[height<=720]+bestaudio" "URL"

# Depuis ytplay, copier l'URL affichée après sélection
```

## 🔧 Script source

Le script est ici : `~/.local/bin/ytplay`

**Architecture :**
1. `yt-dlp --dump-json` → Extrait métadonnées YouTube
2. `jq` → Formate les données (titre, durée, date, auteur)
3. `fzf` → Interface de sélection interactive
4. `mpv` → Lecture audio ou vidéo

## 🆚 Comparaison avec yewtube

| Feature | ytplay | yewtube |
|---------|--------|---------|
| Installation | ✅ Simple (script bash) | ⚠️ Python + dépendances |
| Performance | ✅ Rapide | ⚠️ Plus lent |
| Stabilité | ✅ Stable | ⚠️ Bugs permissions macOS |
| Filtrage | ✅ fzf fuzzy search | ✅ Recherche basique |
| Interface | ✅ fzf moderne | ⚠️ TUI oldschool |
| Maintenance | ✅ Minimal | ⚠️ Dépendances Python |

## 🎯 Workflow recommandé

**Usage quotidien :**
```bash
ytplay "podcast tech"   # Recherche interactive
# Sélectionner avec fzf
# Mode audio par défaut
```

**Depuis Warp Workflow :**
- Utiliser votre workflow "Youtube" existant
- Ou créer un nouveau workflow avec `ytplay {{search_query}}`

**Préparation voyage :**
```bash
ytplay "playlist voyage"  # Trouver la vidéo
# Copier l'URL affichée
yt-dlp -f bestaudio -x --audio-format m4a "URL"
```

## 🔧 Dépannage

```bash
# Test des dépendances
yt-dlp --version
fzf --version
jq --version
mpv --version

# Mettre à jour yt-dlp (important !)
brew upgrade yt-dlp

# Réinstaller le script
curl -o ~/.local/bin/ytplay [URL_DU_SCRIPT]
chmod +x ~/.local/bin/ytplay

# Logs de débogage
ytplay "test" 2>&1 | tee ~/ytplay-debug.log
```

## 🚀 Tips avancés

### Lecture directe sans sélection
```bash
# Lire directement le 1er résultat
mpv --no-video "ytdl://ytsearch1:alexandre lebreton"

# Lire les 5 premiers en playlist
mpv --no-video "ytdl://ytsearch5:documentaire"
```

### Intégration Warp Drive
Votre workflow actuel fonctionne déjà parfaitement :
```bash
mpv --no-video ytdl://ytsearch10:"{{search_query}}"
```

Pour ajouter la sélection interactive, remplacer par :
```bash
ytplay "{{search_query}}"
```

### Raccourci clavier global (optionnel)
Avec **Raycast** ou **Alfred** (déjà sur Mac) :
1. Créer un workflow/script command
2. Commande : `ytplay {query}`
3. Assigner un raccourci : `Cmd+Shift+Y`

## 📚 Ressources

- **yt-dlp** : https://github.com/yt-dlp/yt-dlp
- **fzf** : https://github.com/junegunn/fzf
- **mpv** : https://mpv.io

---

**✨ Enjoy your terminal-based YouTube experience!**
