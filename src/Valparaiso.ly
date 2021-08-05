\version "2.18.2"
\header {
	title = "Valparaiso"
}

flute = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\new Voice = "melody"  {
		\relative c' {
			\clef treble
			\key g \major
			\time 3/4
			\tempo 4=112

			e4. fis8 g4 | e'2. | d4. fis8 g4 | b,2. | a4 d cis | a b cis | d b g | b2. |


			\repeat volta 2 {
				e,4. fis8 g4 | e'2. | d4. fis8 g4 | b,2. | r2. |
				a4 d cis | a b cis | d b g | b2. | r2. | e,4. fis8 g4 | e'2. | d4. fis8 g4 | b,2. | r2. | 
				e,4. fis8 g4 | d' b r | e4. d8 c4 |
				b4. a8 g4 | e4. fis8 g4 | d'4 b r | b4. a8 fis( g) | e2. | r2. | r2 |
			}

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
    \unfoldRepeats
	<<
		\flute
	>>
	\midi { }
}
