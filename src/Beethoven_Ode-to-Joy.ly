\version "2.19.0"
\header {
  copyright = "version: @VERSION@"
  title = "Ode to Joy"
  subtitle = "from Symphony no.9"
  composer = "Ludwig Von Beethoven (1770-1827)"
}

global = {
	\key c \major
	\time 4/4
}

upper = \relative c' {
	\global
	\override Score.MetronomeMark.padding = #5
	\tempo "Allegro maestoso" 4 = 168
	\set fingeringOrientations = #'(up)

	% Bar 1
	<c-1 e-3>4(\f e f g |
	g f e d |
	c c d e |
	e4. d8 <b-1 d-2>2) |

	% Bar 5
	<c-1 e-3>4( e f g |
	g f e d |
	c c d e |
	d4. c8 c2) |

	% Bar 9
	d4(\p d e c |
	d e8 f e4 c |
	d e8 f e4 d |
	c d) r4 e(~\f |

	% Bar 13
	e e f g |
	g f e d |
	c c d e |
	d4. c8 c2) |
}

lower = \relative c' {
	\global
	\clef bass
	 \set fingeringOrientations = #'(down)

	% Bar 1
	<c,-1 g'-5>1 |
	g'2 g |
	<c, e g>1 |
	g'2 g |

	% Bar 5
	<c, g'>1 |
	g'2 g |
	<c, e g>1 |
	g'2 c,2 |

	% Bar 9
	g'1 |
	g2 g2 |
	g2 gis-2 |
	a4-1 fis g2 |

	% Bar 13
	c2-1 bes |
	a f |
	e4 e g c |
	g2 <c, e g>2 |

	\bar ".|"
}


lower_four = \relative c' {
	\global
	\clef bass

	% Bar 1


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
					\lower
				>>
			}
		>>
	>>
	\layout { }
	\midi { }
}