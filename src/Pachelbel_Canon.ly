\version "2.19.0"
\header {
	copyright = "version: @VERSION@"
	title = "Canon"
	composer = "Johann Pachelbel (1653-1706)"
}

global = {
	\key c \major
	\time 4/4
}

upper = \relative c' {
	\global
	\override Score.MetronomeMark.padding = #3
	\tempo "Andante" 4 = 108

	% Bar 1
	\repeat volta 2 {
		e2-3\p d-"legato" |
		c-1 b-3 |
		a g |
		a b |
	}

	\break
	% Bar 5
	<g' e'>2 <b d> |
	c <g b> |
	<c, a'> <e g> |
	<f a> <d b'> |

	\break
	% Bar 9
	c'4-3(\mp c d b |
	c-1 e g g, |
	a-4 f-2 e g |
	f c' b g |
	c) e8-2(\mf g-4 g[ a] g[ f] |

	\break
	% Bar 14
	e4.) e8-3( e[ f] e[ d] |
	c[ bes] a[ bes] g4 e4 |
	c f8 e d4 g8 f) |
	r4 c'4(\mp d b |

	\break
	% Bar 18
	c e, g4. a8 |
	f4 c e g |
	f e d g |
	<c, e>1) |

	\bar "|."
}

lower = \relative c' {
	\global
	\clef bass
	\set fingeringOrientations = #'(down)

	% Bar 1
	\repeat volta 2 {
		c2-1 g-3 |
		a-1 e-3 |
		f c |
		f-3 g-2 |
	}

	% Bar 5
	c2 g |
	a e |
	f c |
	f g |

	% Bar 9
	<c e>2 <g d'> |
	<a c> e |
	<f a> c |
	<f a> <g b> |
	<c e> g |

	% Bar 14
	<a c> <e g> |
	<f a> <c e> |
	<f a> <g b> |
	<c e> g |

	% Bar 18
	<a c> <e b'> |
	<f a> <c g'> |
	<f a> <g b> |
	c,1

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
}
\score {
	\unfoldRepeats
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
	\midi { }
}
