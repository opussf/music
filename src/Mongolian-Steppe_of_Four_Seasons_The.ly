\version "2.20.0"
\header {
	title = "Biigd Nairamdakh Mongol"
	composer = "B. Damdinsuren / L. Murorj"
  	source = "urtext"
}

soprano = \relative c' {
	\key bes \major
	\time 3/4
	\tempo 4 = 80

	R2. | R | R | R |
	f8~ f bes4.( g8) |
	c8( d) f,2 | d8 f16 g bes4. g8 | c( bes) f2 |
	\repeat volta {
		d'8 bes f4. d8 |
		g8 f g,2 |
		d'8 c16 d f,4. b'8 |
	}
}

upper = \relative c' {

}

lower = \relative c' {

}

\score {
	\new PianoStaff \with { instrumentName = #"Piano" }
	<<
		\new Staff = "soprano" \soprano
		\new Staff = "upper" \upper
		\new Staff = "lower" \lower
	>>
	\layout { }
}
\score {
	\unfoldRepeats
	\new PianoStaff \with { instrumentName = #"Piano" }
	<<
		\new Staff = "soprano" \soprano
		\new Staff = "upper" \upper
		\new Staff = "lower" \lower
	>>
	\midi { }
}

