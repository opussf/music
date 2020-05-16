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

words = \lyricmode {
	- - - | - - - | - - - | - - - |
	Янаг-гийн сайхан

}

upper_one = \relative c' {
	\key bes \major
	\time 3/4

	% Bar 1
	\stemUp
	d'8 bes <f d' f>4. <g d'>8 | <ees' g>8 <d f> <g,, d' g>2 |

	% Bar 3
	d8 c16( d f,4. <g bes>8 | c8 d <d, f bes>2 |
}

upper_two = \relative c' {
	\key bes \major
	\time 3/4

	% Bar 1
	\stemDown
	f8( r8 s2 | g2) s2 | <g bes>4 bes,4 r4 |

	% Bar 3
	d4 bes, r4 | f4 s2 |
}

lower = \relative c' {
	\key bes \major
	\time 3/4
	\clef bass

	% Bar 1
	bes,8 f' d g bes d | <c, c,>4 r8 ees8( d c) |

	% Bar 3
	<f, d>4 d8( f bes d') | <ees, f'>4 a8( d a') g16( f) |
}

\score {
	<<
		<<
			\new Staff \with { instrumentName = #"Soprano" } \soprano
			\context Lyrics {
				\lyricsto "melody" {
					\words
				}
			}
		>>

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
		\new Staff = "soprano" \soprano
		\new Staff = "upper_one" \upper_one
		\new Staff = "upper_two" \upper_two
		\new Staff = "lower" \lower
	>>
	\midi { }
}

