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
	\relative c' {
		\clef treble
		\key d \minor
		\time 3/4
		\tempo "" 4 = 50

		d4( d' d,) | e( e' e,) | f( f' f,) | g( g' g,) | a( a' a,) | bes( bes' bes,) | cis( cis' cis,) | d( d' d,) | \break


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

