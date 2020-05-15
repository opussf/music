\header {
	title = "Albumleaf"
	composer = "Richard Wagner"
	arranger = "arranged by Adolf Hass"
	copyright = \markup { \char ##x00A9 "Copyright 1938 by Rubank, Inc. (Copyright Renewed) Internation Copyright Secured   All Rights Reserved" }
}

melody = \relative c' {
  \set Score.markFormatter =
    #(lambda (mark context)
             (make-circle-markup (format-mark-numbers mark context)))
  \clef treble
	\key c \major
	\time 3/4
	\tempo "Con moto" 4=120

	\partial 4.
  fis8(\p a[ g\<]) e'4( d c ) b4.. b16(\! c b a b) |
  d4(\p c a) g2( f8 g16 f) e4( f fis ) g( gis) a8( b8) |
  \slashedGrace { d8( } c8)( b c e d c )
  c4.( b8) \tuplet 3/2 { d8( c b) }
  \mark \default
  a4\p f'8( e d c) c4 g4( gis a) f'8( e d c) c8( fis,4-> g-> gis8->~
  gis[\p a)] f'( e d c)~
  c b g'( f e d)~ d c( a' g f e)~
  e( d cis d e f) g2.(\p gis2.)~ gis4\< a2\! dis,2(~\> dis8. e16)\! e4 r4 r4
  \compressFullBarRests
  R2.*4 R2.
  r4 r4 \tuplet 3/2 { cis8( e d) }
  \mark \default
  b'4( a g) | fis4.. fis16( g fis e fis | a4 g e) |
  d2 c8( d16 c) | b4( c cis) | d( dis) e8( fis) |
  g8( fis g a b c) | d2(~ d8 dis)
  \mark \default
  e4(\f d c) | b4.. b16( c b ais b) | e4(\f d c) |
  b4..\p\< b16( c b ais b) | e4(\f d c~ | c8)\p c,( e fis a c |
  e) e,,([\< fis a c e)] | fis2.(~\f fis2~ fis8 g) | gis2\p e4( |
  f2.~) | f2 f4( | e f fis ) |
  g( gis a8 b) | c4. r8 r4 | r4 r4 b,4 |
  \mark \default
  a( f'8 e d c)
  \mark \default
  \mark \default

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
