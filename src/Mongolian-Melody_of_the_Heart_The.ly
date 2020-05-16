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

	\break
	% Bar 6
	d1 | f2 g4. f16 g | a c a4.~ a2 | d,2 f4 d'4 |

	\break
	% Bar 10
	<c g>2 a4 c4 | g8 a \grace { g16 a } g8 f d4 f8 g | a2.~ a8 d,16 e | d1~

	\break
	% Bar 14
	d4 r4 r2 | R1\mf | r16 e16 f e a e f e a e f e a e f e |

	% Page 2
	\break
	% Bar 17
	r16 d16 f d a' d, f d bes' d, f d a' d, f d |
	r8. c16 c'16 c, a' c, r16 cis a' cis, cis' cis, a' cis, |

	\break
	% Bar 19
	d16 e f e a e f e r e f e a e f e | r16 a g a c a g a c d a c g a d, a' |

	\break
	% Bar 21
	r16 d a bes g a d, a' r16 a g a f a d, a' |
	r16 a g a e a g d' a d <a e'> <d g> <e a>8-> r8 |
	r16 e, f e a e f e a e f e a e f e |

	\break
	% Bar 24
	\stemUp
	<f a bes d f>2.--\arpeggio  <d d'>8 <f f'> |
	g'16 f g8~ g2 <f, f'>8 <g g'> |

	\break
	% Bar 26
	<a a'>2~ <a a'>8 <f f'> <g g'> <c c'> |
	a'16 g a4.~ a8 <f, f'> <g g'> <a a'> |
}


upper_two = \relative c' {
	\key f \major
	\time 4/4

	% Bar 1
	s1 | s1 | s1 | s1 | s1 |

	% Bar 6
	s1 | s1 | s1 | s1 |

	% Bar 10
	\stemDown
	s2 c2 | bes2 s2 | s1 | s1 |

	% Bar 14
	s1 | s1 | s1 |

	% Page 2
	% Bar 17
	s1 | s4 c'4-> s4 cis4-> |

	% Bar 19
	s1 | s1 |

	% Bar 21
	s1 | s1 | s1 |

	% Bar 24
	s2. <f, a>4 | <g bes d>2. <bes d>4 |

	% Bar 26
	<e f>2. e4 | <a, e' f>2. c4 |


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
	\stemUp
	r8 a e' a, g' a, e' a, | r8 f a bes r8 d, a' bes | r8 a c a r8 a cis a |
	r8 a, f' a d, a' f a |

	% Bar 10
	r8 a g a r8 a4 a8 | r8 d, a' bes r8 f a bes | r8 e, g a e'4 r4 |
	r8 a, e' a, g' a, e' a, |

	% Bar 14
	r8 a e' a, g' a, e' a, | a,4-- \stemDown f'2-- g4-- | d1-- |

	% Page 2
	% Bar 17
	\stemUp
	f2 g4. f16 g |
	a\arpeggio c a4.~ a4 a4-- |

	% Bar 19
	d,2 f4 d'4 | c2 a4 c |

	% Bar 21
	g8 a \acciaccatura { g16 a } g8 f d4 f8 g | a2.~ a8 d,16 e | d2. c4 |

	% Bar 24
	\stemDown
	bes16-- f' a bes d f d bes a f' d bes a bes a f |
	g,-- d' a' bes d f d bes a f' d bes a bes a d, |

	% Bar 26
	f,16-- c' a' c e  f e c a f' e c a c a f  |
	\stemUp
	d,16-- c' f  a \stemNeutral e' f e c a f' e c a c a d, |

}

lower_two = \relative c' {
	\key f \major
	\time 4/4

	% Bar 1
	s1 | s1 | s1 | s1 | s1 |

	% Bar 6
	s4 e4 g4 e4 | s1 |
	s4 c4 s4 cis4 | s1 |

	% Bar 10
	s1 | s1 | s1 | s4 e4 g e |

	% Bar 14
	s4 e4 g e | s1 | s1 |

	% Page2
	% Bar 17
	bes,1 |
	\stemDown
	f2\arpeggio e2 |

	% Bar 19
	d1 | ees'2 d2 |

	% Bar 21
	bes1 | a2. r4 | r2 d,2 |

	% Bar 24
	s1 | s1 |

	% Bar 26
	s1 | s1 |

}

lower_three = \relative c' {
	\key f \major
	\time 4/4

	% Bar 1
	s1 | s1 | s1 | s1 | s1 |
	d,1 | bes2 g2 | f e | d1 |

	% Bar 10
	ees'2 d | g, bes | a2. r4 | d1 |

	% Bar 14
	d1 | s1 | r2 \stemDown d,2 |

	% Page2
	% Bar 17
	s1 | s1 |

	% Bar 19
	s1 | s1 |

	% Bar 21
	s1 | s1 | s1 |

	% Bar 24
	s1 | s1 |

	% Bar 26
	s1 | s1 |

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
	\midi { }
}
% \score {
%	\unfoldRepeats
%	\new PianoStaff \with { instrumentName = "Piano" } {
%		<<
%			\new Staff = "upper_one" \upper_one
%			\new Staff = "upper_two" \upper_two
%			\new Staff = "lower_one" \lower_one
%			\new Staff = "lower_two" \lower_two
%			\new Staff = "lower_three" \lower_three
%		>>
%	}
%	\midi { }
%}

