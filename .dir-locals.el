((org-mode
  . ((eval
      . (progn
          (let ((org-descriptive-links t))
            (org-toggle-link-display))

          ;; 确保你有这些插件，否则不需要下面的设置
          (require 'evil)
          (require 'yasnippet)

          ;; 便于我写 python 讲义的函数
          (defun liu233w/py-acm-insert-src-block ()
            (interactive)
            (save-excursion
              (insert "#+begin_src python :exports both
#+end_src")))
          (evil-ex-define-cmd "pys" #'liu233w/py-acm-insert-src-block)

          (with-temp-buffer
            (insert "# -*- mode: snippet -*-
# name: pyexp
# key: pyexp
# --
例程 [[../src/${1:file}.py][$1.py]]
#+begin_src python :tangle ../src/$1.py
$2
#+end_src
$0
")
            (yas-load-snippet-buffer 'org-mode))
          )))))
