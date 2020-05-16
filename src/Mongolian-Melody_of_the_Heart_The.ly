\version "2.20.0"
\header {
	title = ""
	composer = ""
}

upper_one = \relative c' {
	\key f \major
	\time f/4
	\tempo "Sostenuto" 4 = 60

}


upper_two = \relative c' {
}

lower = \relative c' {
}

\score {
	<<
		\new PianoStaff \with { instrumentName = #"Piano" }
		<<
			\new Staff {
				<<
					\upper_one
					\upper_two
				>>
			}
			\new Staff = "lower" \lower
		>>
	>>
	\layout { }
}
\score {
	\unfoldRepeats
	\new PianoStaff \with { instrumentName = #"Piano" }
	<<
		\new Staff = "upper_one" \upper_one
		\new Staff = "upper_two" \upper_two
		\new Staff = "lower" \lower
	>>
	\midi { }
}

