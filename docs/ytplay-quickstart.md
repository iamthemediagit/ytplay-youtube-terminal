# ytplay - Guide rapide

## ✅ Installé et prêt !

**Script** : `~/.local/bin/ytplay`  
**Stack** : yt-dlp + fzf + mpv

## 🚀 Utilisation immédiate

```bash
# Recherche et sélection interactive
ytplay "alexandre lebreton"

# Votre workflow Warp fonctionne aussi
mpv --no-video ytdl://ytsearch10:"votre recherche"
```

## 🎯 Workflow ytplay

1. **Lancer** : `ytplay "votre recherche"`
2. **Naviguer** : Flèches ↑↓ ou `/mot` pour filtrer
3. **Sélectionner** : 
   - `Tab` pour sélectionner plusieurs vidéos
   - `Enter` pour confirmer
4. **Choisir** : 
   - `1` = Audio seul (recommandé)
   - `2` = Vidéo
5. **Contrôler dans mpv** :
   - `<` `>` = Vidéo précédente/suivante
   - `Space` = Pause/Play
   - `←` `→` = Reculer/Avancer 5s
   - `q` = Quitter

## 🐡 Commandes utiles

```bash
# Plus de résultats
ytplay "documentaire" 50

# Créer une playlist (sélectionner avec Tab)
ytplay "lofi hip hop" 30

# Alias pratique (à ajouter dans ~/.zshrc)
alias yt='ytplay'

# Télécharger pour l'avion
yt-dlp -f bestaudio -x --audio-format m4a "URL"
```

## ⌨️ Raccourcis mpv essentiels

**Navigation playlist :**
- `<` `>` : Vidéo précédente/suivante
- `ENTER` : Passer à la suivante

**Contrôle :**
- `Space` : Pause/Play
- `←` `→` : Reculer/Avancer 5s
- `↑` `↓` : Volume +/-
- `q` : Quitter

> Voir `mpv-keyboard-shortcuts.md` pour la liste complète

## 🔧 Personnalisation rapide

**Audio par défaut sans demander :**
Éditer `~/.local/bin/ytplay` ligne 65-82, remplacer par :
```bash
echo "🎧 Lecture audio..."
mpv --no-video "$VIDEO_URL"
```

**Créer un alias court :**
```bash
echo 'alias yt="ytplay"' >> ~/.zshrc
source ~/.zshrc
```

## 📊 ytplay vs solution de base

| Command | ytplay | mpv direct |
|---------|--------|------------|
| Syntaxe | `ytplay "query"` | `mpv ytdl://ytsearch10:"query"` |
| Sélection | ✅ Interactive (fzf) | ❌ Automatique (1er résultat) |
| Multi-sélection | ✅ Tab pour playlist | ❌ Non |
| Navigation | ✅ < > entre vidéos | ❌ Non |
| Filtrage | ✅ Par titre/date/auteur | ❌ Non |
| Métadonnées | ✅ Visibles avant lecture | ❌ Non |

**Recommandation :** 
- **ytplay** pour recherche et sélection
- **mpv direct** pour rejouer une URL connue

## 🎬 Exemples d'usage

```bash
# Musique
ytplay "lofi hip hop"

# Podcast
ytplay "lex fridman podcast"

# Documentaire
ytplay "documentaire arte 2024"

# Live
ytplay "france info live"
```

## 📚 Docs complètes

Voir `ytplay-interactive-youtube.md` pour le guide complet.

---

**🎧 Simple, rapide, efficace. Profitez !**
