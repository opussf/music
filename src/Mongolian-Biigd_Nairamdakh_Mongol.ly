\version "2.19.0"
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
	\stemUp
	R1 |
	aes2 aes |
	g g |
	aes4 g aes c8. aes16 |
	bes4 bes aes2 |

	% Bar 6 (line 2)
	c4 f ees ees |
	f c ees2 |
	ees4 ees c des |
	c bes aes2 |
	des8 c4 bes8 aes4 aes |

	% Bar 11 (line 3)
	g4 aes8 g c2 |
	aes4. aes8 c ees c4 |
	bes4 des bes g |
	c bes c bes |
	a4 c8 bes c4 c |
	f8 aes f ees4 ees8 des4 |
	c1 |
}

lower_two = \relative c' {
	\global
	\clef bass

	% Bar 1
	\stemDown
	R1 |
	c,2\mf f |
	ees des |
	c4 ees f8. ees16 aes8. ees16 |
	f4 g ees2 |

	% Bar 6 (line 2)
	aes4 aes2 aes4 |
	aes aes 8. aes16 g2 |
	aes4 g f f |
	aes g aes2 |
	aes4.\f g8 ees4 ees |

	% Bar 11 (line 3)
	ees4 c8 ees aes2 |
	ees4. f8 aes4 bes8 aes |
	f4 f8 aes f4 ees4~ |
	ees8 ees des4 c ees4~ |
	ees8 ees g4 aes aes |
	aes2 aes4 g |
	aes1 |
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