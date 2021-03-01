\version "2.18.2"
date = #(strftime "%d %b %Y" (localtime (current-time)))
\header {
	title = "Bb Minor Harmonic Slurred"
	tagline = \markup {
		\line { \date " version: @VERSION@" }
	}
}

flute_a = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\relative c'' {
		\clef treble
		\key bes \minor
		\time 3/4

		bes( bes' bes,) |
		c( c' c,) |
		des( des' des,) |
		ees( ees' ees,) |
		f( f' f,) |
		g( g' g,) |
		a( a' a,) |
		bes( bes' bes,) | \break

		bes( bes' bes,) |
		aes( aes' aes,) |
		ges( ges' ges,) |
		f( f' f,) |
		ees( ees' ees,) |
		des( des' des,) |
		c( c' c,) |
		bes( bes' bes,) | \break

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

