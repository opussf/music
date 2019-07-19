\include "predefined-guitar-fretboards.ly"

\header {
	title = "Tennessee Waltz"

}

flute = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\relative c' {
		\clef treble
		\key c \major
		\time 3/4
		\tempo "" 4 = 90

		\partial 4
		c8 d
		\repeat volta 2 {
			e8 g8~ g4 c,8 d8
			e8 g( g4) c8 d8
			e8 g( g4) e8( d8)

			c4( a) c8 d |
			c4 g4. c8
			a4 g e
			d2.~ d2
			c8 d8

			e8 g8~ g4 c,8 d8
			e8 g8~ g4 c8( d8)

			e8 g8~ g4 e8( d8)
			c4 a4 c4

			c4 g4. a8
			e4 b4 d4
			c2.~ c2 c'8 d8
			e4 g4. e8
			d2 e8 e8

			d4 c a
			g2 a8 b8
			c4 a g
			e a g
			d2.~ d2 c8 d8

			e8 g8~ g4 c,8 d8
			e8 g8~ g4 c8( d8)
			e8 g8~ g4 e8( d8)
			c4 a4. b8

			c4 g4 a4
			e4 b4 d4 |
		}
		\alternative {
			{ c2.~ c2 c8 d8  }
			{ c2.~ c2 r4  }
		}
	}
}

guitar = \chordmode {

	\partial 2.
	r4
	\repeat volta 2 {
		c2. c2.
		c2.:7

		f2.  c c g:7 g:7
		c c c:7 f
		c c4 g2:7 c2. c2. c2. e:7
		f c c c g:7 g:7
		c c c:7 f
		c c4 g2:7
	}
	\alternative {
		{ c2. c2. }
		{ c2. c2. }
	}
}


\score {
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
	\layout { }
	\midi { }
}
\version "2.18.2"

