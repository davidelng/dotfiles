;;; zenwritten-theme.el --- Port of zenwritten.nvim (dark) -*- lexical-binding: t -*-
;; Translated from the original Vim zenwritten theme (zenbones repository)
;; with personal customizations applied on top.

(deftheme zenwritten "Port of zenwritten dark theme from the zenbones repository")

(let (;; Dark palette
      (bg          "#191919")
      (fg          "#BBBBBB")
      (red         "#DE6E7C")
      (green       "#819B69")
      (yellow      "#B77E64")
      (blue        "#6099C0")
      (magenta     "#B279A7")
      (cyan        "#66A5AD")
      (black       "#191919")
      (white       "#BBBBBB")
      (bright-black  "#3D3839")
      (bright-white  "#8E8E8E")

      ;; Extended palette (from original vim theme)
      (dark-red-bg     "#272020")
      (dark-magenta-bg "#252024")
      (dark-blue-bg    "#202223")
      (dark-green-bg   "#212220")
      (dark-yellow-bg  "#242120")
      (diff-add-bg     "#232D1A")
      (diff-change-bg  "#1D2C36")
      (diff-delete-bg  "#3E2225")
      (diff-text-bg    "#324757")
      (float-bg        "#2C2C2C")
      (cursorline-bg   "#222222")
      (visual-bg       "#404040")
      (search-bg       "#65435E")
      (incsearch-bg    "#BF8FB5")
      (statusline-bg   "#303030")
      (statuslinenc-bg "#242424")
      (fold-bg         "#353535")
      (wildmenu-bg     "#B279A7")
      (flash-label-bg  "#315167")
      (color-col-bg    "#55392C")
      (lsp-hint-bg     "#222222"))

  (custom-theme-set-faces
   'zenwritten

   ;; ─── Core ────────────────────────────────────────────────────────────────
   `(default                         ((t (:foreground ,fg :background ,bg))))
   `(cursor                          ((t (:background ,fg))))
   `(lCursor                         ((t (:foreground ,bg :background "#7F7F7F"))))
   `(region                          ((t (:background ,visual-bg))))
   `(fringe                          ((t (:foreground "#616161" :background ,bg))))
   `(hl-line                         ((t (:background ,cursorline-bg))))
   `(highlight                       ((t (:background ,cursorline-bg))))
   `(bold                            ((t (:weight bold))))
   `(italic                          ((t (:slant italic))))
   `(underlined                      ((t (:underline t))))

   ;; ─── Line numbers ────────────────────────────────────────────────────────
   `(line-number                     ((t (:foreground "#616161" :background ,bg))))
   `(line-number-current-line        ((t (:foreground ,fg :background ,bg :weight bold))))

   ;; ─── Syntax ──────────────────────────────────────────────────────────────
   ;; Base: mostly white/gray as in original zenwritten
   `(font-lock-keyword-face          ((t (:foreground ,fg :weight bold))))
   `(font-lock-type-face             ((t (:foreground "#969696"))))
   `(font-lock-function-name-face    ((t (:foreground ,fg))))
   `(font-lock-function-call-face    ((t (:foreground ,fg))))
   `(font-lock-variable-name-face    ((t (:foreground "#9E9E9E"))))
   `(font-lock-builtin-face          ((t (:foreground "#939393" :weight bold))))
   `(font-lock-preprocessor-face     ((t (:foreground ,fg :weight bold))))
   `(font-lock-delimiter-face        ((t (:foreground "#7C7C7C"))))
   `(font-lock-warning-face          ((t (:foreground ,red))))

   ;; Customized: green strings, yellow numbers/constants
   `(font-lock-string-face           ((t (:foreground ,green :slant italic))))
   `(font-lock-doc-face              ((t (:foreground ,green :slant italic))))
   ;; `(font-lock-constant-face         ((t (:foreground "#8B8B8B" :slant italic))))
   ;; `(font-lock-number-face           ((t (:foreground "#8B8B8B"))))
   `(font-lock-constant-face         ((t (:foreground ,yellow :slant italic))))
   `(font-lock-number-face           ((t (:foreground ,yellow))))

   ;; Comments
   `(font-lock-comment-face          ((t (:foreground "#686868" :slant italic))))
   `(font-lock-comment-delimiter-face ((t (:foreground "#686868" :slant italic))))

   ;; ─── Search ──────────────────────────────────────────────────────────────
   `(isearch                         ((t (:foreground ,fg :background ,search-bg))))
   `(isearch-fail                    ((t (:foreground ,red))))
   `(lazy-highlight                  ((t (:foreground ,bg :background ,incsearch-bg :weight bold))))
   `(match                           ((t (:foreground ,fg :background ,search-bg))))

   ;; ─── UI elements ─────────────────────────────────────────────────────────
   `(minibuffer-prompt               ((t (:foreground ,blue))))
   `(error                           ((t (:foreground ,red))))
   `(warning                         ((t (:foreground ,yellow))))
   `(success                         ((t (:foreground ,green))))
   `(shadow                          ((t (:foreground ,bright-white))))
   `(secondary-selection             ((t (:background ,visual-bg))))
   `(trailing-whitespace             ((t (:background ,red))))
   `(whitespace-space                ((t (:foreground "#555555"))))
   `(whitespace-newline              ((t (:foreground "#555555"))))
   `(non-text                        ((t (:foreground "#555555"))))

   ;; ─── Modeline ────────────────────────────────────────────────────────────
   `(mode-line                       ((t (:foreground ,fg :background ,statusline-bg))))
   `(mode-line-inactive              ((t (:foreground "#CFCFCF" :background ,statuslinenc-bg))))
   `(mode-line-buffer-id             ((t (:foreground ,fg :weight bold))))

   ;; ─── Tabline ─────────────────────────────────────────────────────────────
   ;; Customized: all black background
   `(tab-line                        ((t (:foreground ,bright-white :background ,black))))
   `(tab-line-tab                    ((t (:foreground ,white :background ,black))))
   `(tab-line-tab-current            ((t (:foreground ,white :background ,black))))
   `(tab-line-tab-inactive           ((t (:foreground ,bright-white :background ,black))))
   `(tab-bar                         ((t (:foreground ,bright-white :background ,black))))
   `(tab-bar-tab                     ((t (:foreground ,white :background ,black :weight bold))))
   `(tab-bar-tab-inactive            ((t (:foreground ,bright-white :background ,black))))

   ;; ─── Borders / separators ────────────────────────────────────────────────
   `(vertical-border                 ((t (:foreground "#616161"))))
   `(window-divider                  ((t (:foreground "#616161"))))
   `(window-divider-first-pixel      ((t (:foreground "#616161"))))
   `(window-divider-last-pixel       ((t (:foreground "#616161"))))

   ;; ─── Floats / popups ─────────────────────────────────────────────────────
   ;; Customized: black bg
   `(tooltip                         ((t (:foreground ,white :background ,black))))
   `(popup-face                      ((t (:foreground ,white :background ,black))))
   `(popup-selection-face            ((t (:foreground ,yellow :background ,bright-black))))

   ;; NormalFloat
   `(child-frame-border              ((t (:foreground "#797979" :background ,float-bg))))

   ;; ─── Completion (Corfu / Company) ────────────────────────────────────────
   ;; Customized: bright-black bg, yellow selection
   `(corfu-default                   ((t (:foreground ,white :background ,bright-black))))
   `(corfu-current                   ((t (:foreground ,yellow :background ,bright-black))))
   `(corfu-border                    ((t (:foreground ,white :background ,bright-black))))
   `(company-tooltip                 ((t (:foreground ,white :background ,bright-black))))
   `(company-tooltip-selection       ((t (:foreground ,yellow :background ,bright-black))))
   `(company-tooltip-common          ((t (:foreground ,magenta :weight bold))))
   `(company-tooltip-annotation      ((t (:foreground ,bright-white))))
   `(company-scrollbar-bg            ((t (:background "#595959"))))
   `(company-scrollbar-fg            ((t (:background "#848484"))))

   ;; Pmenu (built-in completion popup)
   ;; Customized: bright-black bg
   `(completions-common-part         ((t (:foreground ,magenta :weight bold))))
   `(completions-first-difference    ((t (:foreground ,fg))))

   ;; ─── Folding ─────────────────────────────────────────────────────────────
   `(fringe                          ((t (:foreground "#616161" :background ,bg))))
   `(fold-overlay                    ((t (:foreground "#A3A3A3" :background ,fold-bg))))

   ;; ─── Diffs ───────────────────────────────────────────────────────────────
   `(diff-added                      ((t (:background ,diff-add-bg))))
   `(diff-changed                    ((t (:background ,diff-change-bg))))
   `(diff-removed                    ((t (:background ,diff-delete-bg))))
   `(diff-refine-added               ((t (:foreground ,fg :background ,diff-text-bg))))
   `(diff-header                     ((t (:foreground ,magenta :weight bold))))
   `(diff-file-header                ((t (:foreground ,yellow :weight bold))))
   `(diff-hunk-header                ((t (:foreground ,magenta :weight bold))))

   ;; diff-mode
   `(diff-indicator-added            ((t (:foreground ,green))))
   `(diff-indicator-removed          ((t (:foreground ,red))))

   ;; ─── Git gutter (diff-hl / git-gutter) ───────────────────────────────────
   `(diff-hl-insert                  ((t (:foreground ,green :background ,bg))))
   `(diff-hl-change                  ((t (:foreground ,blue :background ,bg))))
   `(diff-hl-delete                  ((t (:foreground ,red :background ,bg))))

   ;; ─── Diagnostics ─────────────────────────────────────────────────────────
   `(flymake-error                   ((t (:underline (:style wave :color ,red)))))
   `(flymake-warning                 ((t (:underline (:style wave :color ,yellow)))))
   `(flymake-note                    ((t (:underline (:style wave :color ,blue)))))
   `(flycheck-error                  ((t (:underline (:style wave :color ,red)))))
   `(flycheck-warning                ((t (:underline (:style wave :color ,yellow)))))
   `(flycheck-info                   ((t (:underline (:style wave :color ,blue)))))

   ;; Eglot / LSP diagnostics
   `(eglot-diagnostic-tag-unnecessary-face ((t (:foreground ,yellow))))
   `(eglot-diagnostic-tag-deprecated-face  ((t (:foreground ,yellow :strike-through t))))

   ;; ─── Spell checking ──────────────────────────────────────────────────────
   `(spell-error                     ((t (:underline (:style wave :color "#CB7A83")))))
   `(spell-local                     ((t (:underline (:style wave :color "#CB7A83")))))
   `(spell-rare                      ((t (:underline (:style wave :color "#CB7A83")))))

   ;; ─── Org mode ────────────────────────────────────────────────────────────
   `(org-level-1                     ((t (:foreground ,fg :weight bold))))
   `(org-level-2                     ((t (:foreground ,fg :weight bold))))
   `(org-level-3                     ((t (:foreground ,fg :weight bold))))
   `(org-level-4                     ((t (:foreground ,fg :weight bold))))
   `(org-code                        ((t (:foreground "#969696"))))
   `(org-block                       ((t (:background ,cursorline-bg))))
   `(org-block-begin-line            ((t (:foreground "#686868"))))
   `(org-block-end-line              ((t (:foreground "#686868"))))
   `(org-verbatim                    ((t (:foreground "#969696"))))
   `(org-link                        ((t (:foreground "#9E9E9E" :underline t))))
   `(org-todo                        ((t (:foreground ,red :weight bold :underline t))))
   `(org-done                        ((t (:foreground ,green :weight bold :underline t))))
   `(org-date                        ((t (:foreground ,cyan :underline t))))

   ;; ─── Markdown ────────────────────────────────────────────────────────────
   `(markdown-code-face              ((t (:foreground "#969696"))))
   `(markdown-url-face               ((t (:foreground "#686868"))))
   `(markdown-link-face              ((t (:foreground "#9E9E9E" :underline t))))
   `(markdown-header-face            ((t (:foreground ,fg :weight bold))))

   ;; ─── Treesitter (Emacs 29+ built-in) ─────────────────────────────────────
   ;; Mirrors the commented-out nvim customizations kept as white/gray
   `(treesit-font-lock-face          ((t (:foreground ,fg))))

   ;; ─── Minibuffer / Vertico / Consult ──────────────────────────────────────
   `(vertico-current                 ((t (:background ,cursorline-bg))))
   `(consult-highlight-match         ((t (:foreground ,magenta :weight bold))))
   `(orderless-match-face-0          ((t (:foreground ,magenta :weight bold))))
   `(orderless-match-face-1          ((t (:foreground ,blue :weight bold))))

   ;; ─── Which-key ───────────────────────────────────────────────────────────
   `(which-key-key-face              ((t (:foreground ,fg :weight bold))))
   `(which-key-group-description-face ((t (:foreground "#939393" :weight bold))))
   `(which-key-separator-face        ((t (:foreground "#616161"))))

   ;; ─── Evil cursor colors per state ────────────────────────────────────────
   `(evil-ex-search                  ((t (:foreground ,bg :background ,yellow))))
   `(evil-ex-substitute-matches      ((t (:foreground ,bg :background ,red))))
   `(evil-ex-substitute-replacement  ((t (:foreground ,bg :background ,green))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-directory load-file-name)))

(provide-theme 'zenwritten)
;;; zenwritten-theme.el ends here
