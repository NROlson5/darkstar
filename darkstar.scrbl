#lang scribble/manual

@title{Darkstar}
@author[(author+email "Lindsey Reams" "reamslin@proton.me")]
@defmodulelang[darkstar #:use-sources (darkstar)]

@;Darkstar is the coolest thing you'll ever see in your life!

Dark Star is a declarative domain-specific language designed for modeling and
querying complex types and flows. Inspired by the improvisational spirit of the
Grateful Dead, it offers a unique and flexible approach to managing dynamic
systems and data structures.

A Darkstar program consists of a type definition and a darkstar expression.

@;Example:
@;@codeblock{:int 3}

@;table-of-contents[] - not big enough to warrant use in my opinion

@section{Constants}

@defidform[START-STATE]

The initial start state is a constant.

@defidform[NULL-STATE]

The null state. @;best I could describe it

@section{Expressions}

Description of expressions here!

@subsection{Type Definition}
@codeblock{:type}

Defines the type of the darkstar program. @;for now

@subsection{Dark Star Expression}

Can be one of:
@itemlist[@item{GoTo Expression}
          @item{Context Expression}
          @item{Nested Context Expression}]

@subsection{GoTo Expression}

Can be one of:
@itemlist[@item{State Expression}
          @item{Start Expression}
          @item{Reset Expression}]

Sets the current state.

@subsection{State Expression}
@codeblock{value}

If current state is the @italic{START STATE} or the @italic{NULL STATE}
sets the current state to the state created.  Otherwise, it creates a relationship between the current state
and the new state, and sets the current state to the newly created one.

@subsection{Reset Expression}
@codeblock{>}

Sets the current state to the @italic{NULL STATE}.

@subsection{Start Expression}
@codeblock{>>}

The beginning of the program. Sets the current state to the @italic{START STATE}.
Used to create a new darkstar program

@subsection{Context Expression}
@codeblock{:type value}

Creates type @italic{t} if it does not already exist, and then creates value @italic{v} with that type.

Sets the current state to the expression that was just created.


@subsection{Nested Context Expression}
@codeblock{}

@section{Query Functions}

Work in progress