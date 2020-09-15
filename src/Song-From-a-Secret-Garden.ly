\version "2.18.2"
date = #(strftime "%d %b %Y" (localtime (current-time)))
\header {
	title = "Song From a Secret Garden"
	composer = "Rolf Løvland"
	arranger = "Arr: Raif Husicic (piano)"
	subtitle = "From https://www.youtube.com/watch?v=B1PBluFYKco"
	tagline = \markup {
		\line { \date " version: @VERSION@" }
	}
}

flute = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\new Voice = "melody"  {
		\relative c'' {
			\clef treble
			\key ees \major
			\time 4/4
			\tempo 4 = 62

			% Bar 1
			r2 r8 g8(\mp c[ d]) |
			ees4.( d8) ees2 |
			ees8[ f] d[ c] d2 |
			d8[ ees] c[ bes] c4. bes8 |

			% Bar 5
			\break
			g2\> r8\! g\<  c[ d] |
			ees4.\mp d8 \grace { ees8 d8 } ees2 |
			ees8[ f] d[ c] \grace { d c } d2 |
			d8[ ees] c[ bes] \grace { c bes } c4. bes 8 |

			% Bar 9
			\break
			c2 r8 d8\< ees[ bes'] |
			c4.\mf c8 c[ d] bes[ aes] |
			\grace { bes8 aes } bes2 r8 d, ees[ g] |
			aes4. aes8 aes[ bes] g[ f] |

			% Bar 13
			\break
			\grace { g8 f8 } g2 r8 d8 ees[ bes'] |
			c4.\mf c8 c[ d] bes[ a] |
			\grace { bes aes } bes2 bes8[ c] aes[ g] |
			aes4. aes8 aes\>[ bes] g[ f] |

			% Bar 17
			\break
			\grace { g8 f } g2\> r8\! g,8\< c[ d] |
			ees4.\mp d8 \grace { ees8 d } ees2 |
			ees8[ f] d[ c] \grace { d8 c } d2 |
			d8[ ees] c[ bes] \grace{ c8 bes } c4. bes8 |

			% Bar 21
			\break
			g2\> r8\! g8\< c[ d] |
			ees4.\mp d8 \grace { ees8 d } ees2 |
			ees8[ f] d[ c] \grace { d8 c } d2 |
			d8[ ees] c[ bes] c4.\> bes8 \! |

			% Bar 25
			\break
			c2 r2 |
			r2 r8 g'8 c[ d] |
			ees4. d8 \grace { ees8 d } ees2 |
			ees8[ f] d[ c] \grace { d8 c } d2 |

			% Bar 29
			\break
			d8[ ees] c[ bes] c4. bes8 |
			g2 r8 g,8 c[ d] |
			ees4. d8 \grace{ ees8 d } ees2 |
			ees8[ f] d[ c] \grace{ d8 c } d2 |

			% Bar 33
			\break
			d8[ ees] c[ bes] c4. bes8 |
			c1 |
			d8[ ees] c[ bes] c4. bes8 |
			c1 |

			\bar "|."

		}
	}
}

\parallelMusic #'( voiceAA voiceBA ) {
	% Bar 1
	\key ees \major		r2 r8 g8 c d |
	\key ees \major		R1 |

	<ees g,>4. d8 		<ees aes,>2 		|
	c8 g' ees'4			f,,8 c' aes'4		|

	<ees aes,>8 f d c 	<d g,>2 		|
	bes,8 f' d'4.		bes,8 g' d' 	|

	<d g,>8 ees c bes 	<c ees,>4. bes8 |
	aes,8 ees' c'4		f,,8 c' aes'4	|

	% Bar 5
	<g d>2~ 			<g d>8 g <c f,> d |
	g,8 d' g a 			b2				|

	<ees g,>4. <d f,>8	<ees g,>2 		|
	c,8 g' ees'4		f,,8 c' aes'4	|

	<ees g,>8 <f aes,> <d f,> <c ees,> 	<d f,>2		|
	bes,8 f' d'4.						bes,8 g' d' |

	<d f,>8 <ees g,> <c ees,> <bes d,> 	<c ees,>4. <bes d,>8	|
	aes,8 ees' c'4						f,,8 c' aes'4			|

	% Bar 9
	\break
	<c c,>2~ 			<c c,>8 g c d	|
	c,8 g' c d 			ees2			|

	<ees g,>4. d8		<ees aes,>2		|
	c,8 g' ees'4		f,,8 c' aes'4	|

	<ees aes,>8 f d[ c8.	d32 c32] <d g,>4.	|
	bes,8 f' d'4.			bes,8 g' d' 		|

	<d g,>8 ees c bes		<c ees,>4.  bes8	|
	aes,8 ees' c'4			f,,8 c' aes'4		|

	% Bar 13
	\break
	<g d>2~ 			<g d>8 g <c f,> d	|
	g,8 d' g a 			b2					|

	<ees g,>4. <d f,>8		<ees g,>2		|
	c,8 g' ees'4			f,,8 c' aes'4	|

	<ees g,>8 <f aes,> <d f,>[ <c ees,>8.]	d32 c32 <d f,>4.	|
	bes,8 f' d'4.							bes,8 g' d' 		|

	<d f,>8 <ees g,> <c ees,> <bes d,>	<c ees,>4. <bes d,>8 	|
	aes,8 ees' c'4						f,,8 c' aes'4			|

	% Bar 17
	<c c,>2~				<c c,>8 d ees bes'	|
	c,8 g' c d				ees f g4			|

	\repeat volta 2 {
		<c ees,>4. c8		<c es,> <d f,> <bes d,> <aes c,>~	|
		aes,,8 ees' c'4		aes,8 f' d'4						|

		<aes c,>16 bes32 aes <bes d,>2	<d, f,>8 <ees g,> <g bes,>	|
		g,,8 d' bes' d,					c g' ees'4 					|

		<aes c,>4. aes8		<aes c,> <bes d,> <g bes,> <f aes,>	|
		f,,8 c' aes'4		bes,8 f' 			d'4				|

		% Bar 21
		<g d g,>8~ <g d g,>2	d8 ees bes'	|
			|

		<c ees,>4. c8		<c d,> d bes a	|
			|

			|
			|

			|
			|

		% Bar 25
		% Bar 29
	}

}

\score {
	\flute
	\layout { }
}
\pageBreak

\score {
	<<
		%\flute
		\new PianoStaff \with { instrumentName = "Piano" }
		<<
			\new Staff {
				<<
					\tempo 4 = 62
					\relative c'' \voiceAA
				>>
			}
			\new Staff {
				<<
					\clef bass
					\relative c \voiceBA
				>>
			}
		>>
	>>
	\layout { }
	\midi { }
}