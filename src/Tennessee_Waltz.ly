\include "predefined-guitar-fretboards.ly"

\header {
	title = "Tennessee Waltz"

}

flute = \new Staff {
	\relative c' {
		\clef treble
		\key c \major
		\time 3/4

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

\score {
	\flute
}

