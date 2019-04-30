# Autogenerated config.py
# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

# Uncomment this to still load settings configured via autoconfig.yml
# config.load_autoconfig()

# How to open links in an existing instance if a new one is launched.
# This happens when e.g. opening a link from a terminal. See
# `new_instance_open_target_window` to customize in which window the
# link is opened in.
# Type: String
# Valid values:
#   - tab: Open a new tab in the existing window and activate the window.
#   - tab-bg: Open a new background tab in the existing window and activate the window.
#   - tab-silent: Open a new tab in the existing window without activating the window.
#   - tab-bg-silent: Open a new background tab in the existing window without activating the window.
#   - window: Open in a new window.
c.new_instance_open_target = 'window'

# Which window to choose when opening links as new tabs. When
# `new_instance_open_target` is not set to `window`, this is ignored.
# Type: String
# Valid values:
#   - first-opened: Open new tabs in the first (oldest) opened window.
#   - last-opened: Open new tabs in the last (newest) opened window.
#   - last-focused: Open new tabs in the most recently focused window.
#   - last-visible: Open new tabs in the most recently visible window.
c.new_instance_open_target_window = 'last-focused'

# Backend to use to display websites. qutebrowser supports two different
# web rendering engines / backends, QtWebKit and QtWebEngine. QtWebKit
# was discontinued by the Qt project with Qt 5.6, but picked up as a
# well maintained fork: https://github.com/annulen/webkit/wiki -
# qutebrowser only supports the fork. QtWebEngine is Qt's official
# successor to QtWebKit. It's slightly more resource hungry than
# QtWebKit and has a couple of missing features in qutebrowser, but is
# generally the preferred choice.
# Type: String
# Valid values:
#   - webengine: Use QtWebEngine (based on Chromium).
#   - webkit: Use QtWebKit (based on WebKit, similar to Safari).
c.backend = 'webengine'

# Additional arguments to pass to Qt, without leading `--`. With
# QtWebEngine, some Chromium arguments (see
# https://peter.sh/experiments/chromium-command-line-switches/ for a
# list) will work.
# Type: List of String
c.qt.args = ['ppapi-widevine-path=/usr/lib/qt/plugins/ppapi/libwidevinecdmadapter.so']

# Turn on Qt HighDPI scaling. This is equivalent to setting
# QT_AUTO_SCREEN_SCALE_FACTOR=1 in the environment. It's off by default
# as it can cause issues with some bitmap fonts. As an alternative to
# this, it's possible to set font sizes and the `zoom.default` setting.
# Type: Bool
c.qt.highdpi = True

# Always restore open sites when qutebrowser is reopened.
# Type: Bool
c.auto_save.session = False

# Limit fullscreen to the browser window (does not expand to fill the
# screen).
# Type: Bool
c.content.windowed_fullscreen = True

# Allow websites to request geolocations.
# Type: BoolAsk
# Valid values:
#   - true
#   - false
#   - ask
c.content.geolocation = True

# Enable host blocking.
# Type: Bool
c.content.host_blocking.enabled = True

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'file://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome://*/*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'qute://*/*')

# Height (in pixels or as percentage of the window) of the completion.
# Type: PercOrInt
c.completion.height = '0%'

# Width (in pixels) of the scrollbar in the completion window.
# Type: Int
c.completion.scrollbar.width = 0

# Directory to save downloads to. If unset, a sensible OS-specific
# default is used.
# Type: Directory
c.downloads.location.directory = '~/downloads'

# Prompt the user for the download location. If set to false,
# `downloads.location.directory` will be used.
# Type: Bool
c.downloads.location.prompt = False

# Remember the last used download directory.
# Type: Bool
c.downloads.location.remember = False

# Where to show the downloaded files.
# Type: VerticalPosition
# Valid values:
#   - top
#   - bottom
c.downloads.position = 'bottom'

# Duration (in milliseconds) to wait before removing finished downloads.
# If set to -1, downloads are never removed.
# Type: Int
c.downloads.remove_finished = 0

# Automatically enter insert mode if an editable element is focused
# after loading the page.
# Type: Bool
c.input.insert_mode.auto_load = True

# Enter insert mode if an editable element is clicked.
# Type: Bool
c.input.insert_mode.auto_enter = True

# Leave insert mode if a non-editable element is clicked.
# Type: Bool
c.input.insert_mode.auto_leave = False

# When to show the scrollbar.
# Type: String
# Valid values:
#   - always: Always show the scrollbar.
#   - never: Never show the scrollbar.
#   - when-searching: Show the scrollbar when searching for text in the webpage. With the QtWebKit backend, this is equal to `never`.
c.scrolling.bar = 'never'

# Enable smooth scrolling for web pages. Note smooth scrolling does not
# work with the `:scroll-px` command.
# Type: Bool
c.scrolling.smooth = True

# Languages to use for spell checking. You can check for available
# languages and install dictionaries using scripts/dictcli.py. Run the
# script with -h/--help for instructions.
# Type: List of String
# Valid values:
#   - af-ZA: Afrikaans (South Africa)
#   - bg-BG: Bulgarian (Bulgaria)
#   - ca-ES: Catalan (Spain)
#   - cs-CZ: Czech (Czech Republic)
#   - da-DK: Danish (Denmark)
#   - de-DE: German (Germany)
#   - el-GR: Greek (Greece)
#   - en-AU: English (Australia)
#   - en-CA: English (Canada)
#   - en-GB: English (United Kingdom)
#   - en-US: English (United States)
#   - es-ES: Spanish (Spain)
#   - et-EE: Estonian (Estonia)
#   - fa-IR: Farsi (Iran)
#   - fo-FO: Faroese (Faroe Islands)
#   - fr-FR: French (France)
#   - he-IL: Hebrew (Israel)
#   - hi-IN: Hindi (India)
#   - hr-HR: Croatian (Croatia)
#   - hu-HU: Hungarian (Hungary)
#   - id-ID: Indonesian (Indonesia)
#   - it-IT: Italian (Italy)
#   - ko: Korean
#   - lt-LT: Lithuanian (Lithuania)
#   - lv-LV: Latvian (Latvia)
#   - nb-NO: Norwegian (Norway)
#   - nl-NL: Dutch (Netherlands)
#   - pl-PL: Polish (Poland)
#   - pt-BR: Portuguese (Brazil)
#   - pt-PT: Portuguese (Portugal)
#   - ro-RO: Romanian (Romania)
#   - ru-RU: Russian (Russia)
#   - sh: Serbo-Croatian
#   - sk-SK: Slovak (Slovakia)
#   - sl-SI: Slovenian (Slovenia)
#   - sq: Albanian
#   - sr: Serbian
#   - sv-SE: Swedish (Sweden)
#   - ta-IN: Tamil (India)
#   - tg-TG: Tajik (Tajikistan)
#   - tr-TR: Turkish (Turkey)
#   - uk-UA: Ukrainian (Ukraine)
#   - vi-VN: Vietnamese (Viet Nam)
c.spellcheck.languages = ['en-GB']

# Hide the statusbar unless a message is shown.
# Type: Bool
c.statusbar.hide = False

# Position of the status bar.
# Type: VerticalPosition
# Valid values:
#   - top
#   - bottom
c.statusbar.position = 'bottom'

# List of widgets displayed in the statusbar.
# Type: List of String
# Valid values:
#   - url: Current page URL.
#   - scroll: Percentage of the current page position like `10%`.
#   - scroll_raw: Raw percentage of the current page position like `10`.
#   - history: Display an arrow when possible to go back/forward in history.
#   - tabs: Current active tab, e.g. `2`.
#   - keypress: Display pressed keys when composing a vi command.
#   - progress: Progress bar for the current page loading.
c.statusbar.widgets = ['url', 'scroll', 'history', 'tabs', 'progress']

# Open new tabs (middleclick/ctrl+click) in the background.
# Type: Bool
c.tabs.background = False

# When to show favicons in the tab bar.
# Type: String
# Valid values:
#   - always: Always show favicons.
#   - never: Always hide favicons.
#   - pinned: Show favicons only on pinned tabs.
c.tabs.favicons.show = 'never'

# Position of the tab bar.
# Type: Position
# Valid values:
#   - top
#   - bottom
#   - left
#   - right
c.tabs.position = 'top'

# When to show the tab bar.
# Type: String
# Valid values:
#   - always: Always show the tab bar.
#   - never: Always hide the tab bar.
#   - multiple: Hide the tab bar if only one tab is open.
#   - switching: Show the tab bar when switching tabs.
c.tabs.show = 'always'

# Duration (in milliseconds) to show the tab bar before hiding it when
# tabs.show is set to 'switching'.
# Type: Int
c.tabs.show_switching_delay = 1000

# Alignment of the text inside of tabs.
# Type: TextAlignment
# Valid values:
#   - left
#   - right
#   - center
c.tabs.title.alignment = 'center'

# Width (in pixels) of the progress indicator (0 to disable).
# Type: Int
c.tabs.indicator.width = 0

# Page to open if :open -t/-b/-w is used without URL. Use `about:blank`
# for a blank page.
# Type: FuzzyUrl
c.url.default_page = 'about:blank'

# Search engines which can be used via the address bar. Maps a search
# engine name (such as `DEFAULT`, or `ddg`) to a URL with a `{}`
# placeholder. The placeholder will be replaced by the search term, use
# `{{` and `}}` for literal `{`/`}` signs. The search engine named
# `DEFAULT` is used when `url.auto_search` is turned on and something
# else than a URL was entered to be opened. Other search engines can be
# used by prepending the search engine name to the search term, e.g.
# `:open google qutebrowser`.
# Type: Dict
c.url.searchengines = {'DEFAULT': 'https://google.co.uk/search?hl=en&q={}'}

# Page(s) to open at the start.
# Type: List of FuzzyUrl, or FuzzyUrl
c.url.start_pages = 'about:blank'

# Default zoom level.
# Type: Perc
c.zoom.default = '100%'

# Available zoom levels.
# Type: List of Perc
c.zoom.levels = ['25%', '33%', '50%', '67%', '75%', '80', '85', '90%', '100%', '110%', '125%', '150%', '175%', '200%', '250%', '300%', '400%', '500%']

# Background color of the completion widget for odd rows.
# Type: QssColor
c.colors.completion.odd.bg = '#000000'

# Top border color of the completion widget category headers.
# Type: QssColor
c.colors.completion.category.border.top = '#000000'

# Foreground color of the selected completion item.
# Type: QtColor
c.colors.completion.item.selected.fg = '#000000'

# Background color of the selected completion item.
# Type: QssColor
c.colors.completion.item.selected.bg = '#000000'

# Top border color of the completion widget category headers.
# Type: QssColor
c.colors.completion.item.selected.border.top = '#000000'

# Bottom border color of the selected completion item.
# Type: QssColor
c.colors.completion.item.selected.border.bottom = '#888888'

# Foreground color of the statusbar.
# Type: QssColor
c.colors.statusbar.normal.fg = '#ffffff'

# Background color of the statusbar.
# Type: QssColor
c.colors.statusbar.normal.bg = '#000000'

# Background color of the statusbar in insert mode.
# Type: QssColor
c.colors.statusbar.insert.bg = '#000000'

# Foreground color of the statusbar in passthrough mode.
# Type: QssColor
c.colors.statusbar.passthrough.fg = '#ffffff'

# Background color of the statusbar in private browsing mode.
# Type: QssColor
c.colors.statusbar.private.bg = '#662222'

# Foreground color of the statusbar in command mode.
# Type: QssColor
c.colors.statusbar.command.fg = '#ffffff'

# Background color of the statusbar in command mode.
# Type: QssColor
c.colors.statusbar.command.bg = '#000000'

# Foreground color of the statusbar in private browsing + command mode.
# Type: QssColor
c.colors.statusbar.command.private.fg = '#ffffff'

# Background color of the statusbar in private browsing + command mode.
# Type: QssColor
c.colors.statusbar.command.private.bg = '#662222'

# Foreground color of the statusbar in caret mode.
# Type: QssColor
c.colors.statusbar.caret.fg = '#ffffff'

# Background color of the progress bar.
# Type: QssColor
c.colors.statusbar.progress.bg = '#aaaaaa'

# Default foreground color of the URL in the statusbar.
# Type: QssColor
c.colors.statusbar.url.fg = 'white'

# Foreground color of the URL in the statusbar for hovered links.
# Type: QssColor
c.colors.statusbar.url.hover.fg = '#ffffff'

# Foreground color of the URL in the statusbar on successful load
# (http).
# Type: QssColor
c.colors.statusbar.url.success.http.fg = '#ffffff'

# Foreground color of the URL in the statusbar on successful load
# (https).
# Type: QssColor
c.colors.statusbar.url.success.https.fg = '#ffffff'

# Background color of the tab bar.
# Type: QtColor
c.colors.tabs.bar.bg = '#000000'

# Foreground color of unselected odd tabs.
# Type: QtColor
c.colors.tabs.odd.fg = '#bbbbbb'

# Background color of unselected odd tabs.
# Type: QtColor
c.colors.tabs.odd.bg = '#000000'

# Foreground color of unselected even tabs.
# Type: QtColor
c.colors.tabs.even.fg = '#bbbbbb'

# Background color of unselected even tabs.
# Type: QtColor
c.colors.tabs.even.bg = '#000000'

# Foreground color of selected odd tabs.
# Type: QtColor
c.colors.tabs.selected.odd.fg = '#ffffff'

# Background color of selected odd tabs.
# Type: QtColor
c.colors.tabs.selected.odd.bg = '#000000'

# Foreground color of selected even tabs.
# Type: QtColor
c.colors.tabs.selected.even.fg = '#ffffff'

# Background color of selected even tabs.
# Type: QtColor
c.colors.tabs.selected.even.bg = '#000000'

# Font used in the completion widget.
# Type: Font
c.fonts.completion.entry = '8pt monospace'

# Font used in the statusbar.
# Type: Font
c.fonts.statusbar = '8pt monospace'

# Font used in the tab bar.
# Type: QtFont
c.fonts.tabs = '8pt monospace'

# Bindings for normal mode
config.bind('xb', 'config-cycle statusbar.hide')
config.bind('xt', 'config-cycle tabs.show always never')
config.bind('xx', 'config-cycle statusbar.hide ;; config-cycle tabs.show always never')
