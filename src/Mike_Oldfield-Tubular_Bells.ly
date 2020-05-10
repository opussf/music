\version "2.20.0"
\header {
	title = "Tubular Bells"
	subtitle = "Theme from THE EXCORCIST"
	composer = "By MIKE OLDFIELD"
	copyright = \markup \left-align \center-column {
		\line { "Copyright " \char ##x00A9 " 1987 Guns N' Roses Music (ASCAP)" }
		\line { "International Copyright Secured    All rights Reserved" }
	}
  	source = "urtext"
}

upper = \relative c' {
	\key c \major
	\time 4/4
	\tempo 4 = 60

	\partial 8
	e'8 |
	\repeat unfold {
		a e b' e, g a4 c8( |

		\time 3/4
		c8) d4 b8 c e,8 |

		\time 4/4
		a e b' e, g a4 c8( |
		c8) d4 b8 c e,8 b' e, |
	}
}

lower = \relative c' {
	\clef bass
	\key c \major

	\partial 8
	r8

}


\score {
	\new PianoStaff \with { instrumentName = #"Piano" }
	<<
		\new Staff = "upper" \upper
		\new Staff = "lower" \lower
	>>
	\layout { }
}
\score {
	\unfoldRepeats
	\new PianoStaff \with { instrumentName = #"Piano" }
	<<
		\new Staff = "upper" \upper
		\new Staff = "lower" \lower
	>>
	\midi { }
}

