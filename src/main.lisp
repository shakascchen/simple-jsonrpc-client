(uiop/package:define-package :simple-jsonrpc-client/src/main
    (:nicknames :simple-jsonrpc-client) (:use :cl)
  (:shadow) (:export :call) (:intern))
(in-package :simple-jsonrpc-client/src/main)
;;don't edit above

(defun call (uri &rest rest &key |method| |params| |id|)
  (dex:post uri
            :headers '(("Content-Type" . "application/json"))
            :content (jonathan:to-json (append '(:|jsonrpc| "2.0")
                                               rest
                                               (unless |id|
                                                 '(:|id| 1))))))
