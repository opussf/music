\version "2.19.0"
\header {
	copyright = "version: @VERSION@"
	title = "Let It Go"
	subtitle = "from Disney's Animated Feature FROZEN"
	composer = \markup {
		\line { "Music & Lyrics by" }
		\line { "Kristen Anderson-Lopez & Robert Lopez" }
	}
}

global = {
	\key c \major
	\time 4/4
}

upper = \relative c' {
	\global
	\tempo 4 = 90

	\partial 4.
	a'8 b[ c~] |

	% Bar 1
	c2 r8 g8 g[ d'~] |
	d2. c8 a8 |
	a a a4 a8 b4 c8~ |
	c2 r8 a b[ c~] |

	\break
	% Bar 5
	c2 r8 g8 e'[ e] |
	d2 r8 c8 d[ e~] |
	e4 e f8 e d c |
	d c4. r2 |

	\break
	% Bar 9
	g'4. e8~ e4 d~ |
	d2 c4 c |
	g'4. e8~ e4 c~ |
	c2. c8 c |

	\break
	% Bar 13
	b4. g8~ g4 g~ |
	g2. r8 f8 |
	f4 f8 e f e f f |
	e c4. r2 |

	\bar "|."
}

ch = \relative c' {
	\chordmode {
		\partial 4.
		s4. |

		% Bar 1
		c2 s2 |
		g1 |
		a2..:m f8~ |
		f2 s2 |

		% Bar 5
		c2 s2 |
		g2 s2 |
		a2:m s2 |
		f2 s2 |

		% Bar 9
		c2. g4~ |
		g2 s2 |
		a2.:m f4~ |
		f2. s4 |

		% Bar 13
		e2.:m ees4~ |
		ees2. s4 |
		f1 |
		s1
	}
}

\score {
	<<
		\new ChordNames {
			\ch
		}
		\new Staff {
			<<
				\upper
			>>
		}
	>>
	\layout { }
	\midi { }
}