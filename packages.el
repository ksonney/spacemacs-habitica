;;; packages.el --- habitrpg layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Blasphemy <ksonney@sonnney.com>
;; URL: https://github.com/ksonney/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `habitaca/init-habitrpg' to load and initialize the package.

;;; Code:

(defconst habitica-packages
  '(
    (habitrpg :location (recipe
                         :fetcher github
                         :repo "ryjm/habitrpg.el"))))

(defun habitica/init-habitrpg ()
  (use-package habitrpg
    :config
      (use-package org-habit)
      (add-hook 'org-after-todo-state-change-hook 'habitrpg-add 'append)))

;;; packages.el ends here
