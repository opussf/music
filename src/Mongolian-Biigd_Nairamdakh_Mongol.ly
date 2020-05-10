\version "2.18.2"
\header {
	title = "Swan Goose"
	composer = "Traditional Mongolian"
}

flute = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\override Score.MetronomeMark.padding = #3
	\new Voice = "melody"  {
		\relative c'' {
			\clef treble
			\key a \major
			\time 4/4
			\tempo "" 4 = 65

			\repeat volta 2 {

				cis4 a8 fis e2 | e'4 fis8 a fis2 | fis4 e8 cis a b e cis | b1 | \break
				e4 fis8 a fis2 | b,8. cis16 a8 fis8 e2 | cis'4 a8 fis e fis cis'4 | fis,1 | \break

			}

			%\bar "|."  % don't use bar when the repeat is at the end.
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
