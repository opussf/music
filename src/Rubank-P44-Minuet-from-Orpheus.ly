\header {
	title = "Minuet from Orpheus"
	subsubtitle="Rubank Elementary  Page 44"
}

flute_a = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\relative c' {
		\clef treble
		\key f \major
		\time 3/4
		\tempo "Tempo di Minuet" 4 = 70

		\repeat volta 2 {
			c'4(\mf\< a8 bes c f) f2.~\> f4\! bes8( a g a) g4( f e) f2.~ f4 bes4( a) g8( bes) a4 g8( f) f2.
		}
		\break
		c'2.~\mp c2.~ c8\< g( a g f e) \acciaccatura e8\> d4. c8 b4 g'2.~\p\< g2.~\> g2.~\<
		g2.~\> g2\< a4 b2 c4 g8(\f a c,4) d c2.~\> c4\! a8( bes c f)
		f2.~ f4 bes8( a g a) g4( f e) f2.~ f4 bes( a) g8( bes) a4 g8( f) f2.\fermata

		\bar "|."
	}
}

flute_b = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\relative c' {
		\key f \major

		\repeat volta 2 {
			c'4(\mf\< a8 bes c f) f4(\> e d) c\! d8( c bes c) bes4( a g) f'8 r a, r d r c4 g( a) d8( g) f4 e8( f) c2.
		}
		a'4\mp f8( g a bes) a4( g f) e\< f8( e d c) \acciaccatura c\> b4.( a8 g4) c8(\p\< d e f e f) e4(\> d c) b8(\< d f g f g)
		f4(\> e d) g2\< a4 g2 e4 e8(\f f) e( g f b) c4 c,8(\> bes? a g) c4\! a8( bes c f)
		f4( e d) c4 d8( c bes c) bes4( a g) f'8 r a, r d r c4 g( a) d8( g) f4 e8( f) c2.\fermata
	}
}

flute_c = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\relative c' {
		\key f \major
		\repeat volta 2 {
			a'4( f8 g a d) d4( c bes) a bes8( a c4) g4( c2) d4 c bes a g8( bes a c) bes4 c bes a2.
		}
		c4 a8( bes c d) c4( bes a) c f4. fis8 g4 r g, c8( b c d c d) c( g f b e, g) d( b' d e d e)
		d4( c b) c b g8( c) g4( b a) g8( f) g4 b8( f') e4 e,8( g f e) a4 f8( g a d)
		d4( c bes) a bes8( a) c4 g( c2) d4( c bes) a g8( bes a c) bes4( c bes) a2.\fermata |

	}
}




\score {
	<<
		\flute_a
		\flute_b
		\flute_c
	>>


	\layout { }
	\midi { }
}
\version "2.18.2"

