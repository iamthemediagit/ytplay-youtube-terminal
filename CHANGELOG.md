# Changelog

All notable changes to **ytplay** will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [2.1.0] - 2025-10-06

### 🎨 Added
- **ASCII Logo** - Beautiful branded startup screen displaying "ytplay" ASCII art
- **Formatted columns display** - Results now show in clean table format:
  - Title (60 chars max)
  - Duration (human-readable: "15min", "1h23m")
  - View count (abbreviated: "1.5M", "234K")
  - Upload date (formatted: "Jan'24", "Feb'23")
  - Author name (20 chars max)
- **Playlist position counter** in mpv - Real-time display of current position `[2/5]`
- **Enhanced status messages** in mpv with emoji indicators (▶️, ♪, ⏱)

### ✨ Improved
- **fzf interface modernization**:
  - Rounded borders (`--border=rounded`)
  - Styled header with column names
  - Better visual hierarchy with emoji prompts
- **Date formatting** - Converts YYYYMMDD to human-readable "MMM'YY" format
- **Duration formatting** - Converts seconds to "Xmin" or "XhYYm" format
- **View count abbreviation** - Large numbers shown as "X.XM" or "XK"

### 🐛 Fixed
- Case statement syntax errors causing script crashes
- Space handling in metadata parsing
- Video ID extraction from formatted strings

### 📝 Documentation
- Updated README.md with v2.1 features
- Added version badge linking to CHANGELOG
- Created comprehensive CHANGELOG

---

## [2.0.0] - 2025-01-05

### 🎉 Initial Release
- Interactive YouTube search via yt-dlp
- Fuzzy finder selection with fzf
- Multi-selection support (Tab key)
- Playlist creation and navigation
- Audio-first streaming with mpv
- Optional video playback mode
- Keyboard shortcuts for playlist navigation (`<` `>`)
- Complete installation script
- Comprehensive documentation suite

### 📚 Documentation
- Quick Start Guide
- Complete User Guide
- mpv Keyboard Shortcuts Reference
- Installation Guide
- Troubleshooting Section

---

## Roadmap

### Planned for v2.2
- [ ] Configuration file support (~/.config/ytplay/config)
- [ ] History/favorites management
- [ ] Download queue for offline playback
- [ ] Custom format presets (audio quality, video quality)

### Future Considerations
- [ ] Playlist export/import (M3U, JSON)
- [ ] Integration with external music services
- [ ] Thumbnail preview in terminal (if supported)
- [ ] Search filters (duration, upload date, channel)

---

**Legend:**
- 🎉 Major release
- ✨ Enhancement
- 🎨 UI/UX improvement
- 🐛 Bug fix
- 📝 Documentation
- 🔧 Configuration
- ⚡ Performance

[2.1.0]: https://github.com/iamthemediagit/ytplay-youtube-terminal/releases/tag/v2.1.0
[2.0.0]: https://github.com/iamthemediagit/ytplay-youtube-terminal/releases/tag/v2.0.0
