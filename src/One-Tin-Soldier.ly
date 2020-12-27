\version "2.18.2"
\include "predefined-guitar-fretboards.ly"
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

% piano
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
	\repeat volta 3 {
	\stemUp 	a16 c8. c8 a  g c 	c16 g8.   |
	\stemDown 	f4      a8 f  <e c>4 <e c>    |
				f4.        f8 e4.          e8 |

	% Bar 8
	f8 a a16 f8. f8[ a16 a~] a4 |
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

	%\pageBreak
	% Page 2
	% Bar 11
	a8 c16 c c8 a g c16 c c g8. |
	f4       a8 f <e c>4  <e c>4 |
	f4.         f8 e4.      e8  |

	% Bar 12
	f8 a a  f16 f16~ f8 a16 a~ a4 |
	d4   d8.    d16~ d8 <f d>4.   |
	d4.     d8  c4.               c8 |

	% Bar 13
	d,8 f16 f~ f8 d c16 f8 f16~ f8. c16 |
	bes,8 <d bes>4 bes8 a16 <c a>8.~ <c a>4 |  %typo on the page?
	bes4. bes8 f4. f8 |

	% Bar 14
	\time 3/4
	d16 f8 f16~ f8 a8 g[ f] |
	bes8. <d bes>16 <d bes>4 <d bes>|
	g4. g8 c[ c] |

	% Bar 15
	\time 4/4
	r4 <c a'>8 <c a'> <d bes'> <c a'>4. |
	f1 |
	f,4. f8 bes f4. |

	\bar "||"
	% Bar 16
	f'16 f f g f8 f8 e16( d c8) c4 |
	<a c>4 <a c>8 <a c> c a <e a>4 |
	f4. f8 a4 a |

	% Bar 17 (2)
	d16 c d c d c c c~ c2 |
	<f bes>4 <f bes>8. <f a>16~ <f a>2 |
	bes4. bes8 f4 f8 c' |

	% Bar 18 (3)
	f16 f f f f g8. e16 d c c~ c4 |
	<a c>4 <a c>4 a8. <e a>16~ <e a>4|
	f,4. f8 a4 a |

	% Page 3
	% Bar 19 (4)
	d16 c d c d8 c16 c~ c4 r8. c16 |
	<f bes>4 <f bes>8. <f a>16~ <f a>4 <f a>4 |
	bes4. bes8 f4 f8 c' |

	% Bar 20 (5)
	f16 f f f f g8. e16 d c8~ c4 |
	<a c>4 <a c> <a c>8 <e a>~ <a e>4 |
	f,4. f8 a4 a |

	% Bar 21 (6)
	d8 d16 c~ c8 bes c4 r8 f,16 f |
	<f bes>8. <d f>16~ <d f>8 <d f> <f a>4 <a, c> |
	bes4. bes8 f4 f8 c' |

	% Bar 22 (7)
	a16 c8. c8 c d f4.~ |
	f'4 <f a>8 <f a> <f bes> <bes d>4.~ |
	f,4. f8 bes4 bes8 f |

	% Bar 23 (8)
	f2 r4 f,8 f |
	<bes d>2. r4 |
	bes1( |

	% Bar 24 (9)
	\time 2/4
	a16( g) f8 f f16 f~ |
	<bes, d>2 |
	c2) |
	} % repeat

	\alternative {

	{ % 1 and 2
	% Bar 25 (10)
	% @TODO: Move these
	\time 4/4
	f1 |
	r4 <c a'>4 <d bes'>8 <d bes'>4. |
	f,4. f8 bes4 bes |

	% Bar 26 (11)
	r4 <c f a>8 <c f a> <d f bes>16 <d f bes>8. <c f a>4 |
	s1 |
	f4. f8 bes4 f |
	}

	{ % 3
	% Bar 27 (12)
	% repeat 3
	f1~ |
	r4 <c a'>4 <d bes'>8 <d bes'>4. |
	f4. f8 bes4 bes |

	% Bar 28 (13)
	f1\fermata |
	r4 <c a'>8 <c a'> <d bes'>16 <d bes'>8. <c a'>4\fermata |
	f4. f8 bes4 f\fermata |
	}
	} % alternate

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
}
\score {
	\unfoldRepeats
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
	\midi { }
}