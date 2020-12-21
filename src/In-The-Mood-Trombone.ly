
\header {
	title = "In The Mood"
	composer = "By\nJOE GARLAND"
}

trombone = \new Staff {
	\set Staff.midiInstrument = #"trombone"
	\new Voice = "melody"  {
		\relative c {
			\clef bass
			\key des \major
			\time 4/4
			\tempo "Moderate Swing" 4 = 120

			f8 aes des f, aes des f, aes | des f, aes des~ des4 r4 |
      f,8 aes des f, aes des f, aes | des f, aes des~ des4 r4 | \break
      % bar 5
      ges,8 bes des ges, bes des ges, bes | des ges, bes des~ des4 r4 |
      f,8 aes des f, aes des f, aes | des f, aes des~ des4 r4 | \break
      % bar 9
      aes8 c ees aes, c ees aes, c | ees aes, c ees~ ees des4 des8~ |
      des des des des des des des des | des des4 des8~ des4 r4 |



		}
	}
}

\score {
	<<
		\trombone
	>>
	\layout { }
}
\score {
	\unfoldRepeats
	<<
		\trombone
	>>
	\midi { }
}

