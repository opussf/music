\header {
	title = "Sweet Child O' Mine"
	composer = \markup {
		\line { "Words and Music by W. AXL ROSE," }
		\line { "SLASH, IZZY STRADLIN', DUFF McKAGAN" }
		\line { "and STEVEN ADLER" }
	}
	copyright = \markup \left-align \center-column {
		\line { \char ##x00A9 " Copyright 1993 by Michael Nyman Limited/Chester Music Limited, 8/9 Frith Street, London W1" }
		\line { "All rights Reserved International Copyright Secured" }
	}
  	source = "urtext"
}

upperMelody = \relative c' {
	\key d \major
	\time 4/4
	\tempo 4. = 50

	d8 d' a d, g d fis d | d8 d' a d, g d fis d | d8 d' a d, g d fis d | d8 d' a d, g d fis d |
	d8 d' a d, g d fis d | d8 d' a d, g d fis d | d8 d' a d, g d fis d | d8 d' a d, g4 fis |
	[ d2. fis2. ]


}
upperOther = \relative c'' {

}

upper = {
	<<
	\upperMelody
	\\
	\upperOther
	>>
}

lowerMelody = \relative c' {

}
lowerOther = \relative c' {

}
lower = {
	<<
	\lowerMelody
	\\
	\lowerOther
	>>
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

