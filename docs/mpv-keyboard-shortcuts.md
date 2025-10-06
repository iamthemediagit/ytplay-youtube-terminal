# Raccourcis clavier mpv - Guide complet

> Contrôles essentiels pour mpv lors de la lecture YouTube avec ytplay

## 🎮 Navigation dans la playlist

| Touche | Action |
|--------|--------|
| `<` | Vidéo **précédente** dans la playlist |
| `>` | Vidéo **suivante** dans la playlist |
| `ENTER` | Passer à la vidéo suivante |
| `p` / `SPACE` | Pause / Reprendre |

## ⏯️ Contrôle de lecture

| Touche | Action |
|--------|--------|
| `←` | Reculer de 5 secondes |
| `→` | Avancer de 5 secondes |
| `↑` | Augmenter le volume |
| `↓` | Diminuer le volume |
| `m` | Couper/Rétablir le son (mute) |
| `[` | Diminuer la vitesse |
| `]` | Augmenter la vitesse |
| `{` | Diviser la vitesse par 2 |
| `}` | Multiplier la vitesse par 2 |
| `Backspace` | Réinitialiser la vitesse (1x) |

## 🔍 Recherche

| Touche | Action |
|--------|--------|
| `0` à `9` | Aller à 0%-90% de la vidéo |
| `Shift + ←` | Reculer de 1 minute |
| `Shift + →` | Avancer de 1 minute |
| `l` | Avancer frame par frame (en pause) |
| `;` | Reculer frame par frame (en pause) |

## 📊 Affichage et info

| Touche | Action |
|--------|--------|
| `i` / `I` | Afficher les infos de lecture |
| `o` / `O` | Afficher la progression |
| `f` | Plein écran (vidéo seulement) |
| `` ` `` | Afficher la console |
| `Tab` | Afficher/Masquer les stats |

## 🎵 Audio & Sous-titres

| Touche | Action |
|--------|--------|
| `#` | Changer de piste audio |
| `j` / `J` | Changer de sous-titres |
| `v` | Activer/Désactiver les sous-titres |
| `z` / `Z` | Ajuster le délai des sous-titres |

## 🚪 Quitter

| Touche | Action |
|--------|--------|
| `q` | Quitter mpv |
| `Q` | Quitter sans sauvegarder la position |
| `Ctrl + C` | Forcer l'arrêt |

## 💡 Raccourcis essentiels pour ytplay

**Pour une expérience playlist optimale :**

```
Navigation :  <  >  (vidéos précédente/suivante)
Contrôle :    Space (pause) | ←  → (navigation)
Volume :      ↑  ↓
Quitter :     q
```

## 🎯 Cas d'usage typiques

### Écoute de playlist musicale
```bash
ytplay "lofi hip hop" 30
# Sélectionner 5-10 pistes avec Tab
# Utiliser < > pour naviguer entre les morceaux
```

### Podcast en série
```bash
ytplay "lex fridman" 20
# Sélectionner plusieurs épisodes
# Écouter en continu, passer avec >
```

### Découverte de contenu
```bash
ytplay "documentaire arte"
# Naviguer avec < > si le premier ne plaît pas
```

## ⚙️ Configuration avancée

### Créer un fichier de config mpv personnalisé

`~/.config/mpv/input.conf` :
```
# Navigation playlist plus rapide
Shift+n playlist-next
Shift+p playlist-prev

# Raccourcis personnalisés
Ctrl+q quit-watch-later
```

### Options de lecture utiles

```bash
# Dans ytplay, éditer ligne 100/96 pour ajouter :
mpv --no-video --shuffle "${VIDEO_URLS[@]}"   # Mode shuffle
mpv --no-video --loop-playlist "${VIDEO_URLS[@]}"  # Boucle
```

## 📚 Documentation complète

- **mpv manual** : `man mpv`
- **En ligne** : https://mpv.io/manual/stable/

---

**🎧 Maintenant vous avez le contrôle total sur votre playlist YouTube !**
