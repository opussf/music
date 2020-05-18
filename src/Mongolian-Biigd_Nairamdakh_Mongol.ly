\version "2.20.0"
\header {
  copyright = "version: @VERSION@"
  title = "Bügd Nairamdakh Mongol"
  composer = "B. Damdinsuren / L. Murorj"
}

global = {
	\key aes \major
	\time 4/4
	\tempo 4 = 88
}

upper = \relative c' {
	\global

	% Bar 1
%	<c ees aes>2.\f r4 |
%	ees4\mf ees8. f16 aes8. bes16 aes8. f16 |
%	ees8. f16 ees8. c16 ees4. ees8 |
%	ees4 aes8. bes16 c8. ees16 c8. aes16 |
%	bes4 bes8. f16 aes2 |

	% Bar 5 (line 2)
%	aes4 aes8. bes16 c4 ees4 |
%	f8[ ees c8. aes16] bes2 |
%	c8 ees c bes aes8. bes16 aes8 f8 |
%	ees4 ees8. f16 aes2 |
%	f'4. ees8 c4 c8 ees |

}

lower_one = \relative c' {
	\global

	% Bar 1
	% Bar 6 (line 2)
	% Bar 11 (line 3)
}

lower_two = \relative c' {
	\global

	% Bar 1
	% Bar 6 (line 2)
	% Bar 11 (line 3)
}

lower_three = \relative c' {
	\global
	\clef bass

	% Bar 1
	\stemUp
	R1 |
	aes2 c |
	c bes |
	aes4 c2 c4 |
	des4 ees8. ees16 c2 |

	% Bar 6 (line 2)
	f4 c ees c |
	des ees bes2 |
	c4 bes aes aes |
	c des c2 |
	f8\f f4 ees8 c4 c |

	% Bar 11 (line 3)
	bes4 aes8 bes c2 |
	c4 c8 des ees4 f |
	des4 bes des2 |
	aes4 g aes bes |
	c c f ges |
	f8 aes f ees c c ees4 |
	aes,1 |
}

lower_four = \relative c' {
	\global
	\clef bass

	% Bar 1
	\stemDown
	R1 |
	aes,2\mf f |
	c bes4 ees |
	aes4 g f ees |
	des ees aes aes8 g |

	% Bar 6 (line 2)
	aes4 f' ees c |
	des ees4. ees8 ees des |
	c4 ees f des |
	ees ees, aes f8 ees |
	des8\f ees f g aes4 aes |

	% Bar 11 (line 3)
	ees8. ees16 ees4 aes aes8 bes |
	c4 c8 des c4 f,4 |
	des'8 c bes4 des4. ees8 |
	c4 bes aes g |
	aes g f ees |
	des2 ees4 ees |
	aes1
	\bar "|."

}

\score {
	<<
		\new PianoStaff \with { instrumentName = "Piano" }
		<<
			\new Staff {
				<<
					\upper
				>>
			}
			\new Staff {
				<<
					\lower_one
					\lower_two
				>>
			}
			\new Staff {
				<<
					\lower_three
					\lower_four
				>>
			}
		>>
	>>
	\layout { }
	\midi { }
}