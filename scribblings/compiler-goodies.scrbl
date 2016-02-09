#lang scribble/manual
@require[scribble/core
         @for-label[compiler-goodies
                    racket/base]]

@title{Compiler Goodies}
@author{Leif Andersen}

@(define red
   (style #f
          (list (color-property "red"))))

@elem[#:style red]{@larger{@larger{@larger{@larger{@larger{This library is deprecated. Please use
@hyperlink["https://github.com/bennn/zordoz"]{Zordoz} instead.}}}}}}

@defmodule[compiler-goodies]

These are useful tools when dealing with the Racket compiler.

@defproc[(syntax->zo [stx syntax?])
          compilation-top?]{
Compiles a syntax object into a compiled zo object.

@racket[stx] is the input syntax.
}

@defproc[(syntax->decompile [stx syntax?])
         any/c]{
Like @racket[syntax->zo],
excepts the result is decompiled into a human readable format.
}
