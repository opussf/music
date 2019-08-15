\header {
	title = "Duo Plaisir"
	subsubtitle="Rubank Elementary  Lesson 16"
}

flute_a = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\relative c' {
		\clef treble
		\key f \major
		\time 4/4
		\tempo "" 4 = 100

		\partial 4
		c'\f a'2 c2 f,2. g4 a8( g) f( e) d4( bes') a2. a4 c4. g8 g4 bes \break
		a4 f2 f8( e) d4 d g4. a8 g2 r4 c\mf g8( fis) g a bes4. g8 f( c) f a c4. c8 \break
		d4 d8 e f4 f e2 r4 c f8( e) d( c) d( c) bes( a) g( fis) g bes d4. d8 c2 e, f( f4) \break
		\bar "|."
	}
}

flute_b = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\relative c' {
		\key f \major
		c'4 f2 a a,2. e'4 f8( e) d( c) bes4( d) f2. f4 e2 e
		f2. r4 bes, bes bes4. c8 e2 c8( bes) a( g) c4 c e4. c8 a^[( f) a f'] a2
		bes bes4 d, g2 r4 e a bes8( a) a4 g8( f) d4 d bes'4. bes8 a2 bes, a( a4)
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

