# 🎧 ytplay - YouTube Terminal Player

> Simple, powerful, and native YouTube player for the terminal using fzf + mpv + yt-dlp

[![Platform](https://img.shields.io/badge/platform-macOS-lightgrey)](https://www.apple.com/macos/)
[![Shell](https://img.shields.io/badge/shell-bash-green)](https://www.gnu.org/software/bash/)
[![License](https://img.shields.io/badge/license-MIT-blue)](LICENSE)

![ytplay demo](https://img.shields.io/badge/demo-coming_soon-orange)

## ✨ Features

- 🔍 **Interactive search** - Search YouTube with fuzzy finder (fzf)
- 🎵 **Multi-selection** - Select multiple videos to create playlists on the fly (Tab key)
- 🎮 **Playlist navigation** - Navigate between videos during playback (`<` `>` keys)
- 📊 **Rich metadata** - See title, duration, uploader, and date before playing
- 🎧 **Audio-first** - Optimized for audio streaming (save bandwidth)
- 📹 **Video support** - Full video playback when needed
- ⚡ **Blazing fast** - Native Unix stack (no Python dependencies)
- 🔧 **Highly customizable** - Simple bash script you can modify

## 🎯 Quick Start

```bash
# One-line install
curl -fsSL https://raw.githubusercontent.com/YOUR_USERNAME/ytplay-youtube-terminal/main/install.sh | bash

# Or manual install
git clone https://github.com/YOUR_USERNAME/ytplay-youtube-terminal.git
cd ytplay-youtube-terminal
./install.sh
```

### Usage

```bash
# Search and play
ytplay "lofi hip hop"

# More results
ytplay "documentary" 50

# Direct URL
mpv --no-video "https://youtube.com/watch?v=VIDEO_ID"
```

## 🎮 Workflow

1. **Launch**: `ytplay "your search"`
2. **Navigate**: ↑↓ arrows or `/keyword` to filter
3. **Select**: 
   - `Tab` to select multiple videos (playlist)
   - `Enter` to confirm
4. **Choose mode**: 
   - `1` = Audio only (recommended)
   - `2` = Video
5. **Control in mpv**:
   - `<` `>` = Previous/Next video
   - `Space` = Pause/Play
   - `←` `→` = Seek ±5s
   - `q` = Quit

## 📋 Requirements

- **macOS** (tested on Apple Silicon & Intel)
- [Homebrew](https://brew.sh)
- Dependencies (auto-installed by `install.sh`):
  - `yt-dlp` - YouTube extraction
  - `fzf` - Fuzzy finder
  - `mpv` - Media player
  - `jq` - JSON processor

## 🚀 Installation

### Automated Install (Recommended)

```bash
git clone https://github.com/YOUR_USERNAME/ytplay-youtube-terminal.git
cd ytplay-youtube-terminal
./install.sh
```

The script will:
1. ✅ Check dependencies
2. ✅ Install missing tools via Homebrew
3. ✅ Copy `ytplay` to `~/.local/bin`
4. ✅ Verify PATH configuration

### Manual Install

```bash
# Install dependencies
brew install yt-dlp fzf mpv jq

# Copy script
mkdir -p ~/.local/bin
cp bin/ytplay ~/.local/bin/
chmod +x ~/.local/bin/ytplay

# Add to PATH (if not already)
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

## 📚 Documentation

- **[Quick Start Guide](docs/ytplay-quickstart.md)** - Essential commands and shortcuts ⚡
- **[Complete Documentation](docs/ytplay-interactive-youtube.md)** - In-depth guide 📖
- **[mpv Keyboard Shortcuts](docs/mpv-keyboard-shortcuts.md)** - All mpv controls ⌨️
- **[Complete Summary](docs/YTPLAY-RESUME.md)** - Full feature overview 🎯

## 💡 Use Cases

### Daily listening
```bash
ytplay "podcast tech"
# Select one, listen, skip with > if needed
```

### Music playlist
```bash
ytplay "pink floyd" 30
# Tab to select 5-10 tracks
# Navigate with < >
```

### Podcast series
```bash
ytplay "lex fridman podcast" 20
# Tab on multiple episodes
# Continuous playback, skip with >
```

### Download for offline (plane mode)
```bash
# Find video with ytplay, copy URL, then:
yt-dlp -f bestaudio -x --audio-format m4a "URL"
```

## ⚙️ Configuration

### Create aliases
```bash
# Add to ~/.zshrc
alias yt='ytplay'
alias ytm='ytplay "music"'
alias ytpod='ytplay "podcast"'

source ~/.zshrc
```

### Force audio by default
Edit `~/.local/bin/ytplay` line 93-102:
```bash
echo "🎧 Lecture audio..."
mpv --no-video "${VIDEO_URLS[@]}"
```

### Shuffle or loop mode
```bash
mpv --no-video --shuffle "${VIDEO_URLS[@]}"        # Random
mpv --no-video --loop-playlist "${VIDEO_URLS[@]}"  # Loop
```

## 🆚 Comparison

| Feature | ytplay | yewtube | mpv direct |
|---------|--------|---------|------------|
| Installation | ✅ Simple bash | ⚠️ Python deps | ✅ Native |
| Multi-selection | ✅ Tab | ❌ No | ❌ No |
| Navigation | ✅ < > | ✅ Yes | ❌ No |
| Filtering | ✅ Powerful fzf | ⚠️ Basic | ❌ No |
| Stability | ✅ Stable | ⚠️ macOS bugs | ✅ Stable |
| Metadata | ✅ Before play | ✅ Yes | ❌ No |

**Verdict**: ytplay = Best balance simplicity/power

## 🔧 Troubleshooting

```bash
# Update yt-dlp (important!)
brew upgrade yt-dlp

# Check dependencies
yt-dlp --version
fzf --version
jq --version
mpv --version

# Reinstall ytplay
cd ytplay-youtube-terminal
./install.sh
```

### Common issues

**"ytplay: command not found"**
```bash
# Check PATH
echo $PATH | grep ".local/bin"

# Add to PATH if missing
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

**"No results found"**
```bash
# Update yt-dlp (YouTube API changes frequently)
brew upgrade yt-dlp
```

## 🤝 Contributing

Contributions welcome! Please feel free to submit a Pull Request.

## 📄 License

MIT License - see [LICENSE](LICENSE) file for details

## 🙏 Credits

Built with:
- [yt-dlp](https://github.com/yt-dlp/yt-dlp) - YouTube extractor
- [fzf](https://github.com/junegunn/fzf) - Fuzzy finder
- [mpv](https://mpv.io) - Media player
- [jq](https://stedolan.github.io/jq/) - JSON processor

## ⭐ Star History

If this project helped you, please consider giving it a star ⭐

---

**Made with ❤️ for the terminal**

*Enjoy your terminal-based YouTube experience!*
