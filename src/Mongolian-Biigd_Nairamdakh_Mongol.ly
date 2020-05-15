\version "2.20.0"
\header {
	title = "Biigd Nairamdakh Mongol"
	composer = "B. Damdinsuren / L. Murorj"
  	source = "urtext"
}

upper = \relative c' {
	\key aes \major
	\time 4/4
	\tempo 4 = 88

	<aes' ees c>2.\f r4 |
	ees4\mf ees8. f16 aes8. bes16 aes8. f16 |
	ees8. f16 ees8. c16 ees4. ees8 |
	ees4 aes8. bes16 c8. ees16 c8. aes16 |
	bes4 bes8. f16 aes2 |

	aes4 aes8. bes16 c4 ees |
	f8 ees c8. aes16 bes2 |
	c8 ees c bes aes8. bes16 aes8 f |
	ees4 ees8. f16 aes2 |
	f'4.\f ees8 c4 c8 ees |

	bes4 aes8 bes c4 r |
	ees4. f8 ees c bes aes |
	bes4 f8 aes8 bes4 r4 |
	aes4. f8 aes4 bes |
	c c8 bes c c ees4 |
	f8 aes f ees c4 ees8 ees |
	aes1 |


}

lower_one = \relative c' {
	\clef bass
	\key aes \major

	R1 | <aes c,>2 <aes f> | <g ees> <g des> |
	<<
		{ aes4 g aes c8. aes16 }
		\\
		{ c,4 ees f8. ees16 aes8. ees16 }
	>> |
}

lower_two = \relative c' {
	\clef bass
	\key aes \major

	R1 | <aes aes,>2 <c f,,> | <c c,,>

}

\score {
	\new PianoStaff \with { instrumentName = #"Piano" }
	<<
		\new Staff = "upper" \upper
		\new Staff = "lower_one" \lower_one
		\new Staff = "lower_two" \lower_two
	>>
	\layout { }
}
\score {
	\unfoldRepeats
	\new PianoStaff \with { instrumentName = #"Piano" }
	<<
		\new Staff = "upper" \upper
		\new Staff = "lower_one" \lower_one
		\new Staff = "lower_two" \lower_two
	>>
	\midi { }
}

