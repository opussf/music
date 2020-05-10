\header {
	title = "Sweet Child O' Mine"
	composer = \markup {
		\line { "Words and Music by W. AXL ROSE," }
		\line { "SLASH, IZZY STRADLIN', DUFF McKAGAN" }
		\line { "and STEVEN ADLER" }
	}
	copyright = \markup \left-align \center-column {
		\line { \char ##x00A9 " Copyright 1993 by Michael Nyman Limited/Chester Music Limited, 8/9 Frith Street, London W1" }
		\line { "All rights Reserved International Copyright Secured" }
	}
  	source = "urtext"
}

upperMelody = \relative c'' {
	\key c \major
	\time 6/8
	\tempo 4. = 50

	e8.--\mp e-- e-- d-- | c-- c-- e-- c-- |
	e8.-- e-- e-- d-- | c-- c-- a-- a-- |
	\repeat volta 2 {
		a4->\mf a8-- a4-- b8-- | a4-> g8-- e8.-- e-- |
		c'4-> c8-- c4-- e8-- | d4-> c8-- b4-- c16-- b16-- |
		\time 9/8
		a4-> a8-- e'4-> c8-- a4-- g8--
		\time 6/8
		e4-> d16( c) c4-- d16( c) |
	}
	\alternative {
		{ d4-> d8-- e4-- gis8-- | a4-- a8-- a4.-- | }
		{ d,4-> d8-- e4-- gis8-- | }
	}
	\break
	a4-> a8-- a4-- a16-- c-- | e8.-- e e d |
	c-- c-- e-- d-- | e-- e-- e-- d--
	c-- c-- a-- a-- |
	\clef bass
	c,4-> b16-- c-- c4-> e16-- d-- |
	d8.-> c-- b4-> g16-- b-- | c8.-> b-> a4-> c16-- e-- |
	b8.-> e-- e4-> \clef treble a16-- b-- |
	%23
	c4-> c8-- c4-> e16-- c-- | d8.-> c-- b-> d-- |
	c-> c-- c-> b16-- a-- g-- |
	%26
	e4-> a8-- a4-> a16-- c-- | c4-> c8-- g'4-> d16-- c-- |
	b4->~ b16-- c-- d8.-> c16-- b-- a-- | b4-> c16-- b-- a4-> a16-- c-- |
	b8.-> e-- e4-> b8-- | e,4-> g8-- g8.-> f16-- e-- d-- |
	%32
	e8.-> a-- b4-> e8-- | c4-> a8-- c8.-> b16-- a-- g-- |



}
upperOther = \relative c'' {
	\stemDown
	e16([ e,16 a e' e, a)] e'([ e, a d e, a)] | c[( e, a c e, a)] e'[( e, a c e, a)] |
	e'16([ e,16 a e' e, a)] e'([ e, a d e, a)] | c[( e, a c e, a)] a[( d, fis a d, fis)] |
	\repeat volta 2 {
		a[( b, c f  a b,)] a'[( b, c f b b,)] | a'[( b, c e g b,)] e[( b c e b c)] |
		c'[( e, f a c e,)] c'[( e, f a e' e,)] | d'[( e, f a c e,)] b'[( e, f a c b)] |
		\time 9/8
		a[( b, c e  a e)] e'[( e, g a c g)] a[( b, c e g b,)] |
		\time 6/8
		e[( a, c a) d( c)] c[( a c a) d c] |
	}
	\alternative {
		{ d[( a b a d a)] e'[( b c d gis b,)] | a'[( b, c e a e)] a[( b, c e c e)] | }
		{ d[( a b a d a)] e'[( b c d gis b,)] | }
	}
	a'[( b, c e a e)] a[( b, c e) a c] | e[ e, a e' e, a] e'[ e, a d e, a] |
	c[ e, a c e, a] e'[ e, a d e, a] | e'[ e, a e' e, a] e'[ e, a d e, a] |
	c[ e, a c e, a] a[ d, fis a d, fis] |
	\clef bass
	c[( e, g e) b' c] c[( e, g c) e d] |
	d[( d, g c d, g)] b[( d, g d g b)] | c[( e, a b e, e')] a,[( c e, a c e)] |
	b[( e, b' e e, b')] e[( e, b' e)] \clef treble a-- b-- |
	%23
	c[( e, f a c e,)] c'[( e, f a e' c)] | d[( e, f c' e, f)] b[( e, f d' e, f)] |
	c'[( d, e c' d, e)] c'[( d, e) b'-- a-- g--] |
	%26
	e[( a, c d a' d,)] a'[( c, d e a c)] | c[( d, e g c g)] g'[( e c g) d' c] |
	b[( d, g d g c)] d[( d, g) c-- b-- a--] |


}

upper = {
	<<
	\upperMelody
	\\
	\upperOther
	>>
}

lowerMelody = \relative c' {
	\clef bass
	c4 c8 b4 b8 | a4 a8 a4 a8 |
	c4 c8 b4 b8 | a4 a8 a4 d,8 |
	\repeat volta 2 {
		\stemDown
		\dynamicDown
		a4.-> a-- | a-> a-- |
		f-> f-- | f-> g-- |
		\time 9/8
		a4. a4 a8 a4.|
		\time 6/8
		a4 a8 a4 a8 |
	}
	\alternative {
		{e4~ e16 e e4~ e16 e | a4. a | }
		{e4~ e16 e e4~ e16 e | }
	}
}
lowerOther = \relative c' {
	c16([ a e a c a]) b([ g d g b g]) | a([ g e g a g]) a([ g e g a g)] |
	c16([ a e a c a]) b([ g d g b g]) | a([ g e g a g]) a([ d, fis a d, fis)] |
	\repeat volta 2 {
		\stemUp
		\slurUp
		a,[( e' a e a e)] a,[( e' a e a e)] | a,[( e' a e a e)] a,[( e' a e a e)] |
		f,[( c' f c f c)] f,[( c' f c f c)] | f,[( c' f c f c)] g[( d' g d g d)] |
		\time 9/8
		a[( e' a e a e)] a,[( e' a e a, e')] a,[( e' a e a e)] |
		\time 6/8
		a,[( c e c a e')] a,[( c e c a e')] |
	}
	\alternative {
		{ e,[( b' e d b e,)] e[( b' e d b e,)] | a[( e' a e a e)] a,[( e' a e a e)] | }
		{ e,[( b' e d b e,)] e[( b' e d b e,)] | }
	}
}
lower = {
	<<
	\lowerMelody
	\\
	\lowerOther
	>>
}


\score {
	\new PianoStaff \with { instrumentName = #"Piano" }
	<<
		\new Staff = "upper" \upper
		\new Staff = "lower" \lower
	>>
	\layout { }
}
\score {
	\unfoldRepeats
	\new PianoStaff \with { instrumentName = #"Piano" }
	<<
		\new Staff = "upper" \upper
		\new Staff = "lower" \lower
	>>
	\midi { }
}
\version "2.18.2"
