\version "2.18.2"
\header {
	title = "Tum Hi Ho"
	subtitle = "Aashiqui 2"
	composer = "Mithoon"
	poet = "Arijit Singh"
}

flute = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\new Voice = "melody"  {
		\relative c' {
			\clef treble
			\key aes \major
			\time 4/4
			\tempo "" 4 = 160

			\repeat volta 2 {
				f4 aes c2 | des4 aes bes g | f4 aes c2 | des4 aes bes g
			}
			\break
			c2 f4 ees | ees des des c | bes aes bes des | c2 c4-. r |
			bes2 bes4 aes | bes2 bes4 aes |
				g aes8 g f4 \override NoteHead.style = #'cross ees \revert NoteHead.style |
				f2 r2 |
			f4 aes c2 | des4 aes bes g | f4 aes c2 | des4 aes bes g
			\break
			\repeat volta 2 {
				c2 f4 ees | ees des des c | bes aes bes des | c2 c4-. r |
				bes2 bes4 aes | bes2 bes4 aes | g aes8 g f4 ees | f2 r2 |
			}
			R1 | r2 r4 aes8 bes | c2 aes4 bes~ | bes r2 aes8 bes |
			c2 aes4 bes~ | bes r2 r4 | g2 bes4 aes~ | aes2. g8 f |
			g2 ees4 f~ | f g aes bes | c2 aes4 bes~ | bes r2 aes8 bes |
			c2 aes4 bes4~ | bes r2 g4 | g2 bes4 aes~ | aes2. g8 f |
			g2 ees4 f~ | f2. r4

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
	\unfoldRepeats
	<<
		\flute
	>>
	\midi { }
}

