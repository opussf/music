\version "2.20.0"
\header {
	title = ""
	composer = ""
}

upper_one = \relative c'' {
	\key f \major
	\time 4/4
	\tempo "Sostenuto" 4 = 60

	% Bar 1
	a'4.--->\f <a g>8-- <a g f>-- <a f e>-- <a f e d>-- <a e d c>-- |
	<a e d bes>1-- |

	a,4.\mf\> <a g>8 <a g f> <a f e> <a f e d> <a e d c> |
	<a e d bes>1\! |

	a,4\mp-- f'2-- g4-- |

	% Bar 6
	d1 | f2 g4. f16 g | a c a4.~ a2 | d,2 f4 d'4 |

	% Bar 10
	<c g>2 a4 c4 | g8 a \grace { g16 a } g8 f d4 f8 g | a2.~ a8 d,16 e | d1~

	% Bar 14
	d4 r4 r2 | R1 | r16 e16 f e a e f e a e f e a e f e |
}


upper_two = \relative c' {
	\key f \major
	\time 4/4

	s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
	s2 c2 | bes2 s2 |

}

lower_one = \relative c' {
	\key f \major
	\time 4/4

	% Bar 1
	a'4.--->\f <a g>8-- <a g f>-- <a f e>-- <a f e d>-- <a e d c>-- |
	<a e d bes>1-- |

	\clef bass
	a,4. a8 a a a a | a1 | R1 |

	% Bar 6
	\
	r8 a e' a, g' a, e' a, | r8 f a bes r8 d, a' bes | r8 a c a r8 a cis a |
	r8 a, f' a d, a' f a |

}

lower_two = \relative c' {
}

lower_three = \relative c' {
}

\score {
	<<
		\new PianoStaff \with { instrumentName = "Piano" }
		<<
			\new Staff {
				<<
					\upper_one
					\upper_two
				>>
			}
			\new Staff {
				<<
					\lower_one
					\lower_two
					\lower_three
				>>
			}
		>>
	>>
	\layout { }
}
\score {
	\unfoldRepeats
	\new PianoStaff \with { instrumentName = "Piano" } {
		<<
			\new Staff = "upper_one" \upper_one
			\new Staff = "upper_two" \upper_two
			\new Staff = "lower_one" \lower_one
			\new Staff = "lower_two" \lower_two
			\new Staff = "lower_three" \lower_three
		>>
	}
	\midi { }
}

