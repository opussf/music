\version "2.18.2"
\header {
	title = "Moonlight Sonata"
	subtitle = "(Sonata Quasi Una Fantasia)"
	subsubtible = "Sonata No. 14, Opus 27, No. 2"
	composer = "Ludwig can Beethoven"
}

\parallelMusic #'(voiceAA voiceAB voiceBA) {
	% Bar 1
	\key e \major  	 s1 																				|
  	\key e \major 	 \tuplet 3/2 4 { gis8(\pp cis e) 	gis,( cis e) 	gis,( cis e) 	gis,( cis e) }  |
  	\key e \major 	 				<cis cis,>1\pp( 													|

  	% Bar 2
	s1 |
	\tuplet 3/2 4 { gis,8( cis e) 	gis,( cis e) 	gis,( cis e) 	gis,( cis e) }  |
	 				<b b,>1															|

	% Bar 3
	s1 |
	\tuplet 3/2 4 { a,8( cis e) 	a,( cis e) 	a,( d fis) 	a,( d fis) }	|
					<a a,>2						<fis fis,>2					|

	% Bar 4
	s1 |
	\tuplet 3/2 4 { gis,8( bis fis')	gis,( cis e)	gis,( cis dis!)	gis,( bis dis) } 	|
					<gis gis,>2 						<gis gis,>2 						|

	% Bar 5
					r2 							r4 				gis8. 					gis16 	|
	\tuplet 3/2 4 { e,8( gis cis) \stemDown 	gis( cis e)		gis,( cis e)	gis,( cis e) } 	|
	<cis gis cis,>1) |

	% Bar 6
					gis2. 														gis8. gis16			|
	\tuplet 3/2 4 { gis,8( dis' fis)	gis,8( dis' fis)	gis,8( dis' fis)	gis,8( dis' fis) }	|
	<bis gis bis,>1 |

	% Bar 7
					gis2(							a2 								|
	\tuplet 3/2 4 { gis,8( cis e)	gis,( cis e)	a,( cis fis)	a,( cis fis) }	|
					<cis cis,>2( 					<fis, fis,>2					|

	% Bar 8
					gis2 					fis4 		b4			|
	\tuplet 3/2 4 { gis,8( b e)	gis,( b e)	a,( b dis)	a( b dis) }	|
					<b b,>2 				<b b,>2					|

	% Bar 9
					e,4) 		r4 				r2							|
	\tuplet 3/2 4 {	gis,8( b e)	gis,(\> b e)	gis,( b e)	gis,( b e)\! }	|
					<e e,>1) 												|

	% Bar 10
					r2 						r4 			g8. g16		|
	\tuplet 3/2 4 {	g,8( b e)	g,( b e)	g,( b e)	g,( b e)}	|
					<e e,>1( 										|

	% Bar 11
					g2. 								g8. g16		|
	\tuplet 3/2 4 {	g,8( b f')	g,( b f')	g,( b f')	g,( b f') }	|
					<d d,>1) 										|

	% Bar 12
					g2.^( 								fis4)			|
	\tuplet 3/2 4 {	g,8( c e)	g,( b e)	g,( cis e)	fis,( cis' e) }	|
					<c c,>4(\< 	<b b,>4 	<ais ais,>2)\! 				|

	% Page 2
	% Bar 13
					fis2^(					g4			e)				|
	\tuplet 3/2 4 {	fis,8( b d)	fis,( b d)	g,( b cis)	e,( b' cis) }	|
	s1 |

	% Bar 14
					fis2						fis2^(								|
	\tuplet 3/2 4 {	fis,8(\> b d)	fis,( b d)	fis,( ais cis)	e,( ais cis)\pp }	|
	s1 |

	% Bar 15
					b,4)		r4			r4 \stemUp		b'^(				|
	\tuplet 3/2 4 {	b8( d fis)	b,( d fis)	b,( dis fis)	b,(\< dis fis) }	|
	s1 |

	% Bar 16
					c2.->								ais4		|
	\tuplet 3/2 4 {	b,8(\! e g)	b,( e g)	b,( e g)	b,( e g) }	|
	s1 |

	% Bar 17
					b2.)											b4^(				|
	\tuplet 3/2 4 {	b,8( dis fis)	b,( dis fis)	b,( dis fis)	b,( dis fis) }	|
	s1 |

	% Bar 18
					c2.->								ais4^(		|
	\tuplet 3/2 4 {	b,8( e g)	b,( e g)	b,( e g)	b,( e g) }	|
	s1 |

	% Bar 19
					b2)								b2						|
	\tuplet 3/2 4 {	b,8( dis! fis)	b,( dis fis)	b,( d eis)	b( d eis) }	|
	s1 |

	% Bar 20
					b2^(								a2							|
	\tuplet 3/2 4 {	b8( cis gis'!)	b,( cis gis')	a,( cis fis)	a,( cis fis) }	|
	s1 |

	% Bar 21
					g2						fis2						|
	\tuplet 3/2 4 {	g,8( b d)	g,( b d)	f,( a dis)	f,( a dis) }	|
	s1 |

	% Bar 22
					cis2)\pp						cis4^(			cis				|
	\tuplet 3/2 4 {	cis,8( fis a)	cis,( fis a)	cis,( fis a)	cis,( eis a) }	|
	s1 |

	% Bar 23
					fis,4)			r4			r4			cis''8.\p cis16	|
	\tuplet 3/2 4 {	fis8( a cis)	a( cis fis)	cis( fis a)	cis,( fis a) }	|
	s1 |

	% Bar 24
					cis2.											cis8. cis16		|
	\tuplet 3/2 4 {	cis,8( gis' b)	cis,( gis' b)	cis,( gis' b)	cis,( gis' b) }	|
	s1 |

	% Bar 25
					cis2^(							bis4			cis				|
	\tuplet 3/2 4 {	cis,8( fis a)	cis,( fis a)	bis,( fis' a)	cis,( fis a) }	|
	s1 |

	% Bar 26
					dis2.)											dis4^(			|
	\tuplet 3/2 4 {	dis,8( fis gis)	dis( fis gis)	dis( fis gis)	dis( fis gis) }	|
	s1 |

	% Bar 27
					e2								dis4			cis				|
	\tuplet 3/2 4 {	e8( gis cis)	e,( gis cis)	dis,( fis a)	cis,( e ais) }	|
	s1 |

	% Bar 28
					bis4)			gis(			a				fis)				|
	\tuplet 3/2 4 { bis8( bis, dis)	gis( bis, dis)	a'( bis, dis)	fis( bis, dis) }	|
	s1 |

	% Bar 29
					r4				gis,^(			a				fis				|
	\tuplet 3/2 4 { r8( bis dis)	gis,( bis dis)	a( bis dis) 	fis,( bis dis)}	|
	s1 |

	% Bar 30
					e4)				cis''^(			e			cis)			|
	\tuplet 3/2 4 {	e,8( e' gis)	cis( e, gis)	e'( e, gis)	cis( e, gis) }	|
	s1 |

	% Bar 31
					r4			cis,^(			e			cis)			|
	\tuplet 3/2 4 {	r8( e, gis)	cis( e, gis)	e'( e, gis)	cis( e, gis) }	|
	s1 |

}

\score {
	<<
		\new PianoStaff \with { instrumentName = "Piano" }
		<<
			\new Staff {
				<<
					\tempo "Adagio Sostenuto" 4 = 50
					\relative c'' \voiceAA
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

