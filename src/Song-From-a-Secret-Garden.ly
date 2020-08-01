\version "2.18.2"
\header {
	title = "Song From a Secret Garden"
}

flute = \relative c'' {
	\clef treble
	\key ees \major
	\time 4/4
	\tempo "Allegretto" 4=55

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

\score {
	\new Staff {
		\set Staff.midiInstrument = #"flute"
		\flute
	}
	\layout { }
	\midi { }
}
