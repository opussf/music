\version "2.18.2"
\header {
	title = "The Teddy Bear's Picnic"
}

flute = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\new Voice = "melody"  {
		\relative c' {
			\clef treble
			\key c \major
			\numericTimeSignature
			\time #'(3 3) 6/8
			\tempo 4.=90

			\partial 8 e'8\f | a[ r c] b\< c b | a[ r c]\! b r e,, | a[ r c] b c\> b | a[ r c\!] b r e, | e'2.~\startTrillSpan\> | e2.~ | e2.~ |
			e4.~ e8\stopTrillSpan\! r8 e, |

			\repeat volta 2 {
				a\p[ r c] b c b | a[ r c] b[ r c] | a b c b[ r c] | a4.~ a8 r g | c[ r e] d e d | c[ r e] d[ r e] |
				c d e d[ r e] | c4.~ c8 r g' | a[\mf r g] a[ r g] | d e g e4( d8) | d[ r c] d[ r c] | g a c a4( g8) | a4->\p( c8) g4->( c8) |
				a-. b-. c-. g4-.-> e'8\f\< | d2.( |
			}
			\alternative {
				{
					c8-.) f-. e-.\> \grace { d16( e16 } d8-.) c-. b-.\!
				}
				{
					c\<) g' e f e g |
				}
			}

			\repeat volta 2 {
				a8\f[ r g] a4.~ | a8 g e g e g | d[ r b] d4.~ |
				d8 g, a b c a | b4.~ b4 a8 | g4.~ g4 e'8 | \grace { d16( e16 } d8) c d e g b |
				a g e g e g | a[ r g] a4.~ | a8 g e g e g |
				d[ r b] d4.~ | d8\< g, a b d c\! |
			}
			\alternative {
				{
					ees4.->~ ees8 c d | ees4.->~ ees8 c\< d |
					ees d c\!( c'-.)[ r fis,->] | g-> g-. e-. g-. e-. g-.
				}
				{
					c,4.->~
				}
			}
		}
	}
}

\score {
	<<
		\flute
	>>
	\layout { }
}
\score {
    \unfoldRepeats
	<<
		\flute
	>>
	\midi { }
}
