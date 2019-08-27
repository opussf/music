\header {
	title = "Ballet Scene"
	subtitle="Duet"
	subsubtitle="Rubank Elementary  Lesson 27"
}

flute_a = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\relative c' {
		\clef treble
		\key f \major
		\time 3/4
		\tempo "Waltz tempo" 4 = 110

		a''2\mf f4 c2 c4 f8 f e4. f8 fis2( g4) bes2 g4 c,2 c4 g' fis4. g8 gis2( a4)
		c c4. d8 bes4. a8 g4 bes bes4. c8 a4. g8 f4 d4. f8 d'4 c,4. f8 c'4 bes8 bes a4 f g2 c,8 c
		g'4. fis8 g a bes4 g c, a'4. gis8 a bes c4 a f d'4. cis8 d f c4. b8 c f bes, bes a4. f8 g2 r4
		a2 f4 c2 c4 f8 f g4. a8 c2 bes4 d4. bes8 g4 c4. a8 f4 bes8 bes a4 g f2.
		\bar "|."
	}
}

flute_b = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\relative c' {
		\key f \major
		f'2 c4 | a2 a4 | c8 c c4. c8 | dis2( e4) | g2 e4 | g,2 bes4 | e4 dis4. e8 | f2 f4-- |
		a a4. bes8 | d,4. c8 bes4 | g'4 g2 | c,4. c8 c4 | bes4. d8 f4 | a,4. c8 f4 | d f c | e2 r4 |
		c e c | g' e bes | f'2 f4 | a f c | bes'2 bes4 | a2 a4 | e8 e f2 | e r4 |
		f2 c4 | a2 a4 | c e2 | a g4 | bes4. g8 d4 | a'4. f8 c4 | d8 d c4 bes | a2. |
	}
}

\score {
	<<
		\flute_a
		\flute_b
	>>
	\layout { }
	\midi { }
}
\version "2.18.2"

