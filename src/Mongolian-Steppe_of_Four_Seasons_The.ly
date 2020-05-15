\version "2.20.0"
\header {
	title = "Дөрвөн цагийн тал"
	composer = "Л. Мөрдорж"
}

soprano = \relative c' {
	\key bes \major
	\time 3/4
	\tempo "Maestoso" 4 = 80

	R2. | R | R | R |
	f8( f) bes4.( g8) |
	c8( d) f,2 | d8 f16 g bes4. g8 | c( bes) f2 |
	\repeat volta 2 {
		d'8 bes f'4. d8 |
		g8 f g,2 |
		d'8 c16 d f,4. bes8 |
	}
	\alternative {
		{ c8 d bes2 }
		{ c8 d bes2~ | bes2.~ | bes8 r8 r4 r4 }
	}

}

upper = \relative c' {
	\key bes \major
	\time 3/4
}

lower = \relative c' {
	\key bes \major
	\time 3/4
}

\score {
	<<
		\new Staff \with { instrumentName = #"Soprano" } \soprano
		\new PianoStaff \with { instrumentName = #"Piano" }
		<<

			\new Staff = "upper" \upper
			\new Staff = "lower" \lower
		>>
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

