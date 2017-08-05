;;; microamp-theme.el --- Minimal light colour theme heavily influenced by jcs

;; Copyright (C) 2017 james sangho nah <sangho.nah@gmail.com>

;; Author: james sangho nah
;; Version: 0.1
;; Package-Requires: ((emacs "24"))

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;; This file is not part of Emacs.

;;; Commentary:

;;; Code:

(deftheme microamp)

(let ((class '((class color) (min-colors 89)))
      (base1 "#e4e1d6")
      (base2 "#585858")
      (base3 "#6c6c6c")
      (base4 "#808080")
      (base5 "#a8a8a8")
      (base6 "#c6c6c6")
      (base7 "#bebcb4")
      (base8 "#afaea9")
      (base9 "#9d9b95")
      (warning "#ff0000")
      (warning2 "#d78700"))
  (custom-theme-set-faces
   'microamp
   `(default ((,class (:background ,base1 :foreground ,base2))))
	 `(ac-completion-face ((,class (:underline t :foreground ,base2))))
	 `(cursor ((,class (:foreground ,base1 :background ,base3))))
	 `(ffap ((,class (:foreground ,base4))))
	 `(font-latex-bold-face ((,class (:foreground ,base2))))
	 `(font-latex-italic-face ((,class (:foreground ,base2 :italic t))))
	 `(font-latex-match-reference-keywords ((,class (:foreground ,base2))))
	 `(font-latex-match-variable-keywords ((,class (:foreground ,base2))))
	 `(font-latex-string-face ((,class (:foreground ,base2))))
	 `(font-lock-constant-face ((,class (:foreground ,base2))))
	 `(font-lock-negation-char-face ((,class (:foreground ,base2))))
	 `(font-lock-reference-face ((,class (:foreground ,base2))))
	 `(fringe ((,class (:background ,base7 :foreground ,base4))))
	 `(gnus-header-content ((,class (:foreground ,base2))))
	 `(gnus-header-from ((,class (:foreground ,base2))))
	 `(gnus-header-name ((,class (:foreground ,base2))))
	 `(gnus-header-subject ((,class (:foreground ,base2 :bold t))))
	 `(hl-line ((,class (:background ,base7))))
	 `(icompletep-determined ((,class :foreground ,base2)))
	 `(ido-first-match ((,class (:foreground ,base2 :bold t))))
	 `(ido-only-match ((,class (:foreground ,warning))))
	 `(info-quoted-name ((,class (:foreground ,base2))))
	 `(info-string ((,class (:foreground ,base2))))
	 `(js2-external-variable ((,class (:foreground ,base2  ))))
	 `(js2-jsdoc-html-tag-delimiter ((,class (:foreground ,base2))))
	 `(js2-jsdoc-html-tag-name ((,class (:foreground ,base2))))
	 `(js2-private-function-call ((,class (:foreground ,base2))))
	 `(link ((,class (:foreground ,base2 :underline t))))
	 `(mu4e-cited-1-face ((,class (:foreground ,base3))))
	 `(mu4e-cited-7-face ((,class (:foreground ,base3))))
	 `(mu4e-header-marks-face ((,class (:foreground ,base2))))
	 `(mu4e-view-url-number-face ((,class (:foreground ,base2))))
   `(mu4e-header-highlight-face ((,class (:foreground ,base2 :background ,base7))))
   `(mu4e-highlight-face ((,class (:foreground ,base2 :background ,base1))))
	 `(org-code ((,class (:foreground ,base3))))
	 `(org-ellipsis ((,class (:foreground ,base2))))
	 `(org-hide ((,class (:foreground ,base4))))
	 `(org-scheduled ((,class (:foreground ,base2))))
	 `(org-sexp-date ((,class (:foreground ,base4))))
	 `(org-verbatim ((,class (:foreground ,base4))))
	 `(slime-repl-inputed-output-face ((,class (:foreground ,base2))))
	 `(vertical-border ((,class (:foreground ,base3))))
	 `(warning ((,class (:foreground ,warning))))
   `(company-echo-common ((,class (:foreground ,base1 :background ,base2))))
   `(company-preview ((,class (:background ,base1 :foreground ,base2))))
   `(company-preview-common ((,class (:foreground ,base7 :foreground ,base3))))
   `(company-preview-search ((,class (:foreground ,base2 :background ,base1))))
   `(company-scrollbar-bg ((,class (:background ,base8))))
   `(company-scrollbar-fg ((,class (:foreground ,base2))))
   `(company-template-field ((,class (:inherit region))))
   `(company-tooltip ((,class (:foreground ,base3 :background ,base1 :bold t))))
   `(company-tooltip-common ((,class ( :foreground ,base3))))
   `(company-tooltip-common-selection ((,class (:foreground ,base2))))
   `(company-tooltip-mouse ((,class (:inherit highlight))))
   `(company-tooltip-selection ((,class (:background ,base8 :foreground ,base3))))
   `(company-tooltop-annotation ((,class (:foreground ,base2))))
   `(default-italic ((,class (:italic t))))
   `(font-lock-builtin-face ((,class (:foreground ,base2))))
   `(font-lock-comment-face ((,class (:foreground ,base4))))
   `(font-lock-doc-face ((,class (:foreground ,base3))))
   `(font-lock-function-name-face ((,class (:foreground ,base2))))
   `(font-lock-keyword-face ((,class (,class :foreground ,base2))))
   `(font-lock-string-face ((,class (:foreground ,base2))))
   `(font-lock-type-face ((,class (:foreground ,base2))))
   `(font-lock-variable-name-face ((,class (:foreground ,base2))))
   `(font-lock-warning-face ((,class (:foreground ,warning :background ,base7))))
   `(helm-bookmark-w3m ((,class (:foreground ,base2))))
   `(helm-buffer-not-saved ((,class (:foreground ,base2 :background ,base1))))
   `(helm-buffer-process ((,class (:foreground ,base2 :background ,base1))))
   `(helm-buffer-saved-out ((,class (:foreground ,base2 :background ,base1))))
   `(helm-buffer-size ((,class (:foreground ,base2 :background ,base1))))
   `(helm-candidate-number ((,class (:foreground ,base1 :background ,base2))))
   `(helm-ff-directory ((,class (:foreground ,base2 :background ,base1 :weight bold))))
   `(helm-ff-executable ((,class (:foreground ,base2 :background ,base1 :weight normal))))
   `(helm-ff-file ((,class (:foreground ,base2 :background ,base1 :weight normal))))
   `(helm-ff-invalid-symlink ((,class (:foreground ,warning2 :background ,base1 :weight bold))))
   `(helm-ff-prefix ((,class (:foreground ,base1 :background ,base2 :weight normal))))
   `(helm-ff-symlink ((,class (:foreground ,base2 :background ,base1 :weight bold))))
   `(helm-grep-cmd-line ((,class (:foreground ,base2 :background ,base1))))
   `(helm-grep-file ((,class (:foreground ,base2 :background ,base1))))
   `(helm-grep-finish ((,class (:foreground ,base3 :background ,base1))))
   `(helm-grep-lineno ((,class (:foreground ,base2 :background ,base1))))
   `(helm-grep-match ((,class (:foreground nil :background nil :inherit helm-match))))
   `(helm-grep-running ((,class (:foreground ,base2 :background ,base1))))
   `(helm-header ((,class (:foreground ,base3 :background ,base1 :underline nil))))
   `(helm-match ((,class (:foreground ,base4))))
   `(helm-moccur-buffer ((,class (:foreground ,base2 :background ,base1))))
   `(helm-selection ((,class (:background ,base7 :underline nil))))
   `(helm-selection-line ((,class (:background ,base7))))
   `(helm-separator ((,class (:foreground ,base2 :background ,base1))))
   `(helm-source-go-package-godoc-description ((,class (:foreground ,base2))))
   `(helm-source-header ((,class (:foreground ,base2 :background ,base1 :underline nil :weight bold))))
   `(helm-swoop-target-line-face ((,class (:foreground ,base1 :background ,warning2))))
   `(helm-swoop-target-word-face ((,class (:foreground ,base1 :background ,base2))))
   `(helm-time-zone-current ((,class (:foreground ,base2 :background ,base1))))
   `(helm-time-zone-home ((,class (:foreground ,base2 :background ,base1))))
   `(helm-visible-mark ((,class (:foreground ,base1 :background ,base8))))
   `(highlight ((,class (:foreground ,base3 :background ,base8))))
   `(isearch ((,class (:foreground ,base1 :background ,base2))))
   `(jde-java-font-lock-constant-face ((t (:foreground ,base2))))
   `(jde-java-font-lock-modifier-face ((t (:foreground ,base3))))
   `(jde-java-font-lock-number-face ((t (:foreground ,base2))))
   `(jde-java-font-lock-package-face ((t (:foreground ,base2))))
   `(jde-java-font-lock-private-face ((t (:foreground ,base2))))
   `(jde-java-font-lock-public-face ((t (:foreground ,base2))))
   `(jde-jave-font-lock-protected-face ((t (:foreground ,base2))))
   `(js2-function-param ((,class (:foreground ,base2))))
   `(js2-jsdoc-value ((,class (:foreground ,base2))))
   `(js2-private-member ((,class (:foreground ,base3))))
   `(js3-error-face ((,class (:underline ,warning))))
   `(js3-external-variable-face ((,class (:foreground ,base2))))
   `(js3-function-param-face ((,class (:foreground ,base3))))
   `(js3-instance-member-face ((,class (:foreground ,base2))))
   `(js3-jsdoc-tag-face ((,class (:foreground ,base2))))
   `(js3-warning-face ((,class (:underline ,base2))))
   `(lazy-highlight ((,class (:foreground ,base3 :background ,base8))))
   `(magit-branch ((,class (:foreground ,base2 :weight bold))))
   `(magit-diff-context-highlight ((,class (:background ,base8 :foreground ,base3))))
   `(magit-diff-file-header ((,class (:foreground ,base3 :background ,base8))))
   `(magit-diffstat-added ((,class (:foreground ,base2))))
   `(magit-diffstat-removed ((,class (:foreground ,base2))))
   `(magit-hash ((,class (:foreground ,base3))))
   `(magit-hunk-heading ((,class (:background ,base8))))
   `(magit-hunk-heading-highlight ((,class (:background ,base8))))
   `(magit-item-highlight ((,class :background ,base8)))
   `(magit-log-author ((,class (:foreground ,base3))))
   `(magit-process-ng ((,class (:foreground ,warning :weight bold))))
   `(magit-process-ok ((,class (:foreground ,base2 :weight bold))))
   `(magit-section-heading ((,class (:foreground ,base2 :weight bold))))
   `(magit-section-highlight ((,class (:background ,base6))))
	 `(mode-line-highlight ((,class (:foreground ,base2 :weight bold))))
   `(minibuffer-prompt ((,class (:foreground ,base2))))
   `(mode-line ((,class (:line-width 1 :color nil :foreground ,base3 :background ,base7))))
   `(mode-line-buffer-id ((,class (:foreground ,base2 :background nil))))
   `(mode-line-emphasis ((,class (:background ,base1 :foreground ,base2))))
   `(mode-line-inactive ((,class (:line-width 1 :color nil :style pressed-button :foreground ,base2 :background ,base1 :weight normal))))
   `(org-agenda-date ((,class (:foreground ,base2 :height 1.1 ))))
   `(org-agenda-date-today ((,class (:weight bold :foreground ,base2 :height 1.4))))
   `(org-agenda-date-weekend ((,class (:weight normal :foreground ,base4))))
   `(org-agenda-done ((,class (:foreground ,base9))))
   `(org-agenda-structure ((,class (:weight bold :foreground ,base3 :color ,base4 :background ,base8))))
   `(org-block ((,class (:foreground ,base3))))
   `(org-date ((,class (:underline t :foreground ,base2) )))
   `(org-document-info-keyword ((,class (:foreground ,base2))))
   `(org-done ((,class (:line-width 1 :color ,base8 :foreground ,base9))))
   `(org-footnote  ((,class (:underline t :foreground ,base4))))
   `(org-level-1 ((,class (:foreground ,base3 :height 1.1))))
   `(org-level-2 ((,class (:bold nil :foreground ,base3))))
   `(org-level-3 ((,class (:foreground ,base4))))
   `(org-level-4 ((,class (:bold nil :foreground ,base9))))
   `(org-link ((,class (:underline t :foreground ,base2))))
   `(org-quote ((,class (:inherit org-block :slant italic))))
   `(org-scheduled-today ((,class (:foreground ,base2 :weight bold :height 1.2))))
   `(org-special-keyword ((,class (:foreground ,base2))))
   `(org-todo ((,class (:line-width 1 :color ,base3 :foreground ,base2 :bold t))))
   `(org-verse ((,class (:inherit org-block :slant italic))))
   `(org-warning ((,class (:underline t :foreground ,warning))))
   `(rainbow-delimiters-depth-1-face ((,class :foreground ,base2)))
   `(rainbow-delimiters-depth-2-face ((,class :foreground ,base2)))
   `(rainbow-delimiters-depth-3-face ((,class :foreground ,base2)))
   `(rainbow-delimiters-depth-4-face ((,class :foreground ,base2)))
   `(rainbow-delimiters-depth-5-face ((,class :foreground ,base2)))
   `(rainbow-delimiters-depth-6-face ((,class :foreground ,base2)))
   `(rainbow-delimiters-depth-7-face ((,class :foreground ,base2)))
   `(rainbow-delimiters-depth-8-face ((,class :foreground ,base2)))
   `(rainbow-delimiters-unmatched-face ((,class :foreground ,warning)))
   `(region ((,class (:background ,base8 :foreground ,base1))))
   `(show-paren-match-face ((,class (:background ,warning))))
   `(term ((,class (:foreground ,base2 :background ,base1))))
   `(term-color-black ((,class (:foreground ,base8 :background ,base8))))
   `(term-color-blue ((,class (:foreground ,base2 :background ,base2))))
   `(term-color-cyan ((,class (:foreground ,base2 :background ,base2))))
   `(term-color-green ((,class (:foreground ,base2 :background ,base8))))
   `(term-color-magenta ((,class (:foreground ,base2 :background ,base2))))
   `(term-color-red ((,class (:foreground ,base2 :background ,base8))))
   `(term-color-white ((,class (:foreground ,base3 :background ,base3))))
   `(term-color-yellow ((,class (:foreground ,base2 :background ,base2))))
   `(trailing-whitespace ((,class :foreground nil :background ,warning)))
   `(undo-tree-visualizer-current-face ((,class :foreground ,base2)))
   `(undo-tree-visualizer-default-face ((,class :foreground ,base3)))
   `(undo-tree-visualizer-register-face ((,class :foreground ,base2)))
   `(undo-tree-visualizer-unmodified-face ((,class :foreground ,base2)))
   `(web-mode-builtin-face ((,class (:inherit ,font-lock-builtin-face))))
   `(web-mode-comment-face ((,class (:inherit ,font-lock-comment-face))))
   `(web-mode-constant-face ((,class (:inherit ,font-lock-constant-face))))
   `(web-mode-doctype-face ((,class (:inherit ,font-lock-comment-face))))
   `(web-mode-function-name-face ((,class (:inherit ,font-lock-function-name-face))))
   `(web-mode-html-attr-name-face ((,class (:foreground ,base2))))
   `(web-mode-html-attr-value-face ((,class (:foreground ,base2))))
   `(web-mode-html-tag-face ((,class (:foreground ,base2))))
   `(web-mode-keyword-face ((,class (:foreground ,base2))))
   `(web-mode-string-face ((,class (:foreground ,base2))))
   `(web-mode-type-face ((,class (:inherit ,font-lock-type-face))))
   `(web-mode-warning-face ((,class (:inherit ,font-lock-warning-face))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'microamp)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; microamp-theme.el ends here
