;;; Directory Local Variables
;;; For more information see (info "(emacs) Directory Variables")


((haskell-mode . ((haskell-completion-backend . lsp)
                  (lsp-haskell-server-wrapper-function . (lambda (argv)
                                                           (append
                                                            (append (list "nix-shell" "-I" "." "--command" )
                                                                    (list (mapconcat 'identity argv " "))
                                                                    )
                                                            (list (concat (lsp-haskell--get-root) "/shell.nix"))
                                                            )
                                                           ))
                  (mode . ormolu-format-on-save)
                  )
               ))
