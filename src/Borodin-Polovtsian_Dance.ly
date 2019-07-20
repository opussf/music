\header {
	title = "Polovtsian Dance"
	subtitle = "From \"Prince Igor\""
	composer = "Alexander Borodin"
	arranger = "Arranged by Harold L. Waters"
	copyright = \markup { \char ##x00A9 " Copyright 1965 by Rubank, Inc. \n Internation Copyright Secured   All Rights Reserved" }
}





flute = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\relative c' {
		\key f \major
		\tempo "Andantion" 4 = 84

		R1
		g''8(\p a bes4) \tuplet 3/2 { d8( c bes } a4)
		bes8( a16 g16 f4) r2
		d8( e f4) \tuplet 3/2 { a8( g f } e4)
		f2 r2
		bes8( c des4) \tuplet 3/2 { f8( ees des } c4)

		des8( c16 bes16 aes4) r2
		d,8( e f4) \tuplet 3/2 { a8( g f } e4)
		f2 ees2
		d8( e f4) \tuplet 3/2 { a8( g f } e4)
		f2 r2
		d'8(\pp e f4) \tuplet 3/2 { a8( g f } e4)

		f1~\> f8 r8 r4 r2\fermata
		\bar "||"
		\repeat unfold 2 {
			g,8-.\p g( d'4 d8) c16( d16) \grace { bes16( c16 } bes8)( a16 g16 )
			a16( bes c8~ c4~ c8 d8) \grace { a16( bes16 } a8)( g16 f16 )
			d8-. d( g4~ g8 a8) \grace { g16( a16 } g8)( f16 e16 )
			f16( e d8~ d4~ [d8 ) e]( f[ a] )
		}

		% 23
		g8-. g( d'4 d8) c16( d16) \grace { bes16( c16 } bes8)( a16 g16 )
		a16( bes c8~ c4~ c8 des8) c( a)
		des8-. des8( f4~ f8 g) \grace { f16( g16 } f8)( ees16 des16 )

		c16( bes16 a8~ a4~ a8 bes8) c8( bes16 a16 )
		g8-. g( d'4 d8) c16( d16) \grace { bes16( c16 } bes8)( a16 g16 )
		f16( g16 a8~ a4~ a8[ bes8)] a8[( f8)]
		g8-. g( d'4 d8) c16( d16) \grace { bes16( c16 } bes8)( a16 g16 )

		a1
		% 31
		g8-.\mf g( d'4 d8) c16( d16) \grace { bes16( c16 } bes8)( a16 g16 )
		a16( bes c8~ c4~ c8 d8) \grace { a16( bes16 } a8)( g16 f16 )
		d8-. d( g4~ g8 a8) \grace { g16( a16 } g8)( f16 e16 )
		f16( e d8~ d4~ [d8 ) e]( f[ a] )

		g8-. g( d'4 d8) c16( d16) \grace { bes16( c16 } bes8)( a16 g16 )
		a16( bes c8~ c4~ c8 d8) \grace { a16( bes16 } a8)( g16 f16 )
		d8-. d( g4~ g8 a8) \grace { g16( a16 } g8)( f16 e16 )
		f16( e16 d8~ d4~ d8) c'16( d16) \grace { c16( d16 } c8)( bes16 a16 )

		% 39
		g8-. g( bes4~ bes8) c8) \grace { bes16( c16 } bes8)( a16 g16 )
		a16( g16 f8~ f4) e2(\p
		d2 e2
		f2) r2
		g8-.\p g( d'4 d8) c16( d16) \grace { bes16( c16 } bes8)( a16 g16 )
		a16( g16 f8~ f2.~
		f2~\> f2)\fermata

	}
}

\score {
	\flute

	\layout {

	}
	\midi { }
}

\version "2.18.2"
