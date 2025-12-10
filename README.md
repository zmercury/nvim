# Neovim Configuration - Complete Keymap Reference

> **Leader Key:** `<Space>`

## 📑 Table of Contents

- [Navigation & Movement](#navigation--movement)
- [Window Management](#window-management)
- [Tab Management](#tab-management)
- [Text Manipulation](#text-manipulation)
- [File & Project Management](#file--project-management)
- [Telescope (Fuzzy Finder)](#telescope-fuzzy-finder)
- [Harpoon (File Navigation)](#harpoon-file-navigation)
- [LSP & Diagnostics](#lsp--diagnostics)
- [Git Operations](#git-operations)
- [Terminal Management](#terminal-management)
- [Buffer Management](#buffer-management)
- [UI & Visual](#ui--visual)
- [Special Features](#special-features)

---

## Navigation & Movement

| Key | Mode | Description |
|-----|------|-------------|
| `<C-j>` | Normal | Move 10 lines down |
| `<C-k>` | Normal | Move 10 lines up |
| `<C-m>` | Normal | Jump forward in jumplist (Ctrl+i alternative) |
| `$$` | Normal | Move to end of line and enter append mode |
| `$$` | Insert | Exit insert mode, move to end of line, and enter append mode |
| `<C-A-j>` | Normal | Move current line down |
| `<C-A-k>` | Normal | Move current line up |

---

## Window Management

### Window Splits

| Key | Mode | Description |
|-----|------|-------------|
| `ss` | Normal | Split window horizontally |
| `sv` | Normal | Split window vertically |

### Window Navigation

| Key | Mode | Description |
|-----|------|-------------|
| `sh` | Normal | Move to left window |
| `sk` | Normal | Move to top window |
| `sj` | Normal | Move to bottom window |
| `sl` | Normal | Move to right window |

### Window Resizing

| Key | Mode | Description |
|-----|------|-------------|
| `<C-w><left>` | Normal | Decrease window width |
| `<C-w><right>` | Normal | Increase window width |
| `<C-w><up>` | Normal | Increase window height |
| `<C-w><down>` | Normal | Decrease window height |
| `<A-j>` | Normal | Decrease current window height by 2 lines |
| `<A-k>` | Normal | Increase current window height by 2 lines |

---

## Tab Management

| Key | Mode | Description |
|-----|------|-------------|
| `te` | Normal | Open new tab (prompts for file) |
| `<Tab>` | Normal | Go to next tab / Next buffer |
| `<S-Tab>` | Normal | Go to previous tab / Previous buffer |

---

## Text Manipulation

### Basic Operations

| Key | Mode | Description |
|-----|------|-------------|
| `x` | Normal | Delete character (without affecting registers) |
| `dw` | Normal | Delete word backwards |
| `<C-a>` | Normal | Select all text |
| `<A-d>` | Normal | Duplicate current line below |
| `<C-BS>` | Insert | Delete word backwards (Ctrl+Backspace) |

### Register-Safe Operations

| Key | Mode | Description |
|-----|------|-------------|
| `<Leader>p` | Normal | Paste from register 0 (after cursor) |
| `<Leader>P` | Normal | Paste from register 0 (before cursor) |
| `<Leader>p` | Visual | Paste from register 0 |
| `<Leader>c` | Normal/Visual | Change text without affecting registers |
| `<Leader>C` | Normal/Visual | Change to end of line without affecting registers |
| `<Leader>d` | Normal/Visual | Delete text without affecting registers |
| `<Leader>D` | Normal/Visual | Delete to end of line without affecting registers |

### Numbers & Incrementing

| Key | Mode | Description |
|-----|------|-------------|
| `+` | Normal | Increment number under cursor |
| `-` | Normal | Decrement number under cursor |
| `<C-a>` | Normal | Increment (dial.nvim enhanced) |
| `<C-x>` | Normal | Decrement (dial.nvim enhanced) |

### Line Operations

| Key | Mode | Description |
|-----|------|-------------|
| `<Leader>o` | Normal | Add new line below without entering insert mode |
| `<Leader>O` | Normal | Add new line above without entering insert mode |

---

## File & Project Management

### File Browser

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>e` | Normal | Open Netrw file explorer (full page) |
| `sf` | Normal | Open Telescope file browser at current buffer path |

---

## Telescope (Fuzzy Finder)

| Key | Mode | Description |
|-----|------|-------------|
| `;f` | Normal | Find files (respects .gitignore, shows hidden) |
| `;r` | Normal | Live grep (search text in files, shows hidden) |
| `\\` | Normal | List open buffers |
| `;t` | Normal | Search help tags |
| `;;` | Normal | Resume previous Telescope picker |
| `;e` | Normal | List diagnostics for all buffers |
| `;s` | Normal | List functions/variables from Treesitter |
| `<leader>fP` | Normal | Find files in plugin directory |
| `sf` | Normal | File browser at current buffer directory |

### Telescope File Browser Mappings (Normal Mode)

| Key | Mode | Description |
|-----|------|-------------|
| `N` | Normal | Create new file/folder |
| `h` | Normal | Go to parent directory |
| `/` | Normal | Enter insert mode (search) |
| `<C-u>` | Normal | Move up 10 items |
| `<C-d>` | Normal | Move down 10 items |
| `<PageUp>` | Normal | Scroll preview up |
| `<PageDown>` | Normal | Scroll preview down |

---

## Harpoon (File Navigation)

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>h` | Normal | Toggle Harpoon quick menu |
| `<leader>a` | Normal | Add current file to Harpoon |
| `<leader>1` | Normal | Go to Harpoon file 1 |
| `<leader>2` | Normal | Go to Harpoon file 2 |
| `<leader>3` | Normal | Go to Harpoon file 3 |
| `<leader>4` | Normal | Go to Harpoon file 4 |
| `<leader>5` | Normal | Go to Harpoon file 5 |
| `<leader>6` | Normal | Go to Harpoon file 6 |
| `<leader>7` | Normal | Go to Harpoon file 7 |
| `<leader>8` | Normal | Go to Harpoon file 8 |
| `<leader>9` | Normal | Go to Harpoon file 9 |
| `<leader>0` | Normal | Go to Harpoon file 10 |
| `<C-p>` | Normal | Previous Harpoon file |
| `<C-n>` | Normal | Next Harpoon file |

---

## LSP & Diagnostics

| Key | Mode | Description |
|-----|------|-------------|
| `gd` | Normal | Go to definition (Telescope, new window) |
| `<leader>dn` | Normal | Go to next diagnostic |
| `<leader>i` | Normal | Toggle inlay hints |
| `<leader>r` | Normal | Replace hex color with HSL |

### Commands

| Command | Description |
|---------|-------------|
| `:ToggleAutoformat` | Toggle autoformatting on save |

---

## Git Operations

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>lg` | Normal | Open LazyGit |
| `<leader>gb` | Normal | Open Git blame window |
| `<leader>go` | Normal | Open file/folder in Git repository (browser) |

---

## Terminal Management

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>tt` | Normal | Toggle terminal (horizontal, 15 lines) |
| `<leader>wt` | Normal | Open new Windows Terminal window |
| `<leader>fm` | Normal | Run current Python file in terminal |

### Commands

| Command | Description |
|---------|-------------|
| `:Runp` | Run current Python file in horizontal terminal split |

---

## Buffer Management

| Key | Mode | Description |
|-----|------|-------------|
| `\\` | Normal | List open buffers (Telescope) |
| `<Tab>` | Normal | Next buffer (BufferLine) |
| `<S-Tab>` | Normal | Previous buffer (BufferLine) |
| `<leader>th` | Normal | Close all hidden buffers |
| `<leader>tu` | Normal | Close all nameless buffers |

---

## UI & Visual

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>z` | Normal | Toggle Zen Mode |

---

## Special Features

### Code Editing

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>c` | Normal | Add `//` comment at cursor position |

### Mini.bracketed Navigation

Navigate through various Vim objects using `[` and `]`:

| Key | Description |
|-----|-------------|
| `[n` / `]n` | Previous/Next Treesitter node |
| Other bracket motions | File, window, quickfix, yank history (disabled) |

### Yanking (Copy) Behavior

- Text yanking operations will be briefly highlighted
- All operations preserve the state of registers unless explicitly using register commands

### File Type Specific Features

#### C# Files
- `cw` abbreviation expands to `Console.WriteLine(`

#### Python Files
- `<leader>fm` - Run current file in terminal
- `:Runp` - Run current Python file

### Cowboy Mode (Discipline)

The configuration includes "cowboy mode" which warns you if you press `h`, `j`, `k`, `l`, `+`, or `-` more than 10 times rapidly, encouraging you to use more efficient movement commands.

---

## Plugin-Specific Notes

### Dial.nvim
Enhanced increment/decrement supporting:
- Decimal and hexadecimal numbers
- Dates (YYYY/MM/DD format)
- Booleans (true/false)
- Semantic versioning
- let/const toggling

### Blink.cmp
Completion engine with transparent popup windows

### Toggleterm
Terminal integration with horizontal splits (15 lines by default)

---

## Configuration Files

- **Main keymaps:** `lua/config/keymaps.lua`
- **Options & settings:** `lua/config/options.lua`
- **Plugin configs:** `lua/plugins/*.lua`
- **Custom modules:** `lua/mercury/*.lua`
