\version "2.18.2"
\header {
	title = ""
	composer = "A.B. Fürstennan"
	opus = "Op.125."
}

flute = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\new Voice = "melody"  {
		\relative c' {
			\clef treble
			\key c \major
			\defaultTimeSignature
			\time 4/4
			\tempo "Energico."

			c2\f\fermata( \grace { \stemDown e8 g c e g c e) } \stemNeutral g8\fermata\> f e d |
			c2\p\trill\fermata( \grace { \stemUp b32 d c } \stemNeutral b4) r |
			g,2\f\fermata( \grace { \stemDown b8 d f g b d) } \stemNeutral f4\>( d8 b\!) |
			g4\trill( \grace { fis16 g } b8. a16) \tuplet 3/2 { a8( g f) } \tuplet 3/2 { f( e d) } |
			dis2( \grace { e32 f e dis e f } e4) r |
			c,8( d16 e f g a b) c-.( d-. e-. f-. g-. a-. b-. c-. |
			d-. e-. f-. g-.) a4.\> a,,8( e' d\!) |
			a'8.->(\p \tuplet 3/2 { g32 e c) } g2( \grace { a32 g fis g } a8 g) |
			a'->( g32\< f d b) g4.\! f8 e d |
			
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
