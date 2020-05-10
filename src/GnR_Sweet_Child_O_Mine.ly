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

upper = \relative c' {
	\key d \major
	\time 4/4
	\tempo 4 = 120

	d8 d' a d, g d fis d | d8 d' a d, g d fis d | d8 d' a d, g d fis d | d8 d' a d, g d fis d |
	d8 d' a d, g d fis d | d8 d' a d, g d fis d | d8 d' a d, g d fis d | d8 d' a d, g4 fis |
	<d fis>2. <d fis>4 | <a d fis>1 |

	<a fis>8 <a fis> <a fis> (<a fis> <a fis>4) g8 fis |
	<g d>4 a8 (e8 e4) d4 |
	<g e>8 fis d (<g e> <g e>4) <fis d>4 |
}

lower = \relative c' {
	\clef bass
	\key d \major
	R1 | R1 | (<a d,>1 | <a d,>1) |
	(<g c,> | <g c,>) | (<d g,> | <d g,>) | d,4. d8 d2 | d4. d8 d4 d |

	d4. d8 d2 |
	d4. d8 d2 |
	c4. c8 c2 |

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

