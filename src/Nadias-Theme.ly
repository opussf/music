\version "2.18.2"
\header {
	title = "Nadia's Theme"
	subtitle = "(The Young And The Restless)"
	subsubtitle = "A Screen Gems T.V. Serial"
	composer = \markup {
		\line { "By" }
		\line { "BARRY DE VORZON and " }
		\line { "PERRY BOTKIN Jr." }
	}
	copyright = \markup \left-align \center-column {
		\line { "Copyright " \char ##x00A9 " 1971, 1973 by Screen Gems-EMI Music Inc., Hollywood, Calif" }
		\line { "This arrangement Copyright " \char ##x00A9 " 1976 by Screen Gems-EMI Music Inc.   Used by Permission" }
		\line { "International Copyright Secured       Made in U.S.A.      All Rights Reserved" }
	}
	tagline = "version: @VERSION@"
}

\parallelMusic #'(voiceAA voiceAB voiceBA) {

	% keys
	\key g \major	|
	\key g \major	|
	\key g \major	|

	% Bar 1
	<fis g b>4\mp		<fis g b>		<e g b>		<e g b> |
	s1 |
	R1 |

	% Bar 2
	<fis g b>4		<fis g b>		<e g b>		<e g b> |
	s1 |
	r2 									r4 			b4 |

	% Bar 3
	\stemDown <fis g>4		<fis g>		<e g>		<e g> |
	b'1^~ |
	e2.										r8 b8 |

	% Bar 4
	<fis g>4	<fis g>			s2						|
	\stemUp b2^~				<e, g b>8	b	e	b'	|
	e2.											e4		|

	% Bar 5
	<e fis>4		<e fis>		<d fis>		<d fis>	|
	a1^~ 											|
	d2.										r8 a8	|

	% Bar 6
	<e fis>4		<e fis>	s2					|
	a2^~			<d, fis a>8		a	d	a'	|
	d2.									d4		|

	% Bar 7
	<d e>4			<d e>		<c e>		<c e>	|
	g2.										a4		|
	c1												|

	% Bar 8
	<d e>4			<d e>		<c e>		<c e>	|
	b2.										g4		|
	c1 |

	% Bar 9
	<cis d>4		<cis d>		<b d>		<b d>	|
	fis1^~ |
	b2.										r8 b8	|

	% Bar 10
	<cis d>4		<cis d>		<b d>		b		|
	fis2.									b,4		|
	b2.										b4		|

	% Bar 11
	<fis' g>4		<fis g>		<e g>		<e g>	|
	b'1^~ |
	e2.										r8	b8	|

	% Bar 12
	<fis g>4		<fis g>	s2						|
	b2^~					<e, g b>8	b	e	b'	|
	e2.										e4		|

	% Bar 13
	<e fis>4		<e fis>		<d fis>		<d fis>	|
	a1^~ 											|
	d2.										r8 a8	|

	% Bar 14
	<e fis>4		<e fis>	s2				 		|
	a2^~					<d, fis a>8	a	d	a'	|
	d2.										d4		|

	% Bar 15
	<d e>4			<d e>		<c e>		<c e>	|
	g2.										a4		|
	c1												|

	% Page 2
	% Bar 16 (1)
	<d e>4			<d e>		<c e>		<c e>	|
	b2.										g4		|
	c1 |

	% Bar 17 (2)
	<cis d>4		<cis d>		<b d>		<b d>	|
	fis1^~ |
	b2.										r8 b8	|

	% Bar 18 (3)
	<cis d>4\<		<cis d>	s2							|
	fis2^~					<b, d fis>8	fis'	a	d,	|
	b2.											b4		|

	% Bar 19 (4)
	<b cis>4\mf 	<b cis>4	<a cis>4	<a cis>4	|
	e1^~												|
	a2.										r8 	a 		|

	% Bar 20 (5)
	<b cis>4		<b cis>	s2						|
	e2^~					<a, cis e>8	e'8	a	e	|
	a2.										a4		|

	% Bar 21 (6)
	<a e'>4			<a e'>		<a d>		<a d>	|
	fis1^~	|
	d2.										r8 d8	|

	% Bar 22 (7)
	<a e'>4			<a e'>	s2												|
	fis2^~					<a, d fis>8-.	\stemNeutral	a'8[	d	a]	|
	d2.					 											fis4	|

	% Bar 23 (8)
	b'8	a			a	g		g4.					b8	|
	s1 |
	<g b>2.									<g b>4		|

	% Bar 24 (9)
	cis8	b		b	a		a	fis		a		fis	|
	s1 |
	<fis a>2.								<fis a>4	|

	% Bar 25 (10)
	b8		a\>		a	g		g	fis		fis		d	|
	s1 |
	<g b>2 						d2						|

	% Bar 26 (11)
	b1\! |
	s1 |
	g4.		g8	g4		fis |

	% Bar 27 (12)
	<fis' g>4\mp	<fis g>		<e g>		<e g> |
	b1^~	\stemUp |
	e2.										r8 b8 |

	% Bar 4
	% Bar 28 (13)
	<fis g>4	<fis g>	s2						|
	b2^~				<e, g b>8	b	e	b'	|
	e2.									e4		|

	% Bar 5
	% Bar 29 (14)
	<e fis>4		<e fis>		<d fis>		<d fis>	|
	a1^~ 											|
	d2.										r8 a8	|

	% Bar 6
	% Bar 30 (15)
	<e fis>4		<e fis>		s2						|
	a2^~						<d, fis a>8	a	d	a'	|
	d2.											d4		|

	% Bar 7
	% Bar 31 (16)
	<d e>4			<d e>		<c e>		<c e>	|
	g1^~	|
	c2.										r8	c8	|

	% Bar 8
	% Bar 32 (17)
	<d e>4			<d e>		s2						|
	g2^~						<c, e g>8	a'	b	g	|
	c2. 										c4		|

	% Bar 9
	% Bar 33 (18)
	<cis d>4		<cis d>		<b d>		<b d>	|
	fis1^~ |
	b2.										r8	b8	|

	% Bar 10
	% Bar 34 (19)
	<cis d>4\>		<cis d>		<b d>		<b d>	|
	fis1^~	|
	b2.										fis4	|

	% Bar 11
	% Bar 35 (20)
	<b d>1\pp\fermata	|
	fis1 |
	b1\fermata |

}

\score {
	<<
		\new PianoStaff \with { instrumentName = "Piano" }
		<<
			\new Staff {
				<<
					% ignore = \override NoteColumn #'ignore-collision = ##t
					\tempo "Slowly, With A Beat" 4=80
					\relative c' \voiceAA
					\relative c' \voiceAB
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