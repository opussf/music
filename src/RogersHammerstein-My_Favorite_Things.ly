\version "2.18.2"
\header {
	title = "My Favorite Things"
	subtitle = "from THE SOUND OF MUSIC"
	composer = "Music by Richard Rodgers"
	poet = "Lyrics by Oscar Hammerstein II"
	arranger = "Arranged by Robert Buckley"
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
			c,\p\< c8( d) ees4 | g g8( a) bes4 | aes8( bes) c4 bes8( c) | d2.->\f\> |

			g,4\p( d'-.) d-. | \acciaccatura d8 a4( g-.) g-. | d( g-.) g-. | a( g2) |
			g4( d'-.) d-. | \acciaccatura d8 a4( g-.) g-. | d( g-.) g-. | a( g2) |
			g4( d' c | g a f | f c' bes | ees,2.) | d4\<( ees f | g a bes | c\mp d c | fis,2.) |
			\acciaccatura fis8 g2.->~ | g~ | g~ | g4 g8( a bes c | d4-.) r4 r4 |


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
