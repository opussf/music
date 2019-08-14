\header {
	title = "Etude"
	subsubtitle="Rubank Elementary  Lesson 39"
}

flute = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\relative c' {
		\clef treble
		\key c \major
		\time 4/4
		\tempo "" 4 = 100

		e'4\mf f16( e dis e) g4. c,8 a'4 b16( a gis a) c4. a8 g16( a g e) c4 d16( e d e) d4 d16(\< e) fis-. g-. a( b) c-. d-. g,2\> \break
		e4\! f16( e dis e) g4. c,8\< f4 c16( a) c( f) a4. a8 g16( c) b-. a-. g4 e16( a) g-. f-. g4 d16( cis) d-. e-. f( g) a-. b-. c2 \break
		a16(\f gis a b) c4 a8 g16 fis g4 b16( ais b c) d4 e8 c16 b a4 d16( f) d( f) d4 c16( e) c( e) c4 a8 a16 b c b c d e2 \break
		a,,16( gis a b) c4 a8 g16 fis g4 b16( ais b c) d4 e8 c16 b a4 f'8 a,16 d f4 e8 g,16 c e4 b16 c d e f g a b c2\break
		\key f \major
		f,4 \break
		\bar "|."
	}
}

\score {
	<<
		\flute
	>>
	\layout { }
	\midi { }
}
\version "2.18.2"

