\version "2.18.2"
date = #(strftime "%d %b %Y" (localtime (current-time)))
\header {
	title = "ONE TIN SOLDIER"
	composer = \markup {
		\line { "Words and Music by" }
		\line { "DENNIS LAMBERT" }
		\line { "and BRIAN POTTER" }
	}
	copyright = \markup \left-align \center-column {
		\line { "Copyright " \char ##x00A9 " 1968 by ABC/DUNHILL MUISC INC., Los Angeles, Calif. 90048" }
		\line { "International Copyright Secured       Made in U.S.A.      All Rights Reserved" }
	}
	tagline = \markup {
		\line { \date " version: @VERSION@" }
	}
}

\parallelMusic #'(voiceAA voiceAB voiceBA) {

	% keys
	\key f \major	|
	\key f \major	|
	\key f \major	|

	% Bar 1
	a''2						g		|
	s1 |
	r8 a''16 a~ a bes c8-. 		c-. g4. |

	% Bar 2
	f2							e		|
	s1 |
	r8 f16 f~ f g a8-. 			a-. e4. |

	% Bar 3
	d2							c2		|
	s1 |
	r8 d16 d~ d e f8-. c-. f-. f-. c-. |

	% Bar 4
	d2							<f bes,>|
	s2 c2 |	% move this c to another voice, in the left hand bars
	d8-. d-. bes-. d-. f4 f |

	% Bar 5
	r8 a,8 a4 g16 a8. a4 |
	<f c>1 |
	\clef bass <f, c f,>1 |

	% Bar 6
	r8 a8 a4 g16 a8. a4 |
	<f c>1 |
	<f c f,>1 |
	\break

	% Bar 7
	\stemUp 	a16 c8. c8 a  g c 	c16 g8.   |
	\stemDown 	f4      a8 f  <e c>4 <e c>    |
				f4.        f8 e4.          e8 |

	% Bar 8
	f8 a a16 f8. f8[ a16 a~ a4] |
	d4   d       d8.     <f d>16~ <f d>4 |
	d4.         d8 c4.   c8 |
	\break

	% Bar 9
	d,8 f16 f~ f8 d16 c c8 f16 f~ f8 c |
	bes,8[ <d bes>~] <d bes> bes a[ <c a>~] <c a> a |
	bes4. bes8 f4. f8 |

	% Bar 10
	d8 f16 f f a8. g8 g16( f g4) |
	bes8 <d bes> <d bes>4 <f bes,> <f bes,>|
	g4. g8 c4 c8 c8 |

	% Bar 11

	% Bar 12

	% Bar 13

	% Bar 14

	% Bar 15

	% Page 2
	% Bar 16 (1)

	% Bar 17 (2)

	% Bar 18 (3)

	% Bar 19 (4)

	% Bar 20 (5)

	% Bar 21 (6)

	% Bar 22 (7)

	% Bar 23 (8)

	% Bar 24 (9)

	% Bar 25 (10)

	% Bar 26 (11)

	% Bar 27 (12)

	% Bar 4
	% Bar 28 (13)

	% Bar 5
	% Bar 29 (14)

	% Bar 6
	% Bar 30 (15)

	% Bar 7
	% Bar 31 (16)

	% Bar 8
	% Bar 32 (17)

	% Bar 9
	% Bar 33 (18)

	% Bar 10
	% Bar 34 (19)

	% Bar 11
	% Bar 35 (20)


}

\score {
	<<
		\new PianoStaff \with { instrumentName = "Piano" }
		<<
			\new Staff {
				<<
					% ignore = \override NoteColumn #'ignore-collision = ##t
					\tempo "Moderatly Slow Rock Tempo" 4=85
					\relative c' \voiceAA
					\relative c' \voiceAB
				>>
			}
			\new Staff {
				<<
					\relative c \voiceBA
				>>
			}
		>>
	>>
	\layout { }
	\midi { }
}