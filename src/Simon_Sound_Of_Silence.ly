\header {
	title = "The Sound of Silence"
	subtitle = "Words & Music by Paul Simon"
	composer = "Paul Simon"
	copyright = \markup \left-align \center-column {
		\line { \char ##x00A9 " Copyright 1964 by Paul Simon Music USA" }
		\line { "All rights Reserved International Copyright Secured" }
	}
  	source = "urtext"
}

flute = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\time 4/4
	\key g \major
	\override Score.MetronomeMark.padding = #3
	\tempo 4 = 106
	\relative c' {
		R1 | r4 e16\mp e8. g8 g b b |
		\bar "||"
		a1 | r8 d, d[ d] fis fis a a |
		g1 | r8 g g[ g] b b d d( | e4) e8( d8~ d2) | r4 g,8[ g] b b d d( |
		e4) e8( d8~ d2) |
		\time 2/4
		r4 g,8 g  |
		\time 4/4
		e'8 e~\< e2 e8( fis) | g\> g8~ g4 fis8( e4) d8~ |
		d2\! r4 e8( d) | b2. r4 |
		\time 2/4
		r8 g g g |
		\time 4/4
		d'2. r8 fis,8 | g( e~ e2.) |
		r8 e\< e[ e] g g b( g) |
		\bar "||"
		a2.\mf r4 | r4 fis16 fis8. fis8 fis a( fis) | g1 |

	}
}

guitar = \chordmode {
	e1:m | e1:m | d1 | d1
	e1:m | e1:m | c2 g2 | g1 |
	c2 g2 |
	\time 2/4
	g2 |
	\time 4/4
	c1 | c1 | g1 | g2 | e2:m
	\time 2/4
	g2 |
	\time 4/4
	d1 | e1:m |
	s1 | d1 | d1 | e1:m
}

\score {
	<<
		\context ChordNames {
			\set chordChanges = ##t
			\set Staff.midiInstrument = #"acoustic guitar (nylon)"
			\guitar
		}

		\flute
	>>
	\layout { }
}
\score {
	\unfoldRepeats
	<<
		\context ChordNames {
			\set chordChanges = ##t
			\set Staff.midiInstrument = #"acoustic guitar (nylon)"
			\guitar
		}
		\context FretBoards {
			\set chordChanges = ##t
			\guitar
		}

		\flute
	>>
	\midi { }
}
\version "2.18.2"
