\header {
	title = "Song of India"
	subtitle = "From the Opera \"Sadko\""
	composer = "N. Rimsky-Korsakow"
	arranger = "Arranged by Heny W. Davis"
	copyright = \markup { \char ##x00A9 " Copyright 1961 by Rubank, Inc. (Copyright Renewed)  Internation Copyright Secured   All Rights Reserved" }
}

melody = \relative c' {
	\clef treble
	\key f \major
	\time 3/4
	\tempo "Andantino" 4=90

	r2. r2. r2. r2. r2.
	\repeat unfold 2 {
		r4 r8\p
		a''8(\< c a)\! a(\> g) g( f) f( d)\!
		f4 r8\< f( a f)\! f( d) d( c\>) c( d)\! d4 r8 d8( f g d4.) f8( g f a4~) a8 r8 r4
		r4 r8
	}
	r2.\mp \bar "||"

	\repeat unfold 2 {
		c2(~ c16 b bes a) c2(~ c16 bes a aes)
		c2(~ c8 b16 bes a4)~ a8 r8 r4
		a2(~ a16 g ges f)
		aes2(~ aes16 g ges f)
		a2(~ a8 gis16 g f4)~ f8 r8 r4
	}

	e4(~\< e16 fis g a bes c d c\! d4)~ d16 c( b a g a bes c d4~ d8) r8 r4
	r2.
	e,4(~\< e16 f g a bes c des c\! des4~ des16) c( bes a g a bes c des4~ des8) r8 r4 |
	r2. f2(~\mf f16 e ees d) f2(~ f16 ees d des) f2.( c4~ c8) r8 r4 |

	d2(~\p d16 c b bes) des2(~ des16 c b bes) c2.( a4~ a8) r8 r4 \bar "||"
	c2(~ c16 b bes a) c2(~ c16 bes a gis) |
	c2.( a4)~ a8 r8 r4 c2(~ c16 bes a aes) bes2(~ bes16 a aes g) a2.( f8) r8 r8 a8( c a) a( g) g( f) f( d) |
	f4.\< f8( a f)\! f(\> d) d( c) c( d)\! d4. d8( f g) d2( f4) g2(\> a4) f2.~\pp f2. f2.\fermata
}

\score {
	\new Staff {
		\set Staff.midiInstrument = #"flute"
		\melody
	}
	\layout { }
	\midi { }
}

\version "2.18.2"
