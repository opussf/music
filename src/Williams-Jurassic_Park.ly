\version "2.18.2"
\header {
	title = "THEME FROM \"JURASSIC PARK\""
	subtitle = "from the Universal Motion Picture JURASSIC PARK"
	composer = "Composed by John Williams"
}

flute = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\override Score.MetronomeMark.padding = #3
	\new Voice = "melody"  {
		\relative c'' {
			\clef treble
			\key aes \major
			\time 4/4
			\tempo "Reverently" 4 = 156


			aes'4. aes16 g aes4. aes16 g | aes8. bes16 bes8. des16 des4. c16 aes |
			bes8. g16 ees8 c'16 aes bes4. ees16 aes,16 |
			\time 6/4
			des8. c16 c8. bes16 bes2~ bes4. aes16 g |

			\time 4/4
			aes4. aes16 g aes4. aes16 g | aes8. bes16 bes8. des16 des4. c16 aes |
			bes8. g16 ees8 c'16 aes bes4. ees16 aes,16 |
			des8. c16 c8. bes16 bes4. aes16 g |   % to coda

			aes8 ees des aes'16 g aes8 ees des aes'16 g |
			g16 aes8. ees8 aes, ges'4. aes16 g | aes8 ees des aes'16 g aes8 ees des aes'16 g |
			aes8 ees16 d ees8 des'!16 c des8 bes16 a bes8 aes16 g |

			% end of sample from musicnotes.com


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
