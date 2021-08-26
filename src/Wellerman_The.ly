\version "2.18.2"
\header {
	title = "The Wellerman"
	composer = "Traditional, arr. Marco De Boni"
}

flute = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\new Voice = "melody"  {
		\relative c' {
			\clef treble
			\key d \major

			\time 2/4
			\tempo "Lively" 4=100

			\partial 8
			fis'8( |

			\repeat volta 2 {
				b, b16 b b8 d | fis fis fis) fis16( fis | g8 e16 e e8 g16 g | b16 b fis8 fis8.)
				\break
				\shape #'((0 . 1) (0 . 1) (0 . 1.0) (0 . 1)) Slur
				fis16(\noBeam |
				b,8( cis d e | fis fis fis4 | fis8 e d16 d cis8 | b2) |
				\break
				b'4( b8. g16 | a a fis8 fis8.) fis16(\noBeam | g8 e e16 fis g8 | fis d b4) |
				\break
				b'4( b8. g16 | a16 a fis8 fis fis\noBeam | fis e d cis
			}
			\alternative {
				{
					b4) r8 fis'8
				}
				{
					b,2
				}
			}
			\bar "||"
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
