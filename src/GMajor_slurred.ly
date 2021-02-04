\version "2.18.2"
date = #(strftime "%d %b %Y" (localtime (current-time)))
\header {
	title = "G Major Slurred"
	tagline = \markup {
		\line { \date " version: @VERSION@" }
	}
}

flute_a = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\relative c'' {
		\clef treble
		\key g \major
		\time 3/4

		g4( g' g,) | a( a' a,) | b( b' b,) | c( c' c,) | d( d' d,) \breathe | e( e' e,) | fis( fis' fis,) | g( g' g,) | \break
		g4( g' g,) | fis( fis' fis,) | e( e' e,) | d( d' d,) \breathe | c( c' c,) | b( b' b,) | a( a' a,) | g( g' g,) | \break


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

