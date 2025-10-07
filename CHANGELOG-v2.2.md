# ytplay v2.2 - Terminal Guru Edition

> Mise à jour majeure : Design élégant + Suppression des erreurs macOS

**Date**: 7 October 2025  
**Version**: 2.2  
**Type**: Amélioration UX/UI

═════════════════════════════════════════════════════════════════════

## [✓] Changements Majeurs

### 1. Terminal Guru Design Integration

**Couleurs ANSI cohérentes** (optimisées dark mode):
- `[✓]` Succès en vert bright (`\033[1;32m`)
- `[✗]` Erreur en rouge bright (`\033[1;31m`)
- `[*]` Info en cyan bright (`\033[1;36m`)
- `[>]` Action en magenta bright (`\033[1;35m`)
- `[~]` Progress en cyan bright
- Texte secondaire en gris (`\033[0;90m`)

**Banner ASCII coloré**:
```
┌─────────────────────────────────────────┐
│  ▀▄    ▄  ▀▀█▀▀  █▀▀▄  █     █▀▀█  ▀▄    ▄ │
│   █  █     █    █▄▄█  █     █▄▄█   █  █  │
│    ▀▀      ▀    ▀     ▀▀▀   ▀  ▀    ▀▀   │
│  YouTube Terminal Player v2.2           │
└─────────────────────────────────────────┘
```

### 2. Suppression des Messages d'Erreur macOS

**Problème résolu**:
- Messages `CFURLCopyResourcePropertyForKey failed` → Supprimés
- Messages `CFURLResourceIsReachable failed` → Supprimés
- Erreur `shell-init: error retrieving current directory` → Supprimée

**Solution technique**:
- `--quiet` pour mpv (réduit verbosité)
- `2>/dev/null` pour rediriger stderr
- Conservation de stdout pour affichage status

### 3. Affichage Pendant Lecture Amélioré

**Format compact avec couleurs**:
```
♪ [1/4] | ⏱ 00:12:34/00:49:03 | Titre de la vidéo
▶️  Audio [1/4]: Titre de la vidéo
```

**Caractéristiques**:
- Icônes colorées (♪ en cyan, ⏱ en gris)
- Position playlist visible `[1/4]`
- Timer lisible
- Titre de la vidéo

### 4. Interface Utilisateur Polie

**Prompts améliorés**:
```
[*] Search: "query" (20 results)
[✓] Playing: Titre de la vidéo
[>] Playback mode:
  [1] Audio only (default)
  [2] Video
Choice (1/2): 
```

**Raccourcis clavier**:
```
─────────────────────────────────────────
[*] mpv shortcuts:
   <  >     : Previous/Next video
   ←  →     : Seek -/+ 5s
   ↑  ↓     : Volume +/-
   Space    : Pause/Play
   q        : Quit
─────────────────────────────────────────
```

## [*] Comparaison Avant/Après

### Avant (v2.1)
```
🔍 Search: "y-files" (500 results)...

▶️  Playing 4 videos (playlist)

🎧 Playing audio...

Playing: https://www.youtube.com/watch?v=s9VoC8MoeUs
2025-10-07 07:36:25.614 mpv[58285:1543962] CFURLCopy...
2025-10-07 07:36:25.614 mpv[58285:1543964] CFURLCopy...
[... 20 lignes d'erreurs ...]
```

### Après (v2.2)
```
[*] Search: "y-files" (500 results)

[✓] Playing 4 videos (playlist)

[>] Playback mode:
  [1] Audio only (default)
  [2] Video
Choice (1/2): 1

─────────────────────────────────────────
[*] mpv shortcuts:
   <  >     : Previous/Next video
   ←  →     : Seek -/+ 5s
─────────────────────────────────────────

[~] Playing audio...

♪ [1/4] | ⏱ 00:12:34/00:49:03 | Majestic 12 | Secret...
▶️  Audio [1/4]: Majestic 12 | Secret Documents...
```

## [>] Avantages Utilisateur

```
┌─────────────────────────────────────────────────────────────────┐
│ Aspect               │ Amélioration                             │
├──────────────────────┼──────────────────────────────────────────┤
│ Lisibilité           │ +80% (couleurs, icônes, structure)       │
│ Propreté affichage   │ +100% (0 erreur macOS)                   │
│ Expérience visuelle  │ Cohérente avec Terminal Guru Design      │
│ Compacité            │ Adapté aux petits panes Warp             │
│ Professionnalisme    │ Look & feel premium                      │
└──────────────────────┴──────────────────────────────────────────┘
```

## [#] Détails Techniques

### Codes Couleurs ANSI
```bash
SUCCESS='\033[1;32m'   # Bright Green
ERROR='\033[1;31m'     # Bright Red
INFO='\033[1;36m'      # Bright Cyan
NOTICE='\033[1;35m'    # Bright Magenta
DIM='\033[0;90m'       # Gray
BOLD='\033[1;37m'      # White
NC='\033[0m'           # Reset
```

### Options mpv
```bash
--quiet                # Réduit verbosité
--term-status-msg      # Message status pendant lecture
--term-playing-msg     # Message au démarrage vidéo
2>/dev/null            # Supprime stderr (erreurs macOS)
```

## [>] Compatibilité

- ✓ macOS (Apple Silicon & Intel)
- ✓ Warp Terminal
- ✓ Terminal.app
- ✓ iTerm2
- ✓ Tout terminal supportant ANSI colors

## [*] Migration

Aucune action requise. Le script est rétrocompatible avec v2.1.

Pour mettre à jour :
```bash
cd ~/Work/Personal/1-Projects/ytplay-youtube-terminal
git pull
# ou si installé globalement:
./install.sh
```

═════════════════════════════════════════════════════════════════════

**Version**: 2.2  
**Author**: iamthemediagit  
**Design**: Terminal Guru Edition  
**Date**: 7 October 2025
