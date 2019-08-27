\header {
	title = "Petite Duet"
	subsubtitle="Rubank Elementary  Lesson 36"
}

flute_a = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\relative c' {
		\clef treble
		\key g \major
		\time 3/8
		\tempo "" 4 = 110

		g''4.( d4) g8 fis fis16 e fis g a g fis4 a4.( d,4) a'8 g g16 fis g a b a g4 | \break
		g4.( d4) g8 g4.( e4) g8 fis fis16 eis fis g a8 a16 gis a b c8 a fis g4. | \break
		b~ b16 a b4 g4.~ g16 fis g4 a8 c a g b g a4.~ a8 d,16 e fis a | \break
		c4. c8( e) c b4. b8( d) b a( c) a g( b) g fis4 a8 d4. | \break
		c8 e,16 a c8 b d,16 g b8 a c,16 fis a8 g b,16 e g8 e gis a a16 b c8 a | \break
		g4.( fis4) r8 g4.( d4) g8 g4.( e4) g8 fis fis16 eis fis g a8 a16 gis a b c8 a fis g4. | \break
		\bar "|."
	}
}

flute_b = \new Staff {
	\set Staff.midiInstument = #"flute"
	\key g \major
	\relative c' {
		b'4.~ b4 b8 c4 d8 c4. c4.~ c4 c8 b4 d8 d4 b8 |
		b4.~ b4 b8 e4.( c) d8 d16 cis d e fis8 fis16 eis fis g a8 d, c b4. |
		b8 dis dis fis4. b,8 e dis e4. e8 a e d g d fis,16 g a b c8 d4. |
		e8 a e a4. d,8 g d g4. c,4 c8 b4 b8 a4 c8 fis4. |
		a8 c,16 e a8 g b,16 d g8 fis a,16 c fis8 e b16 b e8 c4 e8 e e c |
		b4.( a4) r8 b4.~ b4 b8 e4.( c) d8 d16 cis d e fis8 fis16 eis fis g a8 d, c b4. |
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

