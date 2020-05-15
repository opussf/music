\version "2.20.0"
\header {
	title = "Biigd Nairamdakh Mongol"
	composer = "B. Damdinsuren / L. Murorj"
  	source = "urtext"
}

soprano = \relative c' {
	\key bes \major
	\time 3/4
	\tempp 4 = 80

	R1 | R1 | R1 | R1 |
	f8~ f bes4.()
}

upper = \relative c' {

}

lower = \relative c' {

}

\score {
	\new Staff = "soprano" \soprano
	\new PianoStaff \with { instrumentName = #"Piano" }
	<<
		\new Staff = "upper" \upper
		\new Staff = "lower" \lower
	>>
	\layout { }
}
\score {
	\unfoldRepeats
	\new Staff = "soprano" \soprano
	\new PianoStaff \with { instrumentName = #"Piano" }
	<<
		\new Staff = "upper" \upper
		\new Staff = "lower" \lower
	>>
	\midi { }
}

