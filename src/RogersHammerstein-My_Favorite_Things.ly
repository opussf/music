\version "2.18.2"
\header {
	title = "My Favorite Things"
	subtitle = "from THE SOUND OF MUSIC"
	composer = "Music by Richard Rodgers"
	poet = "Lyrics by Oscar Hammerstein II"
	arranger = "Arranged by Robert Buckley"
	copyright = "Too blurry to read"
}

flute = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\override Score.MetronomeMark.padding = #3
	\new Voice = "melody"  {
		\relative c'' {
			\clef treble
			\key bes \major
			\time 3/4
			\tempo "Allegro animato" 4 = 156

			g'4\mf( d' c) | f,( c' bes) | ees,( bes' a) | d,( a' g) |
			c,\p\< c8( d) ees4 | g g8( a) bes4 | aes8( bes) c4 bes8( c) | d2.->\f\> | \break

			g,4\p( d'-.) d-. | \acciaccatura d8 a4( g-.) g-. | d( g-.) g-. | a( g2) |
			g4( d'-.) d-. | \acciaccatura d8 a4( g-.) g-. | d( g-.) g-. | a( g2) |
			g4( d' c | g a f | f c' bes | ees,2.) | d4\<( ees f | g a bes | c\mp d c | fis,2.) |
			\acciaccatura fis8 g2.->~ | g~ | g~ | g4 g8(\> a bes c | d4-.)\mp r4 r4 |
			d-. r r | d-. r r | r g,8( a bes c | d4-.) r r |
			d-. r r | d-. r r | r d8( c bes a) |

			%37
			g4( d' c | g a f | f c' bes | ees,2.) | d4\<( ees f | g a bes | c\mf d c | fis,2.) |
			\acciaccatura fis8 g2.->~ | g~ | g~ | g4 d'8( c b a) |
			g4->\mf( d'-.) d-. | \acciaccatura d8 a4( g-.) g-. | d( g-.) g-. | a( g2) |  %57
			g4->\mf( d'-.) d-. | \acciaccatura d8 a4( g-.) g-. | d( g-.) g-. | a( g2) |

			r4 bes,2-> | r4 c2-> | r4 c4->( bes) | r bes8->( a bes c | d4\< ees f | g a bes | c cis d) | ees2.-> |
			g,4-^ d'-. d-. | d2->( g,4) | r4 c-. c-. | c2->( fis,4) | r bes-. bes-. | bes2\>->( d,4 | g2.~ | g2) g4 |
			g\mp\<( a g | a g a | bes c bes | c2 bes4) | d->\f e-> d-> | ees2.->~ | ees8 r r4 r4 |

			%80
			d2.->\ff\> | bes2.->~ | bes~ | bes2 r4 | c,4\p\< c8( d) ees4\!   % end of free sheet

			\bar "|."
		}
	}
}

\score {
	<<
		\flute
	>>
	\layout { }
}
\score {
	<<
		\flute
	>>
	\midi { }
}
