#lang racket/base

(require compiler/zo-parse
         compiler/decompile
         racket/port)

(provide (all-defined-out))

(define (syntax->zo stx)
  (define x (compile-syntax stx))
  (define-values (in out) (make-pipe))
  (display x out)
  (close-output-port out)
  (define y (port->bytes in))
  (define z (zo-parse (open-input-bytes y)))
  z)

(define (syntax->decompile stx)
  (decompile (syntax->zo stx)))
