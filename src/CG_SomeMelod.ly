\version "2.18.2"
date = #(strftime "%d %b %Y" (localtime (current-time)))
\header {
	title = "Some melody"
	tagline = \markup {
		\line { \date " version: @VERSION@" }
	}
}

flute_a = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\relative c'' {
		\clef treble
		\key c \major
		\time 4

		b4 a8 g4 e8 g4 d8 e2


		\bar "|."
	}
}

\score {
	<<
		\flute_a

	>>
	\layout { }
	\midi { }
}

