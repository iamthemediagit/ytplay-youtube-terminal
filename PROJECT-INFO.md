# 📋 ytplay - Project Information

## 🎯 Project Overview

**Name**: ytplay-youtube-terminal  
**Type**: CLI Tool / Terminal Application  
**Purpose**: Simple and powerful YouTube player for terminal using native Unix tools  
**Status**: Production Ready ✅  
**License**: MIT  
**Platform**: macOS (Apple Silicon & Intel)

## 📁 Project Structure

```
ytplay-youtube-terminal/
├── README.md                         # Main documentation (GitHub ready)
├── LICENSE                           # MIT License
├── install.sh                        # Automated installation script
├── .gitignore                        # Git ignore rules
├── PROJECT-INFO.md                   # This file
├── bin/
│   └── ytplay                        # Main executable script
├── docs/
│   ├── ytplay-quickstart.md         # Quick start guide
│   ├── ytplay-interactive-youtube.md # Complete documentation
│   ├── mpv-keyboard-shortcuts.md    # mpv controls reference
│   └── YTPLAY-RESUME.md             # Full summary (French)
└── .github/
    └── workflows/                    # (For future CI/CD)
```

## 🔧 Technical Stack

- **Language**: Bash
- **Dependencies**:
  - `yt-dlp` - YouTube video/audio extraction
  - `fzf` - Fuzzy finder for interactive selection
  - `mpv` - Media player (audio/video)
  - `jq` - JSON processor

## 🚀 Installation Methods

### For End Users
```bash
git clone https://github.com/YOUR_USERNAME/ytplay-youtube-terminal.git
cd ytplay-youtube-terminal
./install.sh
```

### For Development
```bash
# Clone to your PARA Projects folder
cd ~/Work/Personal/1-Projects/ytplay-youtube-terminal

# Test locally
./bin/ytplay "test query"

# Install system-wide
./install.sh
```

## 📦 Distribution

### GitHub Repository Setup

1. **Create GitHub repo**: `ytplay-youtube-terminal`
2. **Initialize git**:
   ```bash
   cd ~/Work/Personal/1-Projects/ytplay-youtube-terminal
   git init
   git add .
   git commit -m "Initial commit: ytplay v2.0"
   ```

3. **Push to GitHub**:
   ```bash
   git remote add origin git@github.com:YOUR_USERNAME/ytplay-youtube-terminal.git
   git branch -M main
   git push -u origin main
   ```

4. **Add topics**: 
   - youtube
   - terminal
   - cli
   - mpv
   - fzf
   - macos
   - bash
   - yt-dlp

### One-line Install (After GitHub setup)
```bash
curl -fsSL https://raw.githubusercontent.com/YOUR_USERNAME/ytplay-youtube-terminal/main/install.sh | bash
```

## 🔄 Reinstallation on New Laptop

### Method 1: From GitHub (Recommended)
```bash
cd ~/Work/Personal/1-Projects
git clone git@github.com:YOUR_USERNAME/ytplay-youtube-terminal.git
cd ytplay-youtube-terminal
./install.sh
```

### Method 2: From PARA Backup
```bash
# If you have your PARA structure backed up
cd ~/Work/Personal/1-Projects/ytplay-youtube-terminal
./install.sh
```

## 📝 Version History

### v2.0 (October 2025) - Current
- ✨ Multi-selection support (Tab key in fzf)
- ✨ Playlist navigation (< > keys in mpv)
- ✨ Keyboard shortcuts display
- 📚 Complete documentation suite
- 🔧 Automated installation script
- 🎯 GitHub-ready structure

### v1.0 (October 2025)
- 🎉 Initial release
- 🔍 Interactive search with fzf
- 🎧 Audio/video playback with mpv
- 📊 Metadata display

## 🧪 Testing Checklist

Before publishing to GitHub:

- [ ] Test `./install.sh` on clean macOS
- [ ] Verify all dependencies install correctly
- [ ] Test ytplay with various queries
- [ ] Verify multi-selection works
- [ ] Test playlist navigation (< >)
- [ ] Check documentation links
- [ ] Update README.md with your GitHub username
- [ ] Add screenshot/demo GIF

## 🔗 Related Files in PARA

### Original Development Location
- **Tutorials**: `~/Work/Personal/3-Resources/tutorials/`
  - Original tutorial files (kept for reference)
  - Can be archived after GitHub publication

### System Installation
- **Script location**: `~/.local/bin/ytplay`
- **Config**: `~/.config/mpv/` (optional user configs)

## 📊 Project Metrics

- **Lines of code**: ~100 (ytplay script)
- **Documentation pages**: 4
- **Dependencies**: 4 (yt-dlp, fzf, mpv, jq)
- **Supported platforms**: macOS
- **Installation time**: ~2-5 minutes

## 🎓 Learning Outcomes

This project demonstrates:
- ✅ Bash scripting best practices
- ✅ Unix tool composition (pipes, process management)
- ✅ Interactive CLI design with fzf
- ✅ Clean project structure
- ✅ Documentation-first approach
- ✅ PARA methodology application

## 🔮 Future Enhancements

Potential improvements:
- [ ] Linux support (Ubuntu, Arch)
- [ ] Configuration file support (~/.ytplayrc)
- [ ] Playlist save/load functionality
- [ ] History tracking
- [ ] Favorite videos management
- [ ] Integration with music services
- [ ] Shell completion (bash/zsh)

## 👤 Maintenance

**Created**: October 2025  
**Last Updated**: October 2025  
**Maintainer**: Your Name  
**Contact**: your-email@example.com

## 📄 License

MIT License - See [LICENSE](LICENSE) file for details

---

**Note**: Remember to update GitHub URL in README.md before publishing!
