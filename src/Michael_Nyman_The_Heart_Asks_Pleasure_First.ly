\header {
	title = "The Heart Asks Pleasure First"
	subtitle = "(The Promise / The Sacrifice)"
	subsubtitle = "(From the film 'The Piano')"
	composer = "By Michael Nyman"
	copyright = \markup { \char ##x00A9 " Copyright 1993 by Michael Nyman " }
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
	a4-> a8-- a4-- a16-- c-- | e8.-- e e d |
	c-- c-- e-- d--
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
		a[( e' a e a e)] a,[( e' a e a, e)] a[( e' a e a e)] |
		\time 6/8
		a,[( e' a e a, e')] a,[( e' a e a e)] |
	}
	\alternative {
		{ a4. a | a a | }
		{ a a | }
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
