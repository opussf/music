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
			\break

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
			\break
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
					c,4.->~ c8 a b | c4.->~\< c8 a b |
					c-> b a\!( a'-.)[ r dis,] | e r r r4\sf\> e,8
				}
			}
			\bar "||"
			a[\p r c] b c b | a[ r c] b[ r c] |
			# 48
			a b c b[ r c] | a4.~ a8 r g | c[ r e] d e d | c[ r e] d[ r e] | c d e d[ r e] |
			c4.~ c8 r g'\mf | a[ r g] a[ r g] |
			# 55
			d e g e4( d8) | d[ r c] d[ r c] | g a c a4( g8)\p | a4->( c8) g4->( c8) |
			a-. b-. c-. g4-> e'8\f\< | d2.( c8) r r c'->\sf r r |
			\bar "||" \break
			# 62
			\key f \major
			c,4. a'4. | gis a | d8[ r a] c4.~ | c8[ r a] gis[ r a] | d[ r a] c[ r a] |
			d c a gis4( a8) | c[ r e,] bes'4.~ |
			# 69
			bes8 c, d e d e | c4. bes' | fis g | e'8[ r e,] d'4.~ | d8[ r d] cis[ r d] |
			e4.\< d\! | c bes | a8[ r c] c4.->~\< |
			# 77
			c8\! c, d e\> a g\! | c,4. a' | gis a | d8[ r a] c4.~ | c8[ r a] gis4 a8 |
			d[\< r a] c[ r a] | d c a g4 f8 |
			# 84
			f'2.~ | f4.~ f8\! r f, | f'[ r e] f[ r e] | f e f g f d | c[ r b] c[ r d] |
			c[ r f,] g4\<( a8 | bes4. c4 d8\! |
			# 91
			a8 r r g4.->( | f8) r c b4\<( c8 | f-.) r r f'->\sf r a,, |
			\bar "||"


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
