# 🎧 ytplay - Résumé complet v2

> **YouTube au terminal - Simple, Puissant, Natif**

## ✅ Ce qui a été installé

### Script principal
- **`~/.local/bin/ytplay`** - Script bash interactif
- **Stack** : yt-dlp + fzf + mpv
- **Version 2** : Multi-sélection + Navigation entre vidéos

### Documentation créée
1. `ytplay-quickstart.md` - Guide rapide ⚡
2. `ytplay-interactive-youtube.md` - Documentation complète 📚
3. `mpv-keyboard-shortcuts.md` - Raccourcis clavier ⌨️
4. `YTPLAY-RESUME.md` - Ce fichier 📄

## 🚀 Usage rapide

```bash
# Recherche simple
ytplay "alexandre lebreton"

# Avec plus de résultats
ytplay "documentaire" 50
```

### Workflow complet

1. **Lancer** : `ytplay "votre recherche"`
2. **Interface fzf** :
   - ↑↓ : Naviguer
   - `/mot` : Filtrer en temps réel
   - **Tab** : Sélectionner plusieurs vidéos (playlist)
   - Enter : Confirmer
3. **Choisir mode** : 1 (audio) ou 2 (vidéo)
4. **Écouter** : mpv démarre avec votre sélection

## ⌨️ Raccourcis essentiels mpv

### Navigation playlist (NOUVEAU !)
```
<       Vidéo précédente
>       Vidéo suivante
ENTER   Passer à la suivante
```

### Contrôle
```
Space   Pause/Play
←  →    Reculer/Avancer 5s
↑  ↓    Volume +/-
q       Quitter
```

## 💡 Cas d'usage

### 1. Écoute simple
```bash
ytplay "lofi hip hop"
# Sélectionner 1 vidéo → Enter → Mode audio
# Change avec > si tu veux passer à autre chose
```

### 2. Playlist musicale
```bash
ytplay "best of pink floyd" 30
# Sélectionner 5-10 morceaux avec Tab
# Navigation avec < >
```

### 3. Podcast en série
```bash
ytplay "lex fridman podcast" 20
# Tab sur plusieurs épisodes
# Écoute continue, skip avec >
```

### 4. Découverte de contenu
```bash
ytplay "documentaire histoire"
# Sélectionner quelques résultats
# Explorer avec < > pendant la lecture
```

## 🎯 Nouvelles fonctionnalités v2

### ✨ Multi-sélection
- Appuyer sur **Tab** dans fzf pour sélectionner plusieurs vidéos
- Créer des playlists à la volée
- mpv les lit en séquence

### ✨ Navigation entre vidéos
- **< >** pour changer de vidéo pendant la lecture
- Plus besoin de relancer ytplay !
- Parfait pour l'écoute en continu

### ✨ Affichage des raccourcis
- Le script affiche maintenant les contrôles disponibles
- Aide-mémoire intégré

## 🔧 Personnalisation

### Créer des alias
```bash
# Ajouter dans ~/.zshrc
alias yt='ytplay'
alias ytm='ytplay "music"'
alias ytpod='ytplay "podcast"'
alias ytdoc='ytplay "documentaire"'

# Recharger
source ~/.zshrc
```

### Forcer audio sans demander
Éditer `~/.local/bin/ytplay` ligne 93-102, remplacer par :
```bash
echo "🎧 Lecture audio..."
mpv --no-video "${VIDEO_URLS[@]}"
```

### Mode shuffle ou boucle
Ligne 100 :
```bash
mpv --no-video --shuffle "${VIDEO_URLS[@]}"        # Aléatoire
mpv --no-video --loop-playlist "${VIDEO_URLS[@]}"  # Boucle
```

## 📥 Téléchargement (mode avion)

ytplay affiche l'URL après sélection. Pour télécharger :

```bash
# Audio seul (léger)
yt-dlp -f bestaudio -x --audio-format m4a "URL"

# Vidéo 720p
yt-dlp -f "bestvideo[height<=720]+bestaudio" "URL"

# Playlist entière
yt-dlp -f bestaudio -x --audio-format m4a "PLAYLIST_URL"
```

## 🆚 Comparaison

| Feature | ytplay v2 | yewtube | mpv direct |
|---------|-----------|---------|------------|
| Installation | ✅ Script bash | ⚠️ Python complexe | ✅ Natif |
| Multi-sélection | ✅ Tab | ❌ Non | ❌ Non |
| Navigation | ✅ < > | ✅ Oui | ❌ Non |
| Filtrage | ✅ fzf puissant | ⚠️ Basique | ❌ Non |
| Stabilité | ✅ Stable | ⚠️ Bugs macOS | ✅ Stable |
| Métadonnées | ✅ Avant lecture | ✅ Oui | ❌ Non |

**Verdict** : ytplay v2 = Meilleur compromis simplicité/puissance

## 🔧 Maintenance

```bash
# Mettre à jour yt-dlp (important !)
brew upgrade yt-dlp

# Vérifier les dépendances
yt-dlp --version
fzf --version
jq --version
mpv --version

# Réinstaller ytplay si besoin
cat > ~/.local/bin/ytplay << 'EOF'
[coller le contenu du script]
EOF
chmod +x ~/.local/bin/ytplay
```

## 🎓 Pour aller plus loin

### Intégration Warp Workflow
Remplacer votre workflow actuel par :
```
ytplay "{{search_query}}"
```

### Raccourcis clavier global (Raycast/Alfred)
1. Créer un script command
2. Commande : `ytplay {query}`
3. Hotkey : `Cmd+Shift+Y`

### Config mpv avancée
Créer `~/.config/mpv/input.conf` :
```
# Navigation playlist custom
Shift+n playlist-next
Shift+p playlist-prev
Ctrl+q quit-watch-later

# Vitesse de lecture
Alt+= multiply speed 1.1
Alt+- multiply speed 0.9
```

## 📚 Documentation

- **Guide rapide** : `ytplay-quickstart.md`
- **Doc complète** : `ytplay-interactive-youtube.md`
- **Raccourcis mpv** : `mpv-keyboard-shortcuts.md`
- **mpv manual** : `man mpv`

## 🎉 Résumé en une ligne

```bash
ytplay "votre recherche"
# Tab pour sélectionner | < > pour naviguer | q pour quitter
```

---

**✨ Profitez de YouTube au terminal comme jamais !**

*Version 2.0 - Octobre 2025*
